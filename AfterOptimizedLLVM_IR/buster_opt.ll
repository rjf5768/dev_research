; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/buster.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/buster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bustbox = type { i32, i32 }

@A = external dso_local global %struct.bustbox*, align 8
@R = external dso_local global %struct.bustbox*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @buster() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 1000000000, i32* %6, align 4
  store i32 1, i32* %1, align 4
  br label %9

9:                                                ; preds = %33, %0
  %10 = load i32, i32* %1, align 4
  %11 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 0
  %13 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %10, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %17, i64 %19
  %21 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i64 %28
  %30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %25, %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %9, !llvm.loop !4

36:                                               ; preds = %9
  store i32 1000000000, i32* %5, align 4
  store i32 1, i32* %1, align 4
  br label %37

37:                                               ; preds = %72, %36
  %38 = load i32, i32* %1, align 4
  %39 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %40 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %39, i64 0
  %41 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %38, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %37
  %45 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %45, i64 %47
  %49 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %44
  %54 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %54, i64 %56
  %58 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %63, i64 %65
  %67 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %1, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %62, %53
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %37, !llvm.loop !6

75:                                               ; preds = %37
  %76 = load i32, i32* %5, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  store i32 1000000000, i32* %5, align 4
  store i32 1, i32* %1, align 4
  br label %80

80:                                               ; preds = %119, %75
  %81 = load i32, i32* %1, align 4
  %82 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %83 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %82, i64 0
  %84 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sle i32 %81, %85
  br i1 %86, label %87, label %122

87:                                               ; preds = %80
  %88 = load i32, i32* %1, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %119

92:                                               ; preds = %87
  %93 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %94 = load i32, i32* %1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %93, i64 %95
  %97 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %92
  %102 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %102, i64 %104
  %106 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %111, i64 %113
  %115 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %110, %101
  br label %118

118:                                              ; preds = %117, %92
  br label %119

119:                                              ; preds = %118, %91
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  br label %80, !llvm.loop !7

122:                                              ; preds = %80
  %123 = load i32, i32* %5, align 4
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %6, align 4
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %125, i32* %126, align 4
  store i32 1000000000, i32* %6, align 4
  store i32 1, i32* %1, align 4
  br label %127

127:                                              ; preds = %162, %122
  %128 = load i32, i32* %1, align 4
  %129 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %130 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %129, i64 0
  %131 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp sle i32 %128, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %127
  %135 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %135, i64 %137
  %139 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  br label %162

145:                                              ; preds = %134
  %146 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %146, i64 %148
  %150 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %145
  %155 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %155, i64 %157
  %159 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %154, %145
  br label %162

162:                                              ; preds = %161, %144
  %163 = load i32, i32* %1, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %1, align 4
  br label %127, !llvm.loop !8

165:                                              ; preds = %127
  store i32 1000000000, i32* %5, align 4
  store i32 1, i32* %1, align 4
  br label %166

166:                                              ; preds = %221, %165
  %167 = load i32, i32* %1, align 4
  %168 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %169 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %168, i64 0
  %170 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp sle i32 %167, %171
  br i1 %172, label %173, label %224

173:                                              ; preds = %166
  %174 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %174, i64 %176
  %178 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %220

182:                                              ; preds = %173
  %183 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %184 = load i32, i32* %1, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %183, i64 %185
  %187 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %202, label %192

192:                                              ; preds = %182
  %193 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %194 = load i32, i32* %1, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %193, i64 %195
  %197 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp sgt i32 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %192, %182
  br label %221

203:                                              ; preds = %192
  %204 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %205 = load i32, i32* %1, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %204, i64 %206
  %208 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %5, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %203
  %213 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %214 = load i32, i32* %1, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %213, i64 %215
  %217 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %212, %203
  br label %220

220:                                              ; preds = %219, %173
  br label %221

221:                                              ; preds = %220, %202
  %222 = load i32, i32* %1, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %1, align 4
  br label %166, !llvm.loop !9

