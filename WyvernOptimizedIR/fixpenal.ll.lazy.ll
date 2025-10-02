; ModuleID = './fixpenal.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/fixpenal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@blockr = external dso_local global i32, align 4
@blockl = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@dx = dso_local global i32 0, align 4
@dy = dso_local global i32 0, align 4
@binOffsetX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@numBinsX = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@binX = external dso_local global i32, align 4
@binY = external dso_local global i32, align 4
@blockarray = external dso_local global i32***, align 8
@numpads = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @fixpenal() #0 {
  %1 = load i32, i32* @blockr, align 4
  %2 = load i32, i32* @blockl, align 4
  %3 = add nsw i32 %1, %2
  %4 = sdiv i32 %3, 2
  %5 = load i32, i32* @blockt, align 4
  %6 = load i32, i32* @blockb, align 4
  %7 = add nsw i32 %5, %6
  %8 = sdiv i32 %7, 2
  br label %9

9:                                                ; preds = %357, %0
  %.01 = phi i32 [ 1, %0 ], [ %.12, %357 ]
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %358, label %10

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %355, %10
  %.12 = phi i32 [ 0, %10 ], [ %.2, %355 ]
  %.0 = phi i32 [ 1, %10 ], [ %356, %355 ]
  %12 = load i32, i32* @numcells, align 4
  %.not3 = icmp sgt i32 %.0, %12
  br i1 %.not3, label %357, label %13

