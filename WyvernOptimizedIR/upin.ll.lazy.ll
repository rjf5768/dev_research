; ModuleID = './upin.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/upin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@Tsave = external dso_local global double, align 8
@overfill = external dso_local global i32, align 4
@termarray = external dso_local global %struct.termnets**, align 8
@netarray = external dso_local global %struct.dimbox**, align 8
@funccost = external dso_local global i32, align 4
@T = external dso_local global double, align 8
@randVar = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @upin(%struct.cellbox* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load double, double* @Tsave, align 8
  %7 = fdiv double %6, 1.000000e+05
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 21, i64 %14
  %16 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %17 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 20
  %18 = load %struct.uncombox*, %struct.uncombox** %17, align 8
  %19 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 19
  %20 = load %struct.contentbox*, %struct.contentbox** %19, align 8
  %21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 18
  %22 = load %struct.locbox*, %struct.locbox** %21, align 8
  %23 = load i32, i32* @overfill, align 4
  br label %24

24:                                               ; preds = %31, %5
  %.013 = phi i32 [ %3, %5 ], [ %32, %31 ]
  %.not = icmp sgt i32 %.013, %4
  br i1 %.not, label %33, label %25

25:                                               ; preds = %24
  %26 = sext i32 %.013 to i64
  %27 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %26, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %.013 to i64
  %30 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %29, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25
  %32 = add nsw i32 %.013, 1
  br label %24, !llvm.loop !4

33:                                               ; preds = %24
  %34 = sext i32 %1 to i64
  %35 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %34, i32 1
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %49, %33
  %.114 = phi i32 [ %36, %33 ], [ %50, %49 ]
  %38 = add nsw i32 %1, %2
  %39 = add nsw i32 %38, -1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %40, i32 1
  %42 = load i32, i32* %41, align 4
  %.not27 = icmp sgt i32 %.114, %42
  br i1 %.not27, label %51, label %43

43:                                               ; preds = %37
  %44 = sext i32 %.114 to i64
  %45 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %44, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %.114 to i64
  %48 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %47, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43
  %50 = add nsw i32 %.114, 1
  br label %37, !llvm.loop !6

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %90, %51
  %.019 = phi i32 [ %1, %51 ], [ %91, %90 ]
  %.08 = phi i32 [ %23, %51 ], [ %.210, %90 ]
  %53 = add nsw i32 %1, %2
  %54 = icmp slt i32 %.019, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %52
  %56 = sext i32 %.019 to i64
  %57 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %56, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %59, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = sext i32 %58 to i64
  %64 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %63, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %61, %65
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %55
  %69 = icmp eq i32 %66, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  %71 = fmul double %7, 1.000000e+01
  %72 = fptosi double %71 to i32
  %73 = sub nsw i32 %.08, %72
  br label %88

74:                                               ; preds = %68
  %75 = fmul double %7, 1.000000e+01
  %76 = mul nsw i32 %66, %66
  %77 = sitofp i32 %76 to double
  %78 = fmul double %75, %77
  %79 = fptosi double %78 to i32
  %80 = fmul double %7, 1.000000e+01
  %81 = add nsw i32 %66, -1
  %82 = add nsw i32 %66, -1
  %83 = mul nsw i32 %81, %82
  %84 = sitofp i32 %83 to double
  %85 = fmul double %80, %84
  %86 = fptosi double %85 to i32
  %.neg = sub i32 %86, %79
  %87 = add i32 %.neg, %.08
  br label %88

88:                                               ; preds = %74, %70
  %.19 = phi i32 [ %73, %70 ], [ %87, %74 ]
  br label %89

89:                                               ; preds = %88, %55
  %.210 = phi i32 [ %.19, %88 ], [ %.08, %55 ]
  br label %90

90:                                               ; preds = %89
  %91 = add nsw i32 %.019, 1
  br label %52, !llvm.loop !7

92:                                               ; preds = %52
  %93 = add nsw i32 %3, -1
  br label %94

94:                                               ; preds = %134, %92
  %.120 = phi i32 [ %1, %92 ], [ %135, %134 ]
  %.215 = phi i32 [ %93, %92 ], [ %.316, %134 ]
  %.3 = phi i32 [ %.08, %92 ], [ %.5, %134 ]
  %.04 = phi i32 [ 0, %92 ], [ %.15, %134 ]
  %.03 = phi i32 [ 0, %92 ], [ %.1, %134 ]
  %95 = add nsw i32 %1, %2
  %96 = icmp slt i32 %.120, %95
  br i1 %96, label %97, label %136

97:                                               ; preds = %94
  %98 = add nsw i32 %.03, 1
  %.not32 = icmp slt i32 %.03, %.04
  br i1 %.not32, label %104, label %99

99:                                               ; preds = %97
  %100 = add nsw i32 %.215, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %101, i32 2
  %103 = load i32, i32* %102, align 4
  br label %104

104:                                              ; preds = %99, %97
  %.316 = phi i32 [ %100, %99 ], [ %.215, %97 ]
  %.15 = phi i32 [ %103, %99 ], [ %.04, %97 ]
  %.1 = phi i32 [ 1, %99 ], [ %98, %97 ]
  %105 = sext i32 %.316 to i64
  %106 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %105, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = sub nsw i32 %108, %.15
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %104
  %112 = icmp eq i32 %109, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = fmul double %7, 1.000000e+01
  %115 = fptosi double %114 to i32
  br label %130

116:                                              ; preds = %111
  %117 = fmul double %7, 1.000000e+01
  %118 = mul nsw i32 %109, %109
  %119 = sitofp i32 %118 to double
  %120 = fmul double %117, %119
  %121 = fptosi double %120 to i32
  %122 = fmul double %7, 1.000000e+01
  %123 = add nsw i32 %109, -1
  %124 = add nsw i32 %109, -1
  %125 = mul nsw i32 %123, %124
  %126 = sitofp i32 %125 to double
  %127 = fmul double %122, %126
  %128 = fptosi double %127 to i32
  %129 = sub nsw i32 %121, %128
  br label %130

130:                                              ; preds = %116, %113
  %.pn = phi i32 [ %115, %113 ], [ %129, %116 ]
  %.4 = add nsw i32 %.3, %.pn
  br label %131

131:                                              ; preds = %130, %104
  %.5 = phi i32 [ %.4, %130 ], [ %.3, %104 ]
  %132 = sext i32 %.120 to i64
  %133 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %132, i32 2
  store i32 %.316, i32* %133, align 4
  br label %134

134:                                              ; preds = %131
  %135 = add nsw i32 %.120, 1
  br label %94, !llvm.loop !8

136:                                              ; preds = %94
  br label %137

137:                                              ; preds = %175, %136
  %.221 = phi i32 [ %1, %136 ], [ %176, %175 ]
  %138 = add nsw i32 %1, %2
  %139 = icmp slt i32 %.221, %138
  br i1 %139, label %140, label %177

140:                                              ; preds = %137
  %141 = sext i32 %.221 to i64
  %142 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %141, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.locbox, %struct.locbox* %22, i64 %144, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, %9
  %148 = sext i32 %143 to i64
  %149 = getelementptr inbounds %struct.locbox, %struct.locbox* %22, i64 %148, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %11
  %152 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %153 = sext i32 %.221 to i64
  %154 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %153, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.termnets*, %struct.termnets** %152, i64 %156
  %158 = load %struct.termnets*, %struct.termnets** %157, align 8
  %159 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %160 = getelementptr inbounds %struct.termnets, %struct.termnets* %158, i64 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %159, i64 %162
  %164 = load %struct.dimbox*, %struct.dimbox** %163, align 8
  %165 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %164, i64 0, i32 7
  store i32 1, i32* %165, align 8
  %166 = getelementptr inbounds %struct.termnets, %struct.termnets* %158, i64 0, i32 1
  %167 = load %struct.netbox*, %struct.netbox** %166, align 8
  %168 = getelementptr inbounds %struct.netbox, %struct.netbox* %167, i64 0, i32 6
  store i32 1, i32* %168, align 4
  %169 = getelementptr inbounds %struct.termnets, %struct.termnets* %158, i64 0, i32 1
  %170 = load %struct.netbox*, %struct.netbox** %169, align 8
  %171 = getelementptr inbounds %struct.netbox, %struct.netbox* %170, i64 0, i32 3
  store i32 %147, i32* %171, align 8
  %172 = getelementptr inbounds %struct.termnets, %struct.termnets* %158, i64 0, i32 1
  %173 = load %struct.netbox*, %struct.netbox** %172, align 8
  %174 = getelementptr inbounds %struct.netbox, %struct.netbox* %173, i64 0, i32 4
  store i32 %151, i32* %174, align 4
  br label %175

175:                                              ; preds = %140
  %176 = add nsw i32 %.221, 1
  br label %137, !llvm.loop !9

177:                                              ; preds = %137
  %178 = load i32, i32* @funccost, align 4
  br label %179

179:                                              ; preds = %340, %177
  %.322 = phi i32 [ %1, %177 ], [ %341, %340 ]
  %.011 = phi i32 [ %178, %177 ], [ %.112, %340 ]
  %180 = add nsw i32 %1, %2
  %181 = icmp slt i32 %.322, %180
  br i1 %181, label %182, label %342

182:                                              ; preds = %179
  %183 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %184 = sext i32 %.322 to i64
  %185 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %184, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.termnets*, %struct.termnets** %183, i64 %187
  %189 = load %struct.termnets*, %struct.termnets** %188, align 8
  %190 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %191 = getelementptr inbounds %struct.termnets, %struct.termnets* %189, i64 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %190, i64 %193
  %195 = load %struct.dimbox*, %struct.dimbox** %194, align 8
  %196 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %182
  %200 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %204

203:                                              ; preds = %199, %182
  br label %340

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 7
  store i32 0, i32* %205, align 8
  %206 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 0
  br label %207

207:                                              ; preds = %241, %204
  %.06.in = phi %struct.netbox** [ %206, %204 ], [ %242, %241 ]
  %.06 = load %struct.netbox*, %struct.netbox** %.06.in, align 8
  %208 = icmp eq %struct.netbox* %.06, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %207
  br label %243

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 9
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  br label %241

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %229

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 5
  store i32 %221, i32* %222, align 8
  %223 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 3
  store i32 %221, i32* %223, align 8
  %224 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 10
  store i32 %225, i32* %226, align 4
  %227 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 8
  store i32 %225, i32* %227, align 4
  %228 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 6
  store i32 0, i32* %228, align 4
  br label %238

229:                                              ; preds = %215
  %230 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 5
  store i32 %231, i32* %232, align 8
  %233 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 3
  store i32 %231, i32* %233, align 8
  %234 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 10
  store i32 %235, i32* %236, align 4
  %237 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 8
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %229, %219
  %239 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 0
  %240 = load %struct.netbox*, %struct.netbox** %239, align 8
  br label %243

241:                                              ; preds = %214
  %242 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 0
  br label %207

243:                                              ; preds = %238, %209
  %.17 = phi %struct.netbox* [ %.06, %209 ], [ %240, %238 ]
  br label %244

244:                                              ; preds = %292, %243
  %.2 = phi %struct.netbox* [ %.17, %243 ], [ %294, %292 ]
  %.not31 = icmp eq %struct.netbox* %.2, null
  br i1 %.not31, label %295, label %245

245:                                              ; preds = %244
  %246 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 9
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  br label %292

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 6
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 6
  store i32 0, i32* %259, align 4
  br label %265

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 2
  %264 = load i32, i32* %263, align 4
  br label %265

265:                                              ; preds = %260, %254
  %.02 = phi i32 [ %256, %254 ], [ %262, %260 ]
  %.01 = phi i32 [ %258, %254 ], [ %264, %260 ]
  %266 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %.02, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 3
  store i32 %.02, i32* %270, align 8
  br label %278

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = icmp sgt i32 %.02, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 5
  store i32 %.02, i32* %276, align 8
  br label %277

277:                                              ; preds = %275, %271
  br label %278

278:                                              ; preds = %277, %269
  %279 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 8
  %280 = load i32, i32* %279, align 4
  %281 = icmp slt i32 %.01, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 8
  store i32 %.01, i32* %283, align 4
  br label %291

284:                                              ; preds = %278
  %285 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 10
  %286 = load i32, i32* %285, align 4
  %287 = icmp sgt i32 %.01, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 10
  store i32 %.01, i32* %289, align 4
  br label %290

290:                                              ; preds = %288, %284
  br label %291

291:                                              ; preds = %290, %282
  br label %292

292:                                              ; preds = %291, %249
  %293 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 0
  %294 = load %struct.netbox*, %struct.netbox** %293, align 8
  br label %244, !llvm.loop !10

295:                                              ; preds = %244
  %296 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 11
  %297 = load double, double* %296, align 8
  %298 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 5
  %299 = load i32, i32* %298, align 8
  %300 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = sub nsw i32 %299, %301
  %303 = sitofp i32 %302 to double
  %304 = fmul double %297, %303
  %305 = fptosi double %304 to i32
  %306 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 11
  %307 = load double, double* %306, align 8
  %308 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = sub nsw i32 %309, %311
  %313 = sitofp i32 %312 to double
  %314 = fmul double %307, %313
  %315 = fptosi double %314 to i32
  %316 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 12
  %317 = load double, double* %316, align 8
  %318 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 10
  %319 = load i32, i32* %318, align 4
  %320 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 8
  %321 = load i32, i32* %320, align 4
  %322 = sub nsw i32 %319, %321
  %323 = sitofp i32 %322 to double
  %324 = fmul double %317, %323
  %325 = fptosi double %324 to i32
  %326 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 12
  %327 = load double, double* %326, align 8
  %328 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 9
  %329 = load i32, i32* %328, align 8
  %330 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %195, i64 0, i32 6
  %331 = load i32, i32* %330, align 4
  %332 = sub nsw i32 %329, %331
  %333 = sitofp i32 %332 to double
  %334 = fmul double %327, %333
  %335 = fptosi double %334 to i32
  %336 = add i32 %305, %325
  %337 = add i32 %315, %335
  %338 = sub i32 %336, %337
  %339 = add nsw i32 %.011, %338
  br label %340

340:                                              ; preds = %295, %203
  %.112 = phi i32 [ %.011, %203 ], [ %339, %295 ]
  %341 = add nsw i32 %.322, 1
  br label %179, !llvm.loop !11

342:                                              ; preds = %179
  %343 = add nsw i32 %.011, %.3
  %344 = load i32, i32* @funccost, align 4
  %345 = load i32, i32* @overfill, align 4
  %346 = add nsw i32 %344, %345
  %.not28 = icmp sgt i32 %343, %346
  br i1 %.not28, label %347, label %364

347:                                              ; preds = %342
  %348 = load i32, i32* @funccost, align 4
  %349 = load i32, i32* @overfill, align 4
  %350 = add nsw i32 %348, %349
  %351 = add i32 %.011, %.3
  %352 = sub i32 %350, %351
  %353 = sitofp i32 %352 to double
  %354 = load double, double* @T, align 8
  %355 = fdiv double %353, %354
  %356 = call double @exp(double noundef %355) #2
  %357 = load i32, i32* @randVar, align 4
  %358 = mul nsw i32 %357, 1103515245
  %359 = add nsw i32 %358, 12345
  store i32 %359, i32* @randVar, align 4
  %360 = and i32 %359, 2147483647
  %361 = sitofp i32 %360 to double
  %362 = fdiv double %361, 0x41DFFFFFFFC00000
  %363 = fcmp ogt double %356, %362
  br i1 %363, label %364, label %447

364:                                              ; preds = %347, %342
  br label %365

365:                                              ; preds = %404, %364
  %.423 = phi i32 [ %1, %364 ], [ %405, %404 ]
  %366 = add nsw i32 %1, %2
  %367 = icmp slt i32 %.423, %366
  br i1 %367, label %368, label %406

368:                                              ; preds = %365
  %369 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %370 = sext i32 %.423 to i64
  %371 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %370, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.termnets*, %struct.termnets** %369, i64 %373
  %375 = load %struct.termnets*, %struct.termnets** %374, align 8
  %376 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %377 = getelementptr inbounds %struct.termnets, %struct.termnets* %375, i64 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %376, i64 %379
  %381 = load %struct.dimbox*, %struct.dimbox** %380, align 8
  %382 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %381, i64 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %381, i64 0, i32 2
  store i32 %383, i32* %384, align 4
  %385 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %381, i64 0, i32 5
  %386 = load i32, i32* %385, align 8
  %387 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %381, i64 0, i32 4
  store i32 %386, i32* %387, align 4
  %388 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %381, i64 0, i32 8
  %389 = load i32, i32* %388, align 4
  %390 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %381, i64 0, i32 6
  store i32 %389, i32* %390, align 4
  %391 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %381, i64 0, i32 10
  %392 = load i32, i32* %391, align 4
  %393 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %381, i64 0, i32 9
  store i32 %392, i32* %393, align 8
  %394 = getelementptr inbounds %struct.termnets, %struct.termnets* %375, i64 0, i32 1
  %395 = load %struct.netbox*, %struct.netbox** %394, align 8
  %396 = getelementptr inbounds %struct.netbox, %struct.netbox* %395, i64 0, i32 3
  %397 = load i32, i32* %396, align 8
  %398 = getelementptr inbounds %struct.netbox, %struct.netbox* %395, i64 0, i32 1
  store i32 %397, i32* %398, align 8
  %399 = getelementptr inbounds %struct.termnets, %struct.termnets* %375, i64 0, i32 1
  %400 = load %struct.netbox*, %struct.netbox** %399, align 8
  %401 = getelementptr inbounds %struct.netbox, %struct.netbox* %400, i64 0, i32 4
  %402 = load i32, i32* %401, align 4
  %403 = getelementptr inbounds %struct.netbox, %struct.netbox* %400, i64 0, i32 2
  store i32 %402, i32* %403, align 4
  br label %404

404:                                              ; preds = %368
  %405 = add nsw i32 %.423, 1
  br label %365, !llvm.loop !12

406:                                              ; preds = %365
  br label %407

407:                                              ; preds = %414, %406
  %.417 = phi i32 [ %3, %406 ], [ %415, %414 ]
  %.not29 = icmp sgt i32 %.417, %4
  br i1 %.not29, label %416, label %408

408:                                              ; preds = %407
  %409 = sext i32 %.417 to i64
  %410 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %409, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %.417 to i64
  %413 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %412, i32 0
  store i32 %411, i32* %413, align 4
  br label %414

414:                                              ; preds = %408
  %415 = add nsw i32 %.417, 1
  br label %407, !llvm.loop !13

416:                                              ; preds = %407
  %417 = sext i32 %1 to i64
  %418 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %417, i32 1
  %419 = load i32, i32* %418, align 4
  br label %420

420:                                              ; preds = %432, %416
  %.518 = phi i32 [ %419, %416 ], [ %433, %432 ]
  %421 = add nsw i32 %1, %2
  %422 = add nsw i32 %421, -1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %423, i32 1
  %425 = load i32, i32* %424, align 4
  %.not30 = icmp sgt i32 %.518, %425
  br i1 %.not30, label %434, label %426

426:                                              ; preds = %420
  %427 = sext i32 %.518 to i64
  %428 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %427, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %.518 to i64
  %431 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %20, i64 %430, i32 0
  store i32 %429, i32* %431, align 4
  br label %432

432:                                              ; preds = %426
  %433 = add nsw i32 %.518, 1
  br label %420, !llvm.loop !14

434:                                              ; preds = %420
  br label %435

435:                                              ; preds = %444, %434
  %.524 = phi i32 [ %1, %434 ], [ %445, %444 ]
  %436 = add nsw i32 %1, %2
  %437 = icmp slt i32 %.524, %436
  br i1 %437, label %438, label %446

438:                                              ; preds = %435
  %439 = sext i32 %.524 to i64
  %440 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %439, i32 2
  %441 = load i32, i32* %440, align 4
  %442 = sext i32 %.524 to i64
  %443 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %18, i64 %442, i32 1
  store i32 %441, i32* %443, align 4
  br label %444

444:                                              ; preds = %438
  %445 = add nsw i32 %.524, 1
  br label %435, !llvm.loop !15

446:                                              ; preds = %435
  store i32 %.011, i32* @funccost, align 4
  store i32 %.3, i32* @overfill, align 4
  br label %448

447:                                              ; preds = %347
  br label %448

448:                                              ; preds = %447, %446
  %.0 = phi i32 [ 1, %446 ], [ 0, %447 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

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