224:                                              ; preds = %166
  %225 = load i32, i32* %5, align 4
  %226 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %225, i32* %226, align 4
  %227 = load i32, i32* %6, align 4
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %227, i32* %228, align 4
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %232 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %231, i64 1
  %233 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 4
  %234 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %237 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %236, i64 1
  %238 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 4
  %239 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %242 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %241, i64 2
  %243 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 4
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %247 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %246, i64 2
  %248 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %247, i32 0, i32 1
  store i32 %245, i32* %248, align 4
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %252 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %251, i64 3
  %253 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %252, i32 0, i32 0
  store i32 %250, i32* %253, align 4
  %254 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %257 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %256, i64 3
  %258 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %257, i32 0, i32 1
  store i32 %255, i32* %258, align 4
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %262 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %261, i64 4
  %263 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %262, i32 0, i32 0
  store i32 %260, i32* %263, align 4
  %264 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %267 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %266, i64 4
  %268 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %267, i32 0, i32 1
  store i32 %265, i32* %268, align 4
  store i32 1, i32* %1, align 4
  br label %269

269:                                              ; preds = %331, %224
  %270 = load i32, i32* %1, align 4
  %271 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %272 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %271, i64 0
  %273 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp sle i32 %270, %274
  br i1 %275, label %276, label %334

276:                                              ; preds = %269
  %277 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %278 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %277, i64 1
  %279 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %282 = load i32, i32* %1, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %281, i64 %283
  %285 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %280, %286
  br i1 %287, label %288, label %330

288:                                              ; preds = %276
  %289 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %290 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %289, i64 1
  %291 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %294 = load i32, i32* %1, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %293, i64 %295
  %297 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %292, %298
  br i1 %299, label %300, label %330

300:                                              ; preds = %288
  %301 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %302 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %303 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %302, i64 0
  %304 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %301, i64 %306
  %308 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %311 = load i32, i32* %1, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %310, i64 %312
  %314 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %313, i32 0, i32 0
  store i32 %309, i32* %314, align 4
  %315 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %316 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %317 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %316, i64 0
  %318 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* %318, align 4
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %315, i64 %321
  %323 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %326 = load i32, i32* %1, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %325, i64 %327
  %329 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %328, i32 0, i32 1
  store i32 %324, i32* %329, align 4
  br label %334

330:                                              ; preds = %288, %276
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %1, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %1, align 4
  br label %269, !llvm.loop !10

334:                                              ; preds = %300, %269
  store i32 1, i32* %1, align 4
  br label %335

335:                                              ; preds = %397, %334
  %336 = load i32, i32* %1, align 4
  %337 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %338 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %337, i64 0
  %339 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = icmp sle i32 %336, %340
  br i1 %341, label %342, label %400

342:                                              ; preds = %335
  %343 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %344 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %343, i64 4
  %345 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %348 = load i32, i32* %1, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %347, i64 %349
  %351 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %346, %352
  br i1 %353, label %354, label %396

354:                                              ; preds = %342
  %355 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %356 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %355, i64 4
  %357 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %360 = load i32, i32* %1, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %359, i64 %361
  %363 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = icmp eq i32 %358, %364
  br i1 %365, label %366, label %396

366:                                              ; preds = %354
  %367 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %368 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %369 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %368, i64 0
  %370 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %367, i64 %372
  %374 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %377 = load i32, i32* %1, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %376, i64 %378
  %380 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %379, i32 0, i32 0
  store i32 %375, i32* %380, align 4
  %381 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %382 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %383 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %382, i64 0
  %384 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %384, align 4
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %381, i64 %387
  %389 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %392 = load i32, i32* %1, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %391, i64 %393
  %395 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %394, i32 0, i32 1
  store i32 %390, i32* %395, align 4
  br label %400

396:                                              ; preds = %354, %342
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %1, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %1, align 4
  br label %335, !llvm.loop !11

400:                                              ; preds = %366, %335
  store i32 0, i32* %8, align 4
  store i32 1, i32* %1, align 4
  br label %401

401:                                              ; preds = %463, %400
  %402 = load i32, i32* %1, align 4
  %403 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %404 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %403, i64 0
  %405 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = icmp sle i32 %402, %406
  br i1 %407, label %408, label %466

408:                                              ; preds = %401
  %409 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %410 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %409, i64 2
  %411 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %414 = load i32, i32* %1, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %413, i64 %415
  %417 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = icmp eq i32 %412, %418
  br i1 %419, label %420, label %462

