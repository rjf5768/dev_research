; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/checkpen.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/checkpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@binOffsetX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@numBinsX = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@binX = external dso_local global i32, align 4
@binY = external dso_local global i32, align 4
@blockarray = external dso_local global i32***, align 8
@lapFactor = external dso_local global double, align 8
@offset = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @checkpen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %3

3:                                                ; preds = %33, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @numcells, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %9, i64 %11
  %13 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %14 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %16, i64 %18
  %20 = load %struct.cellbox*, %struct.cellbox** %19, align 8
  %21 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %23, i64 %25
  %27 = load %struct.cellbox*, %struct.cellbox** %26, align 8
  %28 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @checkover(i32 noundef %8, i32 noundef %15, i32 noundef %22, i32 noundef %29, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %7
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %3, !llvm.loop !4

36:                                               ; preds = %3
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @checkover(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cellbox*, align 8
  %16 = alloca %struct.cellbox*, align 8
  %17 = alloca %struct.tilebox*, align 8
  %18 = alloca %struct.tilebox*, align 8
  %19 = alloca %struct.tilebox*, align 8
  %20 = alloca %struct.tilebox*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32*, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %30, align 4
  %54 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %54, i64 %56
  %58 = load %struct.cellbox*, %struct.cellbox** %57, align 8
  store %struct.cellbox* %58, %struct.cellbox** %15, align 8
  %59 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %60 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %59, i32 0, i32 21
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %60, i64 0, i64 %62
  %64 = load %struct.tilebox*, %struct.tilebox** %63, align 8
  store %struct.tilebox* %64, %struct.tilebox** %19, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %67 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %77 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %75, %78
  store i32 %79, i32* %23, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %81, i32 0, i32 12
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* @binOffsetX, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* @binWidthX, align 4
  %89 = sdiv i32 %87, %88
  store i32 %89, i32* %50, align 4
  %90 = load i32, i32* %50, align 4
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %7
  store i32 1, i32* %50, align 4
  br label %100

93:                                               ; preds = %7
  %94 = load i32, i32* %50, align 4
  %95 = load i32, i32* @numBinsX, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @numBinsX, align 4
  store i32 %98, i32* %50, align 4
  br label %99

99:                                               ; preds = %97, %93
  br label %100

100:                                              ; preds = %99, %92
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* @binOffsetX, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* @binWidthX, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %51, align 4
  %106 = load i32, i32* %51, align 4
  %107 = load i32, i32* @numBinsX, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* @numBinsX, align 4
  store i32 %110, i32* %51, align 4
  br label %116

111:                                              ; preds = %100
  %112 = load i32, i32* %51, align 4
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 1, i32* %51, align 4
  br label %115

115:                                              ; preds = %114, %111
  br label %116

116:                                              ; preds = %115, %109
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* @binOffsetY, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i32, i32* @binWidthY, align 4
  %121 = sdiv i32 %119, %120
  store i32 %121, i32* %52, align 4
  %122 = load i32, i32* %52, align 4
  %123 = icmp slt i32 %122, 1
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 1, i32* %52, align 4
  br label %132

125:                                              ; preds = %116
  %126 = load i32, i32* %52, align 4
  %127 = load i32, i32* @numBinsY, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @numBinsY, align 4
  store i32 %130, i32* %52, align 4
  br label %131

131:                                              ; preds = %129, %125
  br label %132

132:                                              ; preds = %131, %124
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* @binOffsetY, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* @binWidthY, align 4
  %137 = sdiv i32 %135, %136
  store i32 %137, i32* %53, align 4
  %138 = load i32, i32* %53, align 4
  %139 = load i32, i32* @numBinsY, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = load i32, i32* @numBinsY, align 4
  store i32 %142, i32* %53, align 4
  br label %148

143:                                              ; preds = %132
  %144 = load i32, i32* %53, align 4
  %145 = icmp slt i32 %144, 1
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 1, i32* %53, align 4
  br label %147

147:                                              ; preds = %146, %143
  br label %148

148:                                              ; preds = %147, %141
  %149 = load i32, i32* %50, align 4
  %150 = load i32, i32* %51, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32, i32* %52, align 4
  %154 = load i32, i32* %53, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* %50, align 4
  store i32 %157, i32* @binX, align 4
  %158 = load i32, i32* %52, align 4
  store i32 %158, i32* @binY, align 4
  br label %160

159:                                              ; preds = %152, %148
  store i32 0, i32* @binX, align 4
  store i32 0, i32* @binY, align 4
  br label %160

160:                                              ; preds = %159, %156
  store i32 0, i32* %46, align 4
  br label %161

161:                                              ; preds = %512, %160
  %162 = load i32, i32* %46, align 4
  %163 = load i32, i32* %51, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %515

165:                                              ; preds = %161
  %166 = load i32, i32* %46, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %46, align 4
  %170 = load i32, i32* %50, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  br label %512

173:                                              ; preds = %168, %165
  store i32 0, i32* %47, align 4
  br label %174

174:                                              ; preds = %508, %173
  %175 = load i32, i32* %47, align 4
  %176 = load i32, i32* %53, align 4
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %178, label %511

178:                                              ; preds = %174
  %179 = load i32, i32* %46, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* %47, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %181, %178
  %185 = load i32, i32* %46, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i32, i32* %47, align 4
  %189 = load i32, i32* %52, align 4
  %190 = icmp sge i32 %188, %189
  br i1 %190, label %192, label %191

191:                                              ; preds = %187, %184
  br label %508

192:                                              ; preds = %187, %181
  %193 = load i32***, i32**** @blockarray, align 8
  %194 = load i32, i32* %46, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32**, i32*** %193, i64 %195
  %197 = load i32**, i32*** %196, align 8
  %198 = load i32, i32* %47, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %197, i64 %199
  %201 = load i32*, i32** %200, align 8
  store i32* %201, i32** %49, align 8
  store i32 1, i32* %48, align 4
  br label %202

202:                                              ; preds = %504, %192
  %203 = load i32, i32* %48, align 4
  %204 = load i32*, i32** %49, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp sle i32 %203, %206
  br i1 %207, label %208, label %507

208:                                              ; preds = %202
  %209 = load i32*, i32** %49, align 8
  %210 = load i32, i32* %48, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %25, align 4
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %221, label %217

217:                                              ; preds = %208
  %218 = load i32, i32* %25, align 4
  %219 = load i32, i32* @numcells, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %217, %208
  br label %504

222:                                              ; preds = %217
  %223 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %224 = load i32, i32* %25, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %223, i64 %225
  %227 = load %struct.cellbox*, %struct.cellbox** %226, align 8
  store %struct.cellbox* %227, %struct.cellbox** %16, align 8
  %228 = load i32, i32* %25, align 4
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %246

231:                                              ; preds = %222
  %232 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %233 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %232, i32 0, i32 21
  %234 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %235 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %233, i64 0, i64 %237
  %239 = load %struct.tilebox*, %struct.tilebox** %238, align 8
  store %struct.tilebox* %239, %struct.tilebox** %20, align 8
  %240 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %241 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %44, align 4
  %243 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %244 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  store i32 %245, i32* %45, align 4
  br label %264

246:                                              ; preds = %222
  %247 = load i32, i32* %13, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %246
  %250 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %251 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %250, i32 0, i32 21
  %252 = load i32, i32* %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %251, i64 0, i64 %253
  %255 = load %struct.tilebox*, %struct.tilebox** %254, align 8
  store %struct.tilebox* %255, %struct.tilebox** %20, align 8
  %256 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %257 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %44, align 4
  %259 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %260 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  store i32 %261, i32* %45, align 4
  br label %263

262:                                              ; preds = %246
  br label %504

263:                                              ; preds = %249
  br label %264

264:                                              ; preds = %263, %231
  %265 = load i32, i32* %44, align 4
  %266 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %267 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %266, i32 0, i32 9
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %265, %268
  store i32 %269, i32* %26, align 4
  %270 = load i32, i32* %44, align 4
  %271 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %272 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %271, i32 0, i32 10
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %270, %273
  store i32 %274, i32* %27, align 4
  %275 = load i32, i32* %45, align 4
  %276 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %277 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %276, i32 0, i32 11
  %278 = load i32, i32* %277, align 8
  %279 = add nsw i32 %275, %278
  store i32 %279, i32* %28, align 4
  %280 = load i32, i32* %45, align 4
  %281 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %282 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %281, i32 0, i32 12
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %280, %283
  store i32 %284, i32* %29, align 4
  %285 = load i32, i32* %26, align 4
  %286 = load i32, i32* %22, align 4
  %287 = icmp sge i32 %285, %286
  br i1 %287, label %300, label %288

288:                                              ; preds = %264
  %289 = load i32, i32* %21, align 4
  %290 = load i32, i32* %27, align 4
  %291 = icmp sge i32 %289, %290
  br i1 %291, label %300, label %292

292:                                              ; preds = %288
  %293 = load i32, i32* %28, align 4
  %294 = load i32, i32* %24, align 4
  %295 = icmp sge i32 %293, %294
  br i1 %295, label %300, label %296

296:                                              ; preds = %292
  %297 = load i32, i32* %23, align 4
  %298 = load i32, i32* %29, align 4
  %299 = icmp sge i32 %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %296, %292, %288, %264
  br label %504

301:                                              ; preds = %296
  %302 = load %struct.cellbox*, %struct.cellbox** %15, align 8
  %303 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %363

306:                                              ; preds = %301
  %307 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %308 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %311, label %363

311:                                              ; preds = %306
  %312 = load i32, i32* %21, align 4
  %313 = load i32, i32* %26, align 4
  %314 = icmp sge i32 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %311
  %316 = load i32, i32* %21, align 4
  br label %319

317:                                              ; preds = %311
  %318 = load i32, i32* %26, align 4
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i32 [ %316, %315 ], [ %318, %317 ]
  store i32 %320, i32* %40, align 4
  %321 = load i32, i32* %22, align 4
  %322 = load i32, i32* %27, align 4
  %323 = icmp sle i32 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %319
  %325 = load i32, i32* %22, align 4
  br label %328

326:                                              ; preds = %319
  %327 = load i32, i32* %27, align 4
  br label %328

328:                                              ; preds = %326, %324
  %329 = phi i32 [ %325, %324 ], [ %327, %326 ]
  store i32 %329, i32* %41, align 4
  %330 = load i32, i32* %23, align 4
  %331 = load i32, i32* %28, align 4
  %332 = icmp sge i32 %330, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %328
  %334 = load i32, i32* %23, align 4
  br label %337

335:                                              ; preds = %328
  %336 = load i32, i32* %28, align 4
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi i32 [ %334, %333 ], [ %336, %335 ]
  store i32 %338, i32* %42, align 4
  %339 = load i32, i32* %24, align 4
  %340 = load i32, i32* %29, align 4
  %341 = icmp sle i32 %339, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = load i32, i32* %24, align 4
  br label %346

344:                                              ; preds = %337
  %345 = load i32, i32* %29, align 4
  br label %346

346:                                              ; preds = %344, %342
  %347 = phi i32 [ %343, %342 ], [ %345, %344 ]
  store i32 %347, i32* %43, align 4
  %348 = load double, double* @lapFactor, align 8
  %349 = load i32, i32* %43, align 4
  %350 = load i32, i32* %42, align 4
  %351 = sub nsw i32 %349, %350
  %352 = load i32, i32* %41, align 4
  %353 = load i32, i32* %40, align 4
  %354 = sub nsw i32 %352, %353
  %355 = mul nsw i32 %351, %354
  %356 = load i32, i32* @offset, align 4
  %357 = add nsw i32 %355, %356
  %358 = sitofp i32 %357 to double
  %359 = fmul double %348, %358
  %360 = fptosi double %359 to i32
  %361 = load i32, i32* %30, align 4
  %362 = add nsw i32 %361, %360
  store i32 %362, i32* %30, align 4
  br label %503

363:                                              ; preds = %306, %301
  store i32 0, i32* %31, align 4
  %364 = load %struct.tilebox*, %struct.tilebox** %19, align 8
  %365 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %364, i32 0, i32 0
  %366 = load %struct.tilebox*, %struct.tilebox** %365, align 8
  store %struct.tilebox* %366, %struct.tilebox** %17, align 8
  br label %367

367:                                              ; preds = %485, %363
  %368 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %369 = icmp ne %struct.tilebox* %368, null
  br i1 %369, label %370, label %489

370:                                              ; preds = %367
  %371 = load i32, i32* %9, align 4
  %372 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %373 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %372, i32 0, i32 9
  %374 = load i32, i32* %373, align 8
  %375 = add nsw i32 %371, %374
  store i32 %375, i32* %32, align 4
  %376 = load i32, i32* %9, align 4
  %377 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %378 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %377, i32 0, i32 10
  %379 = load i32, i32* %378, align 4
  %380 = add nsw i32 %376, %379
  store i32 %380, i32* %33, align 4
  %381 = load i32, i32* %10, align 4
  %382 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %383 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %382, i32 0, i32 11
  %384 = load i32, i32* %383, align 8
  %385 = add nsw i32 %381, %384
  store i32 %385, i32* %34, align 4
  %386 = load i32, i32* %10, align 4
  %387 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %388 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %387, i32 0, i32 12
  %389 = load i32, i32* %388, align 4
  %390 = add nsw i32 %386, %389
  store i32 %390, i32* %35, align 4
  %391 = load %struct.tilebox*, %struct.tilebox** %20, align 8
  %392 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %391, i32 0, i32 0
  %393 = load %struct.tilebox*, %struct.tilebox** %392, align 8
  store %struct.tilebox* %393, %struct.tilebox** %18, align 8
  br label %394

394:                                              ; preds = %480, %370
  %395 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %396 = icmp ne %struct.tilebox* %395, null
  br i1 %396, label %397, label %484

397:                                              ; preds = %394
  %398 = load i32, i32* %44, align 4
  %399 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %400 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %399, i32 0, i32 9
  %401 = load i32, i32* %400, align 8
  %402 = add nsw i32 %398, %401
  store i32 %402, i32* %36, align 4
  %403 = load i32, i32* %44, align 4
  %404 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %405 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %404, i32 0, i32 10
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %403, %406
  store i32 %407, i32* %37, align 4
  %408 = load i32, i32* %45, align 4
  %409 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %410 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %409, i32 0, i32 11
  %411 = load i32, i32* %410, align 8
  %412 = add nsw i32 %408, %411
  store i32 %412, i32* %38, align 4
  %413 = load i32, i32* %45, align 4
  %414 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %415 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %414, i32 0, i32 12
  %416 = load i32, i32* %415, align 4
  %417 = add nsw i32 %413, %416
  store i32 %417, i32* %39, align 4
  %418 = load i32, i32* %36, align 4
  %419 = load i32, i32* %33, align 4
  %420 = icmp sge i32 %418, %419
  br i1 %420, label %433, label %421

421:                                              ; preds = %397
  %422 = load i32, i32* %32, align 4
  %423 = load i32, i32* %37, align 4
  %424 = icmp sge i32 %422, %423
  br i1 %424, label %433, label %425

425:                                              ; preds = %421
  %426 = load i32, i32* %38, align 4
  %427 = load i32, i32* %35, align 4
  %428 = icmp sge i32 %426, %427
  br i1 %428, label %433, label %429

429:                                              ; preds = %425
  %430 = load i32, i32* %34, align 4
  %431 = load i32, i32* %39, align 4
  %432 = icmp sge i32 %430, %431
  br i1 %432, label %433, label %434

433:                                              ; preds = %429, %425, %421, %397
  br label %480

434:                                              ; preds = %429
  %435 = load i32, i32* %32, align 4
  %436 = load i32, i32* %36, align 4
  %437 = icmp sge i32 %435, %436
  br i1 %437, label %438, label %440

438:                                              ; preds = %434
  %439 = load i32, i32* %32, align 4
  br label %442

440:                                              ; preds = %434
  %441 = load i32, i32* %36, align 4
  br label %442

442:                                              ; preds = %440, %438
  %443 = phi i32 [ %439, %438 ], [ %441, %440 ]
  store i32 %443, i32* %40, align 4
  %444 = load i32, i32* %33, align 4
  %445 = load i32, i32* %37, align 4
  %446 = icmp sle i32 %444, %445
  br i1 %446, label %447, label %449

447:                                              ; preds = %442
  %448 = load i32, i32* %33, align 4
  br label %451

449:                                              ; preds = %442
  %450 = load i32, i32* %37, align 4
  br label %451

451:                                              ; preds = %449, %447
  %452 = phi i32 [ %448, %447 ], [ %450, %449 ]
  store i32 %452, i32* %41, align 4
  %453 = load i32, i32* %34, align 4
  %454 = load i32, i32* %38, align 4
  %455 = icmp sge i32 %453, %454
  br i1 %455, label %456, label %458

456:                                              ; preds = %451
  %457 = load i32, i32* %34, align 4
  br label %460

458:                                              ; preds = %451
  %459 = load i32, i32* %38, align 4
  br label %460

460:                                              ; preds = %458, %456
  %461 = phi i32 [ %457, %456 ], [ %459, %458 ]
  store i32 %461, i32* %42, align 4
  %462 = load i32, i32* %35, align 4
  %463 = load i32, i32* %39, align 4
  %464 = icmp sle i32 %462, %463
  br i1 %464, label %465, label %467

465:                                              ; preds = %460
  %466 = load i32, i32* %35, align 4
  br label %469

467:                                              ; preds = %460
  %468 = load i32, i32* %39, align 4
  br label %469

469:                                              ; preds = %467, %465
  %470 = phi i32 [ %466, %465 ], [ %468, %467 ]
  store i32 %470, i32* %43, align 4
  %471 = load i32, i32* %43, align 4
  %472 = load i32, i32* %42, align 4
  %473 = sub nsw i32 %471, %472
  %474 = load i32, i32* %41, align 4
  %475 = load i32, i32* %40, align 4
  %476 = sub nsw i32 %474, %475
  %477 = mul nsw i32 %473, %476
  %478 = load i32, i32* %31, align 4
  %479 = add nsw i32 %478, %477
  store i32 %479, i32* %31, align 4
  br label %480

480:                                              ; preds = %469, %433
  %481 = load %struct.tilebox*, %struct.tilebox** %18, align 8
  %482 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %481, i32 0, i32 0
  %483 = load %struct.tilebox*, %struct.tilebox** %482, align 8
  store %struct.tilebox* %483, %struct.tilebox** %18, align 8
  br label %394, !llvm.loop !6

484:                                              ; preds = %394
  br label %485

485:                                              ; preds = %484
  %486 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %487 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %486, i32 0, i32 0
  %488 = load %struct.tilebox*, %struct.tilebox** %487, align 8
  store %struct.tilebox* %488, %struct.tilebox** %17, align 8
  br label %367, !llvm.loop !7

489:                                              ; preds = %367
  %490 = load i32, i32* %31, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %502

492:                                              ; preds = %489
  %493 = load double, double* @lapFactor, align 8
  %494 = load i32, i32* %31, align 4
  %495 = load i32, i32* @offset, align 4
  %496 = add nsw i32 %494, %495
  %497 = sitofp i32 %496 to double
  %498 = fmul double %493, %497
  %499 = fptosi double %498 to i32
  %500 = load i32, i32* %30, align 4
  %501 = add nsw i32 %500, %499
  store i32 %501, i32* %30, align 4
  br label %502

502:                                              ; preds = %492, %489
  br label %503

503:                                              ; preds = %502, %346
  br label %504

504:                                              ; preds = %503, %300, %262, %221
  %505 = load i32, i32* %48, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %48, align 4
  br label %202, !llvm.loop !8

507:                                              ; preds = %202
  br label %508

508:                                              ; preds = %507, %191
  %509 = load i32, i32* %47, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %47, align 4
  br label %174, !llvm.loop !9

511:                                              ; preds = %174
  br label %512

512:                                              ; preds = %511, %172
  %513 = load i32, i32* %46, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %46, align 4
  br label %161, !llvm.loop !10

515:                                              ; preds = %161
  %516 = load i32, i32* %30, align 4
  ret i32 %516
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