13:                                               ; preds = %11
  %14 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %14, i64 %15
  %17 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %18 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i64 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %.0 to i64
  %21 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %14, i64 %20
  %22 = load %struct.cellbox*, %struct.cellbox** %21, align 8
  %23 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %22, i64 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %26 = sext i32 %.0 to i64
  %27 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %25, i64 %26
  %28 = load %struct.cellbox*, %struct.cellbox** %27, align 8
  %29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %28, i64 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @whoOverlaps(i32 noundef %.0, i32 noundef %19, i32 noundef %24, i32 noundef %30, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %354

33:                                               ; preds = %13
  %34 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %35 = sext i32 %.0 to i64
  %36 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %34, i64 %35
  %37 = load %struct.cellbox*, %struct.cellbox** %36, align 8
  %38 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i64 0, i32 2
  %39 = load i32, i32* %38, align 4
  %.not4 = icmp slt i32 %39, %4
  br i1 %.not4, label %48, label %40

40:                                               ; preds = %33
  %41 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %42 = sext i32 %.0 to i64
  %43 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %41, i64 %42
  %44 = load %struct.cellbox*, %struct.cellbox** %43, align 8
  %45 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %44, i64 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, %4
  br label %55

48:                                               ; preds = %33
  %49 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %50 = sext i32 %.0 to i64
  %51 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %49, i64 %50
  %52 = load %struct.cellbox*, %struct.cellbox** %51, align 8
  %53 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %52, i64 0, i32 2
  %54 = load i32, i32* %53, align 4
  %.neg = sub i32 %4, %54
  br label %55

55:                                               ; preds = %48, %40
  %56 = phi i32 [ %47, %40 ], [ %.neg, %48 ]
  %57 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %58 = sext i32 %.0 to i64
  %59 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %57, i64 %58
  %60 = load %struct.cellbox*, %struct.cellbox** %59, align 8
  %61 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %60, i64 0, i32 2
  %62 = load i32, i32* %61, align 4
  %.not5 = icmp slt i32 %62, %4
  br i1 %.not5, label %71, label %63

63:                                               ; preds = %55
  %64 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %65 = sext i32 %.0 to i64
  %66 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %64, i64 %65
  %67 = load %struct.cellbox*, %struct.cellbox** %66, align 8
  %68 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %67, i64 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, %4
  br label %78

71:                                               ; preds = %55
  %72 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %73 = sext i32 %.0 to i64
  %74 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %72, i64 %73
  %75 = load %struct.cellbox*, %struct.cellbox** %74, align 8
  %76 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %75, i64 0, i32 2
  %77 = load i32, i32* %76, align 4
  %.neg6 = sub i32 %4, %77
  br label %78

78:                                               ; preds = %71, %63
  %79 = phi i32 [ %70, %63 ], [ %.neg6, %71 ]
  %80 = mul nsw i32 %56, %79
  %81 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %82 = sext i32 %.0 to i64
  %83 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %81, i64 %82
  %84 = load %struct.cellbox*, %struct.cellbox** %83, align 8
  %85 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i64 0, i32 3
  %86 = load i32, i32* %85, align 8
  %.not7 = icmp slt i32 %86, %8
  br i1 %.not7, label %95, label %87

87:                                               ; preds = %78
  %88 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %89 = sext i32 %.0 to i64
  %90 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %88, i64 %89
  %91 = load %struct.cellbox*, %struct.cellbox** %90, align 8
  %92 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %91, i64 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, %8
  br label %102

95:                                               ; preds = %78
  %96 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %97 = sext i32 %.0 to i64
  %98 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %96, i64 %97
  %99 = load %struct.cellbox*, %struct.cellbox** %98, align 8
  %100 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %99, i64 0, i32 3
  %101 = load i32, i32* %100, align 8
  %.neg8 = sub i32 %8, %101
  br label %102

102:                                              ; preds = %95, %87
  %103 = phi i32 [ %94, %87 ], [ %.neg8, %95 ]
  %104 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %105 = sext i32 %.0 to i64
  %106 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %104, i64 %105
  %107 = load %struct.cellbox*, %struct.cellbox** %106, align 8
  %108 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %107, i64 0, i32 3
  %109 = load i32, i32* %108, align 8
  %.not9 = icmp slt i32 %109, %8
  br i1 %.not9, label %118, label %110

110:                                              ; preds = %102
  %111 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %112 = sext i32 %.0 to i64
  %113 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %111, i64 %112
  %114 = load %struct.cellbox*, %struct.cellbox** %113, align 8
  %115 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %114, i64 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, %8
  br label %125

118:                                              ; preds = %102
  %119 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %120 = sext i32 %.0 to i64
  %121 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %119, i64 %120
  %122 = load %struct.cellbox*, %struct.cellbox** %121, align 8
  %123 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i64 0, i32 3
  %124 = load i32, i32* %123, align 8
  %.neg10 = sub i32 %8, %124
  br label %125

125:                                              ; preds = %118, %110
  %126 = phi i32 [ %117, %110 ], [ %.neg10, %118 ]
  %127 = mul nsw i32 %103, %126
  %128 = add nsw i32 %80, %127
  %129 = sitofp i32 %128 to double
  %130 = call double @sqrt(double noundef %129) #3
  %131 = fptosi double %130 to i32
  %132 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %133 = sext i32 %31 to i64
  %134 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %132, i64 %133
  %135 = load %struct.cellbox*, %struct.cellbox** %134, align 8
  %136 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %135, i64 0, i32 2
  %137 = load i32, i32* %136, align 4
  %.not11 = icmp slt i32 %137, %4
  br i1 %.not11, label %146, label %138

138:                                              ; preds = %125
  %139 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %140 = sext i32 %31 to i64
  %141 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %139, i64 %140
  %142 = load %struct.cellbox*, %struct.cellbox** %141, align 8
  %143 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %142, i64 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, %4
  br label %153

146:                                              ; preds = %125
  %147 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %148 = sext i32 %31 to i64
  %149 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %147, i64 %148
  %150 = load %struct.cellbox*, %struct.cellbox** %149, align 8
  %151 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %150, i64 0, i32 2
  %152 = load i32, i32* %151, align 4
  %.neg12 = sub i32 %4, %152
  br label %153

153:                                              ; preds = %146, %138
  %154 = phi i32 [ %145, %138 ], [ %.neg12, %146 ]
  %155 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %156 = sext i32 %31 to i64
  %157 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %155, i64 %156
  %158 = load %struct.cellbox*, %struct.cellbox** %157, align 8
  %159 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %158, i64 0, i32 2
  %160 = load i32, i32* %159, align 4
  %.not13 = icmp slt i32 %160, %4
  br i1 %.not13, label %169, label %161

161:                                              ; preds = %153
  %162 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %163 = sext i32 %31 to i64
  %164 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %162, i64 %163
  %165 = load %struct.cellbox*, %struct.cellbox** %164, align 8
  %166 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %165, i64 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %167, %4
  br label %176

169:                                              ; preds = %153
  %170 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %171 = sext i32 %31 to i64
  %172 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %170, i64 %171
  %173 = load %struct.cellbox*, %struct.cellbox** %172, align 8
  %174 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %173, i64 0, i32 2
  %175 = load i32, i32* %174, align 4
  %.neg14 = sub i32 %4, %175
  br label %176

176:                                              ; preds = %169, %161
  %177 = phi i32 [ %168, %161 ], [ %.neg14, %169 ]
  %178 = mul nsw i32 %154, %177
  %179 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %180 = sext i32 %31 to i64
  %181 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %179, i64 %180
  %182 = load %struct.cellbox*, %struct.cellbox** %181, align 8
  %183 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %182, i64 0, i32 3
  %184 = load i32, i32* %183, align 8
  %.not15 = icmp slt i32 %184, %8
  br i1 %.not15, label %193, label %185

185:                                              ; preds = %176
  %186 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %187 = sext i32 %31 to i64
  %188 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %186, i64 %187
  %189 = load %struct.cellbox*, %struct.cellbox** %188, align 8
  %190 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %189, i64 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, %8
  br label %200

193:                                              ; preds = %176
  %194 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %195 = sext i32 %31 to i64
  %196 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %194, i64 %195
  %197 = load %struct.cellbox*, %struct.cellbox** %196, align 8
  %198 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %197, i64 0, i32 3
  %199 = load i32, i32* %198, align 8
  %.neg16 = sub i32 %8, %199
  br label %200

200:                                              ; preds = %193, %185
  %201 = phi i32 [ %192, %185 ], [ %.neg16, %193 ]
  %202 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %203 = sext i32 %31 to i64
  %204 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %202, i64 %203
  %205 = load %struct.cellbox*, %struct.cellbox** %204, align 8
  %206 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %205, i64 0, i32 3
  %207 = load i32, i32* %206, align 8
  %.not17 = icmp slt i32 %207, %8
  br i1 %.not17, label %216, label %208

208:                                              ; preds = %200
  %209 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %210 = sext i32 %31 to i64
  %211 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %209, i64 %210
  %212 = load %struct.cellbox*, %struct.cellbox** %211, align 8
  %213 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %212, i64 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %214, %8
  br label %223

216:                                              ; preds = %200
  %217 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %218 = sext i32 %31 to i64
  %219 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %217, i64 %218
  %220 = load %struct.cellbox*, %struct.cellbox** %219, align 8
  %221 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %220, i64 0, i32 3
  %222 = load i32, i32* %221, align 8
  %.neg18 = sub i32 %8, %222
  br label %223

223:                                              ; preds = %216, %208
  %224 = phi i32 [ %215, %208 ], [ %.neg18, %216 ]
  %225 = mul nsw i32 %201, %224
  %226 = add nsw i32 %178, %225
  %227 = sitofp i32 %226 to double
  %228 = call double @sqrt(double noundef %227) #3
  %229 = fptosi double %228 to i32
  %230 = load i32, i32* @dx, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %223
  store i32 1000000, i32* @dx, align 4
  br label %233

233:                                              ; preds = %232, %223
  %234 = load i32, i32* @dy, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  store i32 1000000, i32* @dy, align 4
  br label %237

237:                                              ; preds = %236, %233
  %238 = load i32, i32* @dx, align 4
  %239 = load i32, i32* @dy, align 4
  %.not19 = icmp sgt i32 %238, %239
  br i1 %.not19, label %241, label %240

240:                                              ; preds = %237
  br label %242

241:                                              ; preds = %237
  br label %242

242:                                              ; preds = %241, %240
  %.in = phi i32* [ @dx, %240 ], [ @dy, %241 ]
  %243 = load i32, i32* %.in, align 4
  %244 = load i32, i32* @dx, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %299

246:                                              ; preds = %242
  %247 = icmp sgt i32 %131, %229
  br i1 %247, label %248, label %273

248:                                              ; preds = %246
  %249 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %250 = sext i32 %.0 to i64
  %251 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %249, i64 %250
  %252 = load %struct.cellbox*, %struct.cellbox** %251, align 8
  %253 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %252, i64 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = icmp sgt i32 %254, %4
  br i1 %255, label %256, label %264

256:                                              ; preds = %248
  %257 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %258 = sext i32 %.0 to i64
  %259 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %257, i64 %258
  %260 = load %struct.cellbox*, %struct.cellbox** %259, align 8
  %261 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %260, i64 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, %243
  store i32 %263, i32* %261, align 4
  br label %272

264:                                              ; preds = %248
  %265 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %266 = sext i32 %.0 to i64
  %267 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %265, i64 %266
  %268 = load %struct.cellbox*, %struct.cellbox** %267, align 8
  %269 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %268, i64 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %270, %243
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %264, %256
  br label %298

273:                                              ; preds = %246
  %274 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %275 = sext i32 %31 to i64
  %276 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %274, i64 %275
  %277 = load %struct.cellbox*, %struct.cellbox** %276, align 8
  %278 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %277, i64 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = icmp sgt i32 %279, %4
  br i1 %280, label %281, label %289

281:                                              ; preds = %273
  %282 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %283 = sext i32 %31 to i64
  %284 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %282, i64 %283
  %285 = load %struct.cellbox*, %struct.cellbox** %284, align 8
  %286 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %285, i64 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, %243
  store i32 %288, i32* %286, align 4
  br label %297

289:                                              ; preds = %273
  %290 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %291 = sext i32 %31 to i64
  %292 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %290, i64 %291
  %293 = load %struct.cellbox*, %struct.cellbox** %292, align 8
  %294 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %293, i64 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = sub nsw i32 %295, %243
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %289, %281
  br label %298

298:                                              ; preds = %297, %272
  br label %352

299:                                              ; preds = %242
  %300 = icmp sgt i32 %131, %229
  br i1 %300, label %301, label %326

301:                                              ; preds = %299
  %302 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %303 = sext i32 %.0 to i64
  %304 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %302, i64 %303
  %305 = load %struct.cellbox*, %struct.cellbox** %304, align 8
  %306 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %305, i64 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = icmp sgt i32 %307, %8
  br i1 %308, label %309, label %317

309:                                              ; preds = %301
  %310 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %311 = sext i32 %.0 to i64
  %312 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %310, i64 %311
  %313 = load %struct.cellbox*, %struct.cellbox** %312, align 8
  %314 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %313, i64 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, %243
  store i32 %316, i32* %314, align 8
  br label %325

317:                                              ; preds = %301
  %318 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %319 = sext i32 %.0 to i64
  %320 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %318, i64 %319
  %321 = load %struct.cellbox*, %struct.cellbox** %320, align 8
  %322 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %321, i64 0, i32 3
  %323 = load i32, i32* %322, align 8
  %324 = sub nsw i32 %323, %243
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %317, %309
  br label %351

326:                                              ; preds = %299
  %327 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %328 = sext i32 %31 to i64
  %329 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %327, i64 %328
  %330 = load %struct.cellbox*, %struct.cellbox** %329, align 8
  %331 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %330, i64 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = icmp sgt i32 %332, %8
  br i1 %333, label %334, label %342

334:                                              ; preds = %326
  %335 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %336 = sext i32 %31 to i64
  %337 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %335, i64 %336
  %338 = load %struct.cellbox*, %struct.cellbox** %337, align 8
  %339 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %338, i64 0, i32 3
  %340 = load i32, i32* %339, align 8
  %341 = add nsw i32 %340, %243
  store i32 %341, i32* %339, align 8
  br label %350

342:                                              ; preds = %326
  %343 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %344 = sext i32 %31 to i64
  %345 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %343, i64 %344
  %346 = load %struct.cellbox*, %struct.cellbox** %345, align 8
  %347 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %346, i64 0, i32 3
  %348 = load i32, i32* %347, align 8
  %349 = sub nsw i32 %348, %243
  store i32 %349, i32* %347, align 8
  br label %350

350:                                              ; preds = %342, %334
  br label %351

351:                                              ; preds = %350, %325
  br label %352

352:                                              ; preds = %351, %298
  %353 = add nsw i32 %.0, -1
  br label %354

354:                                              ; preds = %352, %13
  %.2 = phi i32 [ 1, %352 ], [ %.12, %13 ]
  %.1 = phi i32 [ %353, %352 ], [ %.0, %13 ]
  br label %355

355:                                              ; preds = %354
  %356 = add nsw i32 %.1, 1
  br label %11, !llvm.loop !4

357:                                              ; preds = %11
  br label %9, !llvm.loop !6

358:                                              ; preds = %9
  call void @padOverlaps()
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @whoOverlaps(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #1 {
  store i32 0, i32* @dx, align 4
  store i32 0, i32* @dy, align 4
  %8 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %8, i64 %9
  %11 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 21, i64 %12
  %14 = load %struct.tilebox*, %struct.tilebox** %13, align 8
  %15 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, %1
  %18 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, %1
  %21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 11
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, %2
  %24 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 12
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %2
  %27 = load i32, i32* @binOffsetX, align 4
  %28 = sub nsw i32 %17, %27
  %29 = load i32, i32* @binWidthX, align 4
  %30 = sdiv i32 %28, %29
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %7
  br label %39

33:                                               ; preds = %7
  %34 = load i32, i32* @numBinsX, align 4
  %35 = icmp sgt i32 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @numBinsX, align 4
  br label %38

38:                                               ; preds = %36, %33
  %.06 = phi i32 [ %37, %36 ], [ %30, %33 ]
  br label %39

39:                                               ; preds = %38, %32
  %.17 = phi i32 [ 1, %32 ], [ %.06, %38 ]
  %40 = load i32, i32* @binOffsetX, align 4
  %41 = sub nsw i32 %20, %40
  %42 = load i32, i32* @binWidthX, align 4
  %43 = sdiv i32 %41, %42
  %44 = load i32, i32* @numBinsX, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @numBinsX, align 4
  br label %52

48:                                               ; preds = %39
  %49 = icmp slt i32 %43, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %48
  %.04 = phi i32 [ 1, %50 ], [ %43, %48 ]
  br label %52

52:                                               ; preds = %51, %46
  %.15 = phi i32 [ %47, %46 ], [ %.04, %51 ]
  %53 = load i32, i32* @binOffsetY, align 4
  %54 = sub nsw i32 %23, %53
  %55 = load i32, i32* @binWidthY, align 4
  %56 = sdiv i32 %54, %55
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %65

59:                                               ; preds = %52
  %60 = load i32, i32* @numBinsY, align 4
  %61 = icmp sgt i32 %56, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @numBinsY, align 4
  br label %64

64:                                               ; preds = %62, %59
  %.02 = phi i32 [ %63, %62 ], [ %56, %59 ]
  br label %65

65:                                               ; preds = %64, %58
  %.13 = phi i32 [ 1, %58 ], [ %.02, %64 ]
  %66 = load i32, i32* @binOffsetY, align 4
  %67 = sub nsw i32 %26, %66
  %68 = load i32, i32* @binWidthY, align 4
  %69 = sdiv i32 %67, %68
  %70 = load i32, i32* @numBinsY, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @numBinsY, align 4
  br label %78

74:                                               ; preds = %65
  %75 = icmp slt i32 %69, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76, %74
  %.01 = phi i32 [ 1, %76 ], [ %69, %74 ]
  br label %78

78:                                               ; preds = %77, %72
  %.1 = phi i32 [ %73, %72 ], [ %.01, %77 ]
  %79 = icmp eq i32 %.17, %.15
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = icmp eq i32 %.13, %.1
  br i1 %81, label %82, label %83

82:                                               ; preds = %80
  br label %84

83:                                               ; preds = %80, %78
  br label %84

84:                                               ; preds = %83, %82
  %storemerge25 = phi i32 [ 0, %83 ], [ %.17, %82 ]
  %storemerge = phi i32 [ 0, %83 ], [ %.13, %82 ]
  store i32 %storemerge25, i32* @binX, align 4
  store i32 %storemerge, i32* @binY, align 4
  br label %85

85:                                               ; preds = %265, %84
  %.010 = phi i32 [ 0, %84 ], [ %266, %265 ]
  %.not = icmp sgt i32 %.010, %.15
  br i1 %.not, label %267, label %86

86:                                               ; preds = %85
  %87 = icmp eq i32 %.010, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %.not26 = icmp slt i32 %.010, %.17
  br i1 %.not26, label %89, label %90

89:                                               ; preds = %88
  br label %265

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %262, %90
  %.09 = phi i32 [ 0, %90 ], [ %263, %262 ]
  %.not27 = icmp sgt i32 %.09, %.1
  br i1 %.not27, label %264, label %92

92:                                               ; preds = %91
  %93 = icmp eq i32 %.010, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = icmp eq i32 %.09, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %94, %92
  %.not28 = icmp eq i32 %.010, 0
  br i1 %.not28, label %98, label %97

97:                                               ; preds = %96
  %.not29 = icmp slt i32 %.09, %.13
  br i1 %.not29, label %98, label %99

98:                                               ; preds = %97, %96
  br label %262

99:                                               ; preds = %97, %94
  %100 = load i32***, i32**** @blockarray, align 8
  %101 = zext i32 %.010 to i64
  %102 = getelementptr inbounds i32**, i32*** %100, i64 %101
  %103 = load i32**, i32*** %102, align 8
  %104 = zext i32 %.09 to i64
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  %106 = load i32*, i32** %105, align 8
  br label %107

107:                                              ; preds = %259, %99
  %.08 = phi i32 [ 1, %99 ], [ %260, %259 ]
  %108 = load i32, i32* %106, align 4
  %.not30 = icmp sgt i32 %.08, %108
  br i1 %.not30, label %261, label %109

109:                                              ; preds = %107
  %110 = zext i32 %.08 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, %0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @numcells, align 4
  %116 = icmp sgt i32 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %114, %109
  br label %259

118:                                              ; preds = %114
  %119 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %120 = sext i32 %112 to i64
  %121 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %119, i64 %120
  %122 = load %struct.cellbox*, %struct.cellbox** %121, align 8
  %.not31 = icmp eq i32 %112, %4
  br i1 %.not31, label %126, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i64 0, i32 5
  %125 = load i32, i32* %124, align 8
  br label %131

126:                                              ; preds = %118
  %127 = icmp eq i32 %5, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  br label %130

129:                                              ; preds = %126
  br label %259

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130, %123
  %.pn52.in = phi i32 [ %125, %123 ], [ %6, %130 ]
  %.pn53 = phi %struct.cellbox* [ %122, %123 ], [ %11, %130 ]
  %.011.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %.pn53, i64 0, i32 3
  %.012.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %.pn53, i64 0, i32 2
  %.pn52 = sext i32 %.pn52.in to i64
  %.015.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i64 0, i32 21, i64 %.pn52
  %.011 = load i32, i32* %.011.in, align 8
  %.012 = load i32, i32* %.012.in, align 4
  %.015 = load %struct.tilebox*, %struct.tilebox** %.015.in, align 8
  %132 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.015, i64 0, i32 9
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %.012, %133
  %135 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.015, i64 0, i32 10
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %.012, %136
  %138 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.015, i64 0, i32 11
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %.011, %139
  %141 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.015, i64 0, i32 12
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %.011, %142
  %.not32 = icmp slt i32 %134, %20
  br i1 %.not32, label %144, label %147

144:                                              ; preds = %131
  %.not33 = icmp slt i32 %17, %137
  br i1 %.not33, label %145, label %147

145:                                              ; preds = %144
  %.not34 = icmp slt i32 %140, %26
  br i1 %.not34, label %146, label %147

146:                                              ; preds = %145
  %.not35 = icmp slt i32 %23, %143
  br i1 %.not35, label %148, label %147

147:                                              ; preds = %146, %145, %144, %131
  br label %259

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %175

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i64 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %175

156:                                              ; preds = %152
  %.not48 = icmp slt i32 %17, %134
  br i1 %.not48, label %158, label %157

157:                                              ; preds = %156
  br label %159

158:                                              ; preds = %156
  br label %159

159:                                              ; preds = %158, %157
  %160 = phi i32 [ %17, %157 ], [ %134, %158 ]
  %.not49 = icmp sgt i32 %20, %137
  br i1 %.not49, label %162, label %161

161:                                              ; preds = %159
  br label %163

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %161
  %164 = phi i32 [ %20, %161 ], [ %137, %162 ]
  %.not50 = icmp slt i32 %23, %140
  br i1 %.not50, label %166, label %165

165:                                              ; preds = %163
  br label %167

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %166, %165
  %168 = phi i32 [ %23, %165 ], [ %140, %166 ]
  %.not51 = icmp sgt i32 %26, %143
  br i1 %.not51, label %170, label %169

169:                                              ; preds = %167
  br label %171

170:                                              ; preds = %167
  br label %171

171:                                              ; preds = %170, %169
  %172 = phi i32 [ %26, %169 ], [ %143, %170 ]
  %173 = sub nsw i32 %164, %160
  store i32 %173, i32* @dx, align 4
  %174 = sub nsw i32 %172, %168
  store i32 %174, i32* @dy, align 4
  br label %268

175:                                              ; preds = %152, %148
  br label %176

176:                                              ; preds = %251, %175
  %.pn = phi %struct.tilebox* [ %14, %175 ], [ %.013, %251 ]
  %.013.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.013 = load %struct.tilebox*, %struct.tilebox** %.013.in, align 8
  %.not36 = icmp eq %struct.tilebox* %.013, null
  br i1 %.not36, label %252, label %177

177:                                              ; preds = %176
  %178 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 9
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, %1
  %181 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 10
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, %1
  %184 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 11
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, %2
  %187 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 12
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %2
  br label %190

190:                                              ; preds = %249, %177
  %.015.pn = phi %struct.tilebox* [ %.015, %177 ], [ %.014, %249 ]
  %.014.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.015.pn, i64 0, i32 0
  %.014 = load %struct.tilebox*, %struct.tilebox** %.014.in, align 8
  %.not39 = icmp eq %struct.tilebox* %.014, null
  br i1 %.not39, label %250, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 9
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %.012, %193
  %195 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 10
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %.012, %196
  %198 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 11
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %.011, %199
  %201 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 12
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %.011, %202
  %.not40 = icmp slt i32 %194, %183
  br i1 %.not40, label %204, label %207

204:                                              ; preds = %191
  %.not41 = icmp slt i32 %180, %197
  br i1 %.not41, label %205, label %207

205:                                              ; preds = %204
  %.not42 = icmp slt i32 %200, %189
  br i1 %.not42, label %206, label %207

206:                                              ; preds = %205
  %.not43 = icmp slt i32 %186, %203
  br i1 %.not43, label %208, label %207

207:                                              ; preds = %206, %205, %204, %191
  br label %249

208:                                              ; preds = %206
  %.not44 = icmp slt i32 %180, %194
  br i1 %.not44, label %210, label %209

209:                                              ; preds = %208
  br label %211

210:                                              ; preds = %208
  br label %211

211:                                              ; preds = %210, %209
  %212 = phi i32 [ %180, %209 ], [ %194, %210 ]
  %.not45 = icmp sgt i32 %183, %197
  br i1 %.not45, label %214, label %213

213:                                              ; preds = %211
  br label %215

214:                                              ; preds = %211
  br label %215

215:                                              ; preds = %214, %213
  %216 = phi i32 [ %183, %213 ], [ %197, %214 ]
  %.not46 = icmp slt i32 %186, %200
  br i1 %.not46, label %218, label %217

217:                                              ; preds = %215
  br label %219

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %218, %217
  %220 = phi i32 [ %186, %217 ], [ %200, %218 ]
  %.not47 = icmp sgt i32 %189, %203
  br i1 %.not47, label %222, label %221

221:                                              ; preds = %219
  br label %223

222:                                              ; preds = %219
  br label %223

223:                                              ; preds = %222, %221
  %224 = phi i32 [ %189, %221 ], [ %203, %222 ]
  %225 = load i32, i32* @dx, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = sub nsw i32 %216, %212
  %229 = load i32, i32* @dx, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = sub nsw i32 %216, %212
  store i32 %232, i32* @dx, align 4
  br label %233

233:                                              ; preds = %231, %227
  br label %236

234:                                              ; preds = %223
  %235 = sub nsw i32 %216, %212
  store i32 %235, i32* @dx, align 4
  br label %236

236:                                              ; preds = %234, %233
  %237 = load i32, i32* @dy, align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = sub nsw i32 %224, %220
  %241 = load i32, i32* @dy, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = sub nsw i32 %224, %220
  store i32 %244, i32* @dy, align 4
  br label %245

245:                                              ; preds = %243, %239
  br label %248

246:                                              ; preds = %236
  %247 = sub nsw i32 %224, %220
  store i32 %247, i32* @dy, align 4
  br label %248

248:                                              ; preds = %246, %245
  br label %249

249:                                              ; preds = %248, %207
  br label %190, !llvm.loop !7

250:                                              ; preds = %190
  br label %251

251:                                              ; preds = %250
  br label %176, !llvm.loop !8

252:                                              ; preds = %176
  %253 = load i32, i32* @dx, align 4
  %.not37 = icmp eq i32 %253, 0
  br i1 %.not37, label %254, label %256

254:                                              ; preds = %252
  %255 = load i32, i32* @dy, align 4
  %.not38 = icmp eq i32 %255, 0
  br i1 %.not38, label %257, label %256

256:                                              ; preds = %254, %252
  br label %268

257:                                              ; preds = %254
  br label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258, %147, %129, %117
  %260 = add nuw nsw i32 %.08, 1
  br label %107, !llvm.loop !9

261:                                              ; preds = %107
  br label %262

262:                                              ; preds = %261, %98
  %263 = add nuw nsw i32 %.09, 1
  br label %91, !llvm.loop !10

264:                                              ; preds = %91
  br label %265

265:                                              ; preds = %264, %89
  %266 = add nuw nsw i32 %.010, 1
  br label %85, !llvm.loop !11

267:                                              ; preds = %85
  br label %268

268:                                              ; preds = %267, %256, %171
  %.0 = phi i32 [ %112, %171 ], [ %112, %256 ], [ 0, %267 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @padOverlaps() #1 {
  br label %1

1:                                                ; preds = %257, %0
  %.0 = phi i32 [ 1, %0 ], [ %258, %257 ]
  %2 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %259, label %3

3:                                                ; preds = %1
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %5
  %7 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %10
  %12 = load %struct.tilebox*, %struct.tilebox** %11, align 8
  %13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %12, i64 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %14, %16
  %18 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %12, i64 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %14, %19
  %21 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %12, i64 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %22, %24
  %26 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %12, i64 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %22, %27
  %29 = load i32, i32* @blockl, align 4
  %.not8 = icmp slt i32 %17, %29
  br i1 %.not8, label %37, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @blockr, align 4
  %.not21 = icmp sgt i32 %20, %31
  br i1 %.not21, label %37, label %32

32:                                               ; preds = %30
  %33 = load i32, i32* @blockb, align 4
  %.not22 = icmp slt i32 %25, %33
  br i1 %.not22, label %37, label %34

34:                                               ; preds = %32
  %35 = load i32, i32* @blockt, align 4
  %.not23 = icmp sgt i32 %28, %35
  br i1 %.not23, label %37, label %36

36:                                               ; preds = %34
  br label %257

37:                                               ; preds = %34, %32, %30, %3
  %38 = load i32, i32* @blockl, align 4
  %39 = icmp slt i32 %17, %38
  br i1 %39, label %40, label %91

40:                                               ; preds = %37
  %41 = load i32, i32* @numcells, align 4
  br label %42

42:                                               ; preds = %89, %40
  %.01.in = phi i32 [ %41, %40 ], [ %.01, %89 ]
  %.01 = add nsw i32 %.01.in, 1
  %43 = load i32, i32* @numcells, align 4
  %44 = load i32, i32* @numpads, align 4
  %45 = add nsw i32 %43, %44
  %.not18.not = icmp slt i32 %.01.in, %45
  br i1 %.not18.not, label %46, label %.loopexit

46:                                               ; preds = %42
  %47 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %48 = sext i32 %.01 to i64
  %49 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %47, i64 %48
  %50 = load %struct.cellbox*, %struct.cellbox** %49, align 8
  %51 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %50, i64 0, i32 11
  %52 = load i32, i32* %51, align 8
  %.not19 = icmp eq i32 %52, 1
  br i1 %.not19, label %54, label %53

53:                                               ; preds = %46
  br label %89

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %50, i64 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %50, i64 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %50, i64 0, i32 21, i64 %59
  %61 = load %struct.tilebox*, %struct.tilebox** %60, align 8
  %62 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %61, i64 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %56, %63
  %65 = sub nsw i32 %64, %17
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %90

68:                                               ; preds = %54
  %69 = load i32, i32* @numcells, align 4
  br label %70

70:                                               ; preds = %87, %68
  %.1.in = phi i32 [ %69, %68 ], [ %.1, %87 ]
  %.1 = add nsw i32 %.1.in, 1
  %71 = load i32, i32* @numcells, align 4
  %72 = load i32, i32* @numpads, align 4
  %73 = add nsw i32 %71, %72
  %.not20.not = icmp slt i32 %.1.in, %73
  br i1 %.not20.not, label %74, label %88

74:                                               ; preds = %70
  %75 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %76 = sext i32 %.1 to i64
  %77 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %75, i64 %76
  %78 = load %struct.cellbox*, %struct.cellbox** %77, align 8
  %79 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %78, i64 0, i32 11
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %78, i64 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, %65
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %82, %74
  br label %87

87:                                               ; preds = %86
  br label %70, !llvm.loop !12

88:                                               ; preds = %70
  br label %90

89:                                               ; preds = %53
  br label %42, !llvm.loop !13

.loopexit:                                        ; preds = %42
  br label %90

90:                                               ; preds = %.loopexit, %88, %67
  br label %256

91:                                               ; preds = %37
  %92 = load i32, i32* @blockr, align 4
  %93 = icmp sgt i32 %20, %92
  br i1 %93, label %94, label %145

94:                                               ; preds = %91
  %95 = load i32, i32* @numcells, align 4
  br label %96

96:                                               ; preds = %143, %94
  %.2.in = phi i32 [ %95, %94 ], [ %.2, %143 ]
  %.2 = add nsw i32 %.2.in, 1
  %97 = load i32, i32* @numcells, align 4
  %98 = load i32, i32* @numpads, align 4
  %99 = add nsw i32 %97, %98
  %.not15.not = icmp slt i32 %.2.in, %99
  br i1 %.not15.not, label %100, label %.loopexit2

100:                                              ; preds = %96
  %101 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %102 = sext i32 %.2 to i64
  %103 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %101, i64 %102
  %104 = load %struct.cellbox*, %struct.cellbox** %103, align 8
  %105 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %104, i64 0, i32 11
  %106 = load i32, i32* %105, align 8
  %.not16 = icmp eq i32 %106, 3
  br i1 %.not16, label %108, label %107

107:                                              ; preds = %100
  br label %143

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %104, i64 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %104, i64 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %104, i64 0, i32 21, i64 %113
  %115 = load %struct.tilebox*, %struct.tilebox** %114, align 8
  %116 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %115, i64 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %110, %117
  %119 = sub nsw i32 %20, %118
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  br label %144

122:                                              ; preds = %108
  %123 = load i32, i32* @numcells, align 4
  br label %124

124:                                              ; preds = %141, %122
  %.3.in = phi i32 [ %123, %122 ], [ %.3, %141 ]
  %.3 = add nsw i32 %.3.in, 1
  %125 = load i32, i32* @numcells, align 4
  %126 = load i32, i32* @numpads, align 4
  %127 = add nsw i32 %125, %126
  %.not17.not = icmp slt i32 %.3.in, %127
  br i1 %.not17.not, label %128, label %142

128:                                              ; preds = %124
  %129 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %130 = sext i32 %.3 to i64
  %131 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %129, i64 %130
  %132 = load %struct.cellbox*, %struct.cellbox** %131, align 8
  %133 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %132, i64 0, i32 11
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 3
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %132, i64 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %119
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %136, %128
  br label %141

141:                                              ; preds = %140
  br label %124, !llvm.loop !14

142:                                              ; preds = %124
  br label %144

143:                                              ; preds = %107
  br label %96, !llvm.loop !15

.loopexit2:                                       ; preds = %96
  br label %144

144:                                              ; preds = %.loopexit2, %142, %121
  br label %255

145:                                              ; preds = %91
  %146 = load i32, i32* @blockb, align 4
  %147 = icmp slt i32 %25, %146
  br i1 %147, label %148, label %199

148:                                              ; preds = %145
  %149 = load i32, i32* @numcells, align 4
  br label %150

150:                                              ; preds = %197, %148
  %.4.in = phi i32 [ %149, %148 ], [ %.4, %197 ]
  %.4 = add nsw i32 %.4.in, 1
  %151 = load i32, i32* @numcells, align 4
  %152 = load i32, i32* @numpads, align 4
  %153 = add nsw i32 %151, %152
  %.not12.not = icmp slt i32 %.4.in, %153
  br i1 %.not12.not, label %154, label %.loopexit3

154:                                              ; preds = %150
  %155 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %156 = sext i32 %.4 to i64
  %157 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %155, i64 %156
  %158 = load %struct.cellbox*, %struct.cellbox** %157, align 8
  %159 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %158, i64 0, i32 11
  %160 = load i32, i32* %159, align 8
  %.not13 = icmp eq i32 %160, 4
  br i1 %.not13, label %162, label %161

161:                                              ; preds = %154
  br label %197

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %158, i64 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %158, i64 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %158, i64 0, i32 21, i64 %167
  %169 = load %struct.tilebox*, %struct.tilebox** %168, align 8
  %170 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %169, i64 0, i32 12
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %164, %171
  %173 = sub nsw i32 %172, %25
  %174 = icmp slt i32 %173, 1
  br i1 %174, label %175, label %176

175:                                              ; preds = %162
  br label %198

176:                                              ; preds = %162
  %177 = load i32, i32* @numcells, align 4
  br label %178

178:                                              ; preds = %195, %176
  %.5.in = phi i32 [ %177, %176 ], [ %.5, %195 ]
  %.5 = add nsw i32 %.5.in, 1
  %179 = load i32, i32* @numcells, align 4
  %180 = load i32, i32* @numpads, align 4
  %181 = add nsw i32 %179, %180
  %.not14.not = icmp slt i32 %.5.in, %181
  br i1 %.not14.not, label %182, label %196

182:                                              ; preds = %178
  %183 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %184 = sext i32 %.5 to i64
  %185 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %183, i64 %184
  %186 = load %struct.cellbox*, %struct.cellbox** %185, align 8
  %187 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %186, i64 0, i32 11
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 4
  br i1 %189, label %190, label %194

190:                                              ; preds = %182
  %191 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %186, i64 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, %173
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %190, %182
  br label %195

195:                                              ; preds = %194
  br label %178, !llvm.loop !16

196:                                              ; preds = %178
  br label %198

197:                                              ; preds = %161
  br label %150, !llvm.loop !17

.loopexit3:                                       ; preds = %150
  br label %198

198:                                              ; preds = %.loopexit3, %196, %175
  br label %254

199:                                              ; preds = %145
  %200 = load i32, i32* @blockt, align 4
  %201 = icmp sgt i32 %28, %200
  br i1 %201, label %202, label %253

202:                                              ; preds = %199
  %203 = load i32, i32* @numcells, align 4
  br label %204

204:                                              ; preds = %251, %202
  %.6.in = phi i32 [ %203, %202 ], [ %.6, %251 ]
  %.6 = add nsw i32 %.6.in, 1
  %205 = load i32, i32* @numcells, align 4
  %206 = load i32, i32* @numpads, align 4
  %207 = add nsw i32 %205, %206
  %.not9.not = icmp slt i32 %.6.in, %207
  br i1 %.not9.not, label %208, label %.loopexit4

208:                                              ; preds = %204
  %209 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %210 = sext i32 %.6 to i64
  %211 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %209, i64 %210
  %212 = load %struct.cellbox*, %struct.cellbox** %211, align 8
  %213 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %212, i64 0, i32 11
  %214 = load i32, i32* %213, align 8
  %.not10 = icmp eq i32 %214, 2
  br i1 %.not10, label %216, label %215

215:                                              ; preds = %208
  br label %251

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %212, i64 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %212, i64 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %212, i64 0, i32 21, i64 %221
  %223 = load %struct.tilebox*, %struct.tilebox** %222, align 8
  %224 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %223, i64 0, i32 11
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %218, %225
  %227 = sub nsw i32 %28, %226
  %228 = icmp slt i32 %227, 1
  br i1 %228, label %229, label %230

229:                                              ; preds = %216
  br label %252

230:                                              ; preds = %216
  %231 = load i32, i32* @numcells, align 4
  br label %232

232:                                              ; preds = %249, %230
  %.7.in = phi i32 [ %231, %230 ], [ %.7, %249 ]
  %.7 = add nsw i32 %.7.in, 1
  %233 = load i32, i32* @numcells, align 4
  %234 = load i32, i32* @numpads, align 4
  %235 = add nsw i32 %233, %234
  %.not11.not = icmp slt i32 %.7.in, %235
  br i1 %.not11.not, label %236, label %250

236:                                              ; preds = %232
  %237 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %238 = sext i32 %.7 to i64
  %239 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %237, i64 %238
  %240 = load %struct.cellbox*, %struct.cellbox** %239, align 8
  %241 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %240, i64 0, i32 11
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %248

244:                                              ; preds = %236
  %245 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %240, i64 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, %227
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %244, %236
  br label %249

249:                                              ; preds = %248
  br label %232, !llvm.loop !18

250:                                              ; preds = %232
  br label %252

251:                                              ; preds = %215
  br label %204, !llvm.loop !19

.loopexit4:                                       ; preds = %204
  br label %252

252:                                              ; preds = %.loopexit4, %250, %229
  br label %253

253:                                              ; preds = %252, %199
  br label %254

254:                                              ; preds = %253, %198
  br label %255

255:                                              ; preds = %254, %144
  br label %256

256:                                              ; preds = %255, %90
  br label %257

257:                                              ; preds = %256, %36
  %258 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !20

259:                                              ; preds = %1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