420:                                              ; preds = %408
  %421 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %422 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %421, i64 2
  %423 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %426 = load i32, i32* %1, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %425, i64 %427
  %429 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = icmp eq i32 %424, %430
  br i1 %431, label %432, label %462

432:                                              ; preds = %420
  %433 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %434 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %435 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %434, i64 0
  %436 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %433, i64 %438
  %440 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %443 = load i32, i32* %1, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %442, i64 %444
  %446 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %445, i32 0, i32 0
  store i32 %441, i32* %446, align 4
  %447 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %448 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %449 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %448, i64 0
  %450 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = add nsw i32 %451, -1
  store i32 %452, i32* %450, align 4
  %453 = sext i32 %451 to i64
  %454 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %447, i64 %453
  %455 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %458 = load i32, i32* %1, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %457, i64 %459
  %461 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %460, i32 0, i32 1
  store i32 %456, i32* %461, align 4
  store i32 1, i32* %8, align 4
  br label %466

462:                                              ; preds = %420, %408
  br label %463

463:                                              ; preds = %462
  %464 = load i32, i32* %1, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %1, align 4
  br label %401, !llvm.loop !12

466:                                              ; preds = %432, %401
  %467 = load i32, i32* %8, align 4
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %495

469:                                              ; preds = %466
  %470 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %471 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %470, i64 2
  %472 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %475 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %476 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %475, i64 0
  %477 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %477, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %474, i64 %480
  %482 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %481, i32 0, i32 0
  store i32 %473, i32* %482, align 4
  %483 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %484 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %483, i64 2
  %485 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %488 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %489 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %488, i64 0
  %490 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %487, i64 %492
  %494 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %493, i32 0, i32 1
  store i32 %486, i32* %494, align 4
  br label %495

495:                                              ; preds = %469, %466
  store i32 0, i32* %8, align 4
  store i32 1, i32* %1, align 4
  br label %496

496:                                              ; preds = %558, %495
  %497 = load i32, i32* %1, align 4
  %498 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %499 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %498, i64 0
  %500 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = icmp sle i32 %497, %501
  br i1 %502, label %503, label %561

503:                                              ; preds = %496
  %504 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %505 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %504, i64 3
  %506 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %509 = load i32, i32* %1, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %508, i64 %510
  %512 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 4
  %514 = icmp eq i32 %507, %513
  br i1 %514, label %515, label %557

515:                                              ; preds = %503
  %516 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %517 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %516, i64 3
  %518 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %521 = load i32, i32* %1, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %520, i64 %522
  %524 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 4
  %526 = icmp eq i32 %519, %525
  br i1 %526, label %527, label %557

527:                                              ; preds = %515
  %528 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %529 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %530 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %529, i64 0
  %531 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %528, i64 %533
  %535 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %538 = load i32, i32* %1, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %537, i64 %539
  %541 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %540, i32 0, i32 0
  store i32 %536, i32* %541, align 4
  %542 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %543 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %544 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %543, i64 0
  %545 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 4
  %547 = add nsw i32 %546, -1
  store i32 %547, i32* %545, align 4
  %548 = sext i32 %546 to i64
  %549 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %542, i64 %548
  %550 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %549, i32 0, i32 1
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %553 = load i32, i32* %1, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %552, i64 %554
  %556 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %555, i32 0, i32 1
  store i32 %551, i32* %556, align 4
  store i32 1, i32* %8, align 4
  br label %561

557:                                              ; preds = %515, %503
  br label %558

558:                                              ; preds = %557
  %559 = load i32, i32* %1, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %1, align 4
  br label %496, !llvm.loop !13

561:                                              ; preds = %527, %496
  %562 = load i32, i32* %8, align 4
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %590

564:                                              ; preds = %561
  %565 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %566 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %565, i64 3
  %567 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  %569 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %570 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %571 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %570, i64 0
  %572 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %572, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %569, i64 %575
  %577 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %576, i32 0, i32 0
  store i32 %568, i32* %577, align 4
  %578 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %579 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %578, i64 3
  %580 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %583 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %584 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %583, i64 0
  %585 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %582, i64 %587
  %589 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %588, i32 0, i32 1
  store i32 %581, i32* %589, align 4
  br label %590

590:                                              ; preds = %564, %561
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
