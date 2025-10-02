; ModuleID = './goverlap.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/goverlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@cellarray = external dso_local global %struct.cellbox**, align 8
@numcells = external dso_local global i32, align 4
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

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @goverlap(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
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
  %27 = load i32, i32* @numcells, align 4
  %.not = icmp slt i32 %27, %0
  br i1 %.not, label %41, label %28

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %17, %30
  %32 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %20, %33
  %35 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %23, %36
  %38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %26, %39
  br label %41

41:                                               ; preds = %28, %7
  %.018 = phi i32 [ %40, %28 ], [ %26, %7 ]
  %.017 = phi i32 [ %37, %28 ], [ %23, %7 ]
  %.016 = phi i32 [ %34, %28 ], [ %20, %7 ]
  %.015 = phi i32 [ %31, %28 ], [ %17, %7 ]
  %42 = load i32, i32* @binOffsetX, align 4
  %43 = sub nsw i32 %.015, %42
  %44 = load i32, i32* @binWidthX, align 4
  %45 = sdiv i32 %43, %44
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @numBinsX, align 4
  %50 = icmp sgt i32 %45, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @numBinsX, align 4
  br label %53

53:                                               ; preds = %51, %48
  %.05 = phi i32 [ %52, %51 ], [ %45, %48 ]
  br label %54

54:                                               ; preds = %53, %47
  %.16 = phi i32 [ 1, %47 ], [ %.05, %53 ]
  %55 = load i32, i32* @binOffsetX, align 4
  %56 = sub nsw i32 %.016, %55
  %57 = load i32, i32* @binWidthX, align 4
  %58 = sdiv i32 %56, %57
  %59 = load i32, i32* @numBinsX, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @numBinsX, align 4
  br label %67

63:                                               ; preds = %54
  %64 = icmp slt i32 %58, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %63
  %.03 = phi i32 [ 1, %65 ], [ %58, %63 ]
  br label %67

67:                                               ; preds = %66, %61
  %.14 = phi i32 [ %62, %61 ], [ %.03, %66 ]
  %68 = load i32, i32* @binOffsetY, align 4
  %69 = sub nsw i32 %.017, %68
  %70 = load i32, i32* @binWidthY, align 4
  %71 = sdiv i32 %69, %70
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @numBinsY, align 4
  %76 = icmp sgt i32 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @numBinsY, align 4
  br label %79

79:                                               ; preds = %77, %74
  %.01 = phi i32 [ %78, %77 ], [ %71, %74 ]
  br label %80

80:                                               ; preds = %79, %73
  %.12 = phi i32 [ 1, %73 ], [ %.01, %79 ]
  %81 = load i32, i32* @binOffsetY, align 4
  %82 = sub nsw i32 %.018, %81
  %83 = load i32, i32* @binWidthY, align 4
  %84 = sdiv i32 %82, %83
  %85 = load i32, i32* @numBinsY, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @numBinsY, align 4
  br label %93

89:                                               ; preds = %80
  %90 = icmp slt i32 %84, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %91, %89
  %.0 = phi i32 [ 1, %91 ], [ %84, %89 ]
  br label %93

93:                                               ; preds = %92, %87
  %.1 = phi i32 [ %88, %87 ], [ %.0, %92 ]
  %94 = icmp eq i32 %.16, %.14
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = icmp eq i32 %.12, %.1
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  br label %99

98:                                               ; preds = %95, %93
  br label %99

99:                                               ; preds = %98, %97
  %storemerge36 = phi i32 [ 0, %98 ], [ %.16, %97 ]
  %storemerge = phi i32 [ 0, %98 ], [ %.12, %97 ]
  store i32 %storemerge36, i32* @binX, align 4
  store i32 %storemerge, i32* @binY, align 4
  br label %100

100:                                              ; preds = %314, %99
  %.023 = phi i32 [ 0, %99 ], [ %.7, %314 ]
  %.09 = phi i32 [ 0, %99 ], [ %315, %314 ]
  %.not37 = icmp sgt i32 %.09, %.14
  br i1 %.not37, label %316, label %101

101:                                              ; preds = %100
  %102 = icmp eq i32 %.09, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %101
  %.not38 = icmp slt i32 %.09, %.16
  br i1 %.not38, label %104, label %105

104:                                              ; preds = %103
  br label %314

105:                                              ; preds = %103, %101
  br label %106

106:                                              ; preds = %311, %105
  %.124 = phi i32 [ %.023, %105 ], [ %.6, %311 ]
  %.08 = phi i32 [ 0, %105 ], [ %312, %311 ]
  %.not39 = icmp sgt i32 %.08, %.1
  br i1 %.not39, label %313, label %107

107:                                              ; preds = %106
  %108 = icmp eq i32 %.09, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = icmp eq i32 %.08, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %109, %107
  %.not40 = icmp eq i32 %.09, 0
  br i1 %.not40, label %113, label %112

112:                                              ; preds = %111
  %.not41 = icmp slt i32 %.08, %.12
  br i1 %.not41, label %113, label %114

113:                                              ; preds = %112, %111
  br label %311

114:                                              ; preds = %112, %109
  %115 = load i32***, i32**** @blockarray, align 8
  %116 = zext i32 %.09 to i64
  %117 = getelementptr inbounds i32**, i32*** %115, i64 %116
  %118 = load i32**, i32*** %117, align 8
  %119 = zext i32 %.08 to i64
  %120 = getelementptr inbounds i32*, i32** %118, i64 %119
  %121 = load i32*, i32** %120, align 8
  br label %122

122:                                              ; preds = %308, %114
  %.2 = phi i32 [ %.124, %114 ], [ %.5, %308 ]
  %.07 = phi i32 [ 1, %114 ], [ %309, %308 ]
  %123 = load i32, i32* %121, align 4
  %.not42 = icmp sgt i32 %.07, %123
  br i1 %.not42, label %310, label %124

124:                                              ; preds = %122
  %125 = zext i32 %.07 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, %0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %308

130:                                              ; preds = %124
  %131 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %132 = sext i32 %127 to i64
  %133 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %131, i64 %132
  %134 = load %struct.cellbox*, %struct.cellbox** %133, align 8
  %.not43 = icmp eq i32 %127, %4
  br i1 %.not43, label %138, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %134, i64 0, i32 5
  %137 = load i32, i32* %136, align 8
  br label %143

138:                                              ; preds = %130
  %139 = icmp eq i32 %5, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %138
  br label %142

141:                                              ; preds = %138
  br label %308

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142, %135
  %.pn66.in = phi i32 [ %137, %135 ], [ %6, %142 ]
  %.pn67 = phi %struct.cellbox* [ %134, %135 ], [ %11, %142 ]
  %.010.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %.pn67, i64 0, i32 3
  %.011.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %.pn67, i64 0, i32 2
  %.pn66 = sext i32 %.pn66.in to i64
  %.014.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %134, i64 0, i32 21, i64 %.pn66
  %.010 = load i32, i32* %.010.in, align 8
  %.011 = load i32, i32* %.011.in, align 4
  %.014 = load %struct.tilebox*, %struct.tilebox** %.014.in, align 8
  %144 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 9
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %.011, %145
  %147 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %.011, %148
  %150 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 11
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %.010, %151
  %153 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 12
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %.010, %154
  %156 = load i32, i32* @numcells, align 4
  %.not44 = icmp sgt i32 %127, %156
  br i1 %.not44, label %170, label %157

157:                                              ; preds = %143
  %158 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %146, %159
  %161 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %149, %162
  %164 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %152, %165
  %167 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %155, %168
  br label %170

170:                                              ; preds = %157, %143
  %.022 = phi i32 [ %169, %157 ], [ %155, %143 ]
  %.021 = phi i32 [ %166, %157 ], [ %152, %143 ]
  %.020 = phi i32 [ %163, %157 ], [ %149, %143 ]
  %.019 = phi i32 [ %160, %157 ], [ %146, %143 ]
  %.not45 = icmp slt i32 %.019, %.016
  br i1 %.not45, label %171, label %174

171:                                              ; preds = %170
  %.not46 = icmp slt i32 %.015, %.020
  br i1 %.not46, label %172, label %174

172:                                              ; preds = %171
  %.not47 = icmp slt i32 %.021, %.018
  br i1 %.not47, label %173, label %174

173:                                              ; preds = %172
  %.not48 = icmp slt i32 %.017, %.022
  br i1 %.not48, label %175, label %174

174:                                              ; preds = %173, %172, %171, %170
  br label %308

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %210

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %134, i64 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %210

183:                                              ; preds = %179
  %.not62 = icmp slt i32 %.015, %.019
  br i1 %.not62, label %185, label %184

184:                                              ; preds = %183
  br label %186

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %185, %184
  %187 = phi i32 [ %.015, %184 ], [ %.019, %185 ]
  %.not63 = icmp sgt i32 %.016, %.020
  br i1 %.not63, label %189, label %188

188:                                              ; preds = %186
  br label %190

189:                                              ; preds = %186
  br label %190

190:                                              ; preds = %189, %188
  %191 = phi i32 [ %.016, %188 ], [ %.020, %189 ]
  %.not64 = icmp slt i32 %.017, %.021
  br i1 %.not64, label %193, label %192

192:                                              ; preds = %190
  br label %194

193:                                              ; preds = %190
  br label %194

194:                                              ; preds = %193, %192
  %195 = phi i32 [ %.017, %192 ], [ %.021, %193 ]
  %.not65 = icmp sgt i32 %.018, %.022
  br i1 %.not65, label %197, label %196

196:                                              ; preds = %194
  br label %198

197:                                              ; preds = %194
  br label %198

198:                                              ; preds = %197, %196
  %199 = phi i32 [ %.018, %196 ], [ %.022, %197 ]
  %200 = load double, double* @lapFactor, align 8
  %201 = sub nsw i32 %199, %195
  %202 = sub nsw i32 %191, %187
  %203 = mul nsw i32 %201, %202
  %204 = load i32, i32* @offset, align 4
  %205 = add nsw i32 %203, %204
  %206 = sitofp i32 %205 to double
  %207 = fmul double %200, %206
  %208 = fptosi double %207 to i32
  %209 = add nsw i32 %.2, %208
  br label %307

210:                                              ; preds = %179, %175
  br label %211

211:                                              ; preds = %296, %210
  %.025 = phi i32 [ 0, %210 ], [ %.126, %296 ]
  %.pn = phi %struct.tilebox* [ %14, %210 ], [ %.012, %296 ]
  %.012.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.012 = load %struct.tilebox*, %struct.tilebox** %.012.in, align 8
  %.not49 = icmp eq %struct.tilebox* %.012, null
  br i1 %.not49, label %297, label %212

212:                                              ; preds = %211
  %213 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 9
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, %1
  %216 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 10
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, %1
  %219 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 11
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, %2
  %222 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 12
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, %2
  %225 = load i32, i32* @numcells, align 4
  %.not51 = icmp slt i32 %225, %0
  br i1 %.not51, label %239, label %226

226:                                              ; preds = %212
  %227 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 5
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %215, %228
  %230 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 6
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %218, %231
  %233 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 7
  %234 = load i32, i32* %233, align 8
  %235 = sub nsw i32 %221, %234
  %236 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 8
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %224, %237
  br label %239

239:                                              ; preds = %226, %212
  %.031 = phi i32 [ %238, %226 ], [ %224, %212 ]
  %.030 = phi i32 [ %235, %226 ], [ %221, %212 ]
  %.029 = phi i32 [ %232, %226 ], [ %218, %212 ]
  %.028 = phi i32 [ %229, %226 ], [ %215, %212 ]
  br label %240

240:                                              ; preds = %294, %239
  %.126 = phi i32 [ %.025, %239 ], [ %.227, %294 ]
  %.014.pn = phi %struct.tilebox* [ %.014, %239 ], [ %.013, %294 ]
  %.013.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014.pn, i64 0, i32 0
  %.013 = load %struct.tilebox*, %struct.tilebox** %.013.in, align 8
  %.not52 = icmp eq %struct.tilebox* %.013, null
  br i1 %.not52, label %295, label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 9
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %.011, %243
  %245 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 10
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %.011, %246
  %248 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 11
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %.010, %249
  %251 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 12
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %.010, %252
  %254 = load i32, i32* @numcells, align 4
  %.not53 = icmp sgt i32 %127, %254
  br i1 %.not53, label %268, label %255

255:                                              ; preds = %241
  %256 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = sub nsw i32 %244, %257
  %259 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 6
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %247, %260
  %262 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 7
  %263 = load i32, i32* %262, align 8
  %264 = sub nsw i32 %250, %263
  %265 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 8
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %253, %266
  br label %268

268:                                              ; preds = %255, %241
  %.035 = phi i32 [ %267, %255 ], [ %253, %241 ]
  %.034 = phi i32 [ %264, %255 ], [ %250, %241 ]
  %.033 = phi i32 [ %261, %255 ], [ %247, %241 ]
  %.032 = phi i32 [ %258, %255 ], [ %244, %241 ]
  %.not54 = icmp slt i32 %.032, %.029
  br i1 %.not54, label %269, label %272

269:                                              ; preds = %268
  %.not55 = icmp slt i32 %.028, %.033
  br i1 %.not55, label %270, label %272

270:                                              ; preds = %269
  %.not56 = icmp slt i32 %.034, %.031
  br i1 %.not56, label %271, label %272

271:                                              ; preds = %270
  %.not57 = icmp slt i32 %.030, %.035
  br i1 %.not57, label %273, label %272

272:                                              ; preds = %271, %270, %269, %268
  br label %294

273:                                              ; preds = %271
  %.not58 = icmp slt i32 %.028, %.032
  br i1 %.not58, label %275, label %274

274:                                              ; preds = %273
  br label %276

275:                                              ; preds = %273
  br label %276

276:                                              ; preds = %275, %274
  %277 = phi i32 [ %.028, %274 ], [ %.032, %275 ]
  %.not59 = icmp sgt i32 %.029, %.033
  br i1 %.not59, label %279, label %278

278:                                              ; preds = %276
  br label %280

279:                                              ; preds = %276
  br label %280

280:                                              ; preds = %279, %278
  %281 = phi i32 [ %.029, %278 ], [ %.033, %279 ]
  %.not60 = icmp slt i32 %.030, %.034
  br i1 %.not60, label %283, label %282

282:                                              ; preds = %280
  br label %284

283:                                              ; preds = %280
  br label %284

284:                                              ; preds = %283, %282
  %285 = phi i32 [ %.030, %282 ], [ %.034, %283 ]
  %.not61 = icmp sgt i32 %.031, %.035
  br i1 %.not61, label %287, label %286

286:                                              ; preds = %284
  br label %288

287:                                              ; preds = %284
  br label %288

288:                                              ; preds = %287, %286
  %289 = phi i32 [ %.031, %286 ], [ %.035, %287 ]
  %290 = sub nsw i32 %289, %285
  %291 = sub nsw i32 %281, %277
  %292 = mul nsw i32 %290, %291
  %293 = add nsw i32 %.126, %292
  br label %294

294:                                              ; preds = %288, %272
  %.227 = phi i32 [ %.126, %272 ], [ %293, %288 ]
  br label %240, !llvm.loop !4

295:                                              ; preds = %240
  br label %296

296:                                              ; preds = %295
  br label %211, !llvm.loop !6

297:                                              ; preds = %211
  %.not50 = icmp eq i32 %.025, 0
  br i1 %.not50, label %306, label %298

298:                                              ; preds = %297
  %299 = load double, double* @lapFactor, align 8
  %300 = load i32, i32* @offset, align 4
  %301 = add nsw i32 %.025, %300
  %302 = sitofp i32 %301 to double
  %303 = fmul double %299, %302
  %304 = fptosi double %303 to i32
  %305 = add nsw i32 %.2, %304
  br label %306

306:                                              ; preds = %298, %297
  %.3 = phi i32 [ %305, %298 ], [ %.2, %297 ]
  br label %307

307:                                              ; preds = %306, %198
  %.4 = phi i32 [ %209, %198 ], [ %.3, %306 ]
  br label %308

308:                                              ; preds = %307, %174, %141, %129
  %.5 = phi i32 [ %.2, %129 ], [ %.2, %174 ], [ %.4, %307 ], [ %.2, %141 ]
  %309 = add nuw nsw i32 %.07, 1
  br label %122, !llvm.loop !7

310:                                              ; preds = %122
  br label %311

311:                                              ; preds = %310, %113
  %.6 = phi i32 [ %.2, %310 ], [ %.124, %113 ]
  %312 = add nuw nsw i32 %.08, 1
  br label %106, !llvm.loop !8

313:                                              ; preds = %106
  br label %314

314:                                              ; preds = %313, %104
  %.7 = phi i32 [ %.124, %313 ], [ %.023, %104 ]
  %315 = add nuw nsw i32 %.09, 1
  br label %100, !llvm.loop !9

316:                                              ; preds = %100
  ret i32 %.023
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
