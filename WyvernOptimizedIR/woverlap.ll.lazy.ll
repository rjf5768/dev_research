; ModuleID = './woverlap.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/woverlap.c"
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @woverlap(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
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
  br i1 %.not, label %45, label %28

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = call i32 @wireestx(i32 noundef %17, i32 noundef %23, i32 noundef %26, double noundef %30) #2
  %32 = sub nsw i32 %17, %31
  %33 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 2
  %34 = load double, double* %33, align 8
  %35 = call i32 @wireestx(i32 noundef %20, i32 noundef %23, i32 noundef %26, double noundef %34) #2
  %36 = add nsw i32 %20, %35
  %37 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 3
  %38 = load double, double* %37, align 8
  %39 = call i32 @wireesty(i32 noundef %23, i32 noundef %32, i32 noundef %36, double noundef %38) #2
  %40 = sub nsw i32 %23, %39
  %41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 4
  %42 = load double, double* %41, align 8
  %43 = call i32 @wireesty(i32 noundef %26, i32 noundef %32, i32 noundef %36, double noundef %42) #2
  %44 = add nsw i32 %26, %43
  br label %45

45:                                               ; preds = %28, %7
  %.018 = phi i32 [ %44, %28 ], [ %26, %7 ]
  %.017 = phi i32 [ %40, %28 ], [ %23, %7 ]
  %.016 = phi i32 [ %36, %28 ], [ %20, %7 ]
  %.015 = phi i32 [ %32, %28 ], [ %17, %7 ]
  %46 = load i32, i32* @binOffsetX, align 4
  %47 = sub nsw i32 %.015, %46
  %48 = load i32, i32* @binWidthX, align 4
  %49 = sdiv i32 %47, %48
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @numBinsX, align 4
  %54 = icmp sgt i32 %49, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @numBinsX, align 4
  br label %57

57:                                               ; preds = %55, %52
  %.05 = phi i32 [ %56, %55 ], [ %49, %52 ]
  br label %58

58:                                               ; preds = %57, %51
  %.16 = phi i32 [ 1, %51 ], [ %.05, %57 ]
  %59 = load i32, i32* @binOffsetX, align 4
  %60 = sub nsw i32 %.016, %59
  %61 = load i32, i32* @binWidthX, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32, i32* @numBinsX, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @numBinsX, align 4
  br label %71

67:                                               ; preds = %58
  %68 = icmp slt i32 %62, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %67
  %.03 = phi i32 [ 1, %69 ], [ %62, %67 ]
  br label %71

71:                                               ; preds = %70, %65
  %.14 = phi i32 [ %66, %65 ], [ %.03, %70 ]
  %72 = load i32, i32* @binOffsetY, align 4
  %73 = sub nsw i32 %.017, %72
  %74 = load i32, i32* @binWidthY, align 4
  %75 = sdiv i32 %73, %74
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @numBinsY, align 4
  %80 = icmp sgt i32 %75, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @numBinsY, align 4
  br label %83

83:                                               ; preds = %81, %78
  %.01 = phi i32 [ %82, %81 ], [ %75, %78 ]
  br label %84

84:                                               ; preds = %83, %77
  %.12 = phi i32 [ 1, %77 ], [ %.01, %83 ]
  %85 = load i32, i32* @binOffsetY, align 4
  %86 = sub nsw i32 %.018, %85
  %87 = load i32, i32* @binWidthY, align 4
  %88 = sdiv i32 %86, %87
  %89 = load i32, i32* @numBinsY, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @numBinsY, align 4
  br label %97

93:                                               ; preds = %84
  %94 = icmp slt i32 %88, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %93
  %.0 = phi i32 [ 1, %95 ], [ %88, %93 ]
  br label %97

97:                                               ; preds = %96, %91
  %.1 = phi i32 [ %92, %91 ], [ %.0, %96 ]
  %98 = icmp eq i32 %.16, %.14
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = icmp eq i32 %.12, %.1
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  br label %103

102:                                              ; preds = %99, %97
  br label %103

103:                                              ; preds = %102, %101
  %storemerge36 = phi i32 [ 0, %102 ], [ %.16, %101 ]
  %storemerge = phi i32 [ 0, %102 ], [ %.12, %101 ]
  store i32 %storemerge36, i32* @binX, align 4
  store i32 %storemerge, i32* @binY, align 4
  br label %104

104:                                              ; preds = %330, %103
  %.023 = phi i32 [ 0, %103 ], [ %.7, %330 ]
  %.09 = phi i32 [ 0, %103 ], [ %331, %330 ]
  %.not37 = icmp sgt i32 %.09, %.14
  br i1 %.not37, label %332, label %105

105:                                              ; preds = %104
  %106 = icmp eq i32 %.09, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %105
  %.not38 = icmp slt i32 %.09, %.16
  br i1 %.not38, label %108, label %109

108:                                              ; preds = %107
  br label %330

109:                                              ; preds = %107, %105
  br label %110

110:                                              ; preds = %327, %109
  %.124 = phi i32 [ %.023, %109 ], [ %.6, %327 ]
  %.08 = phi i32 [ 0, %109 ], [ %328, %327 ]
  %.not39 = icmp sgt i32 %.08, %.1
  br i1 %.not39, label %329, label %111

111:                                              ; preds = %110
  %112 = icmp eq i32 %.09, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %111
  %114 = icmp eq i32 %.08, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %113, %111
  %.not40 = icmp eq i32 %.09, 0
  br i1 %.not40, label %117, label %116

116:                                              ; preds = %115
  %.not41 = icmp slt i32 %.08, %.12
  br i1 %.not41, label %117, label %118

117:                                              ; preds = %116, %115
  br label %327

118:                                              ; preds = %116, %113
  %119 = load i32***, i32**** @blockarray, align 8
  %120 = zext i32 %.09 to i64
  %121 = getelementptr inbounds i32**, i32*** %119, i64 %120
  %122 = load i32**, i32*** %121, align 8
  %123 = zext i32 %.08 to i64
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  br label %126

126:                                              ; preds = %324, %118
  %.2 = phi i32 [ %.124, %118 ], [ %.5, %324 ]
  %.07 = phi i32 [ 1, %118 ], [ %325, %324 ]
  %127 = load i32, i32* %125, align 4
  %.not42 = icmp sgt i32 %.07, %127
  br i1 %.not42, label %326, label %128

128:                                              ; preds = %126
  %129 = zext i32 %.07 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, %0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %324

134:                                              ; preds = %128
  %135 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %136 = sext i32 %131 to i64
  %137 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %135, i64 %136
  %138 = load %struct.cellbox*, %struct.cellbox** %137, align 8
  %.not43 = icmp eq i32 %131, %4
  br i1 %.not43, label %142, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %138, i64 0, i32 5
  %141 = load i32, i32* %140, align 8
  br label %147

142:                                              ; preds = %134
  %143 = icmp eq i32 %5, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %142
  br label %146

145:                                              ; preds = %142
  br label %324

146:                                              ; preds = %144
  br label %147

147:                                              ; preds = %146, %139
  %.pn66.in = phi i32 [ %141, %139 ], [ %6, %146 ]
  %.pn67 = phi %struct.cellbox* [ %138, %139 ], [ %11, %146 ]
  %.010.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %.pn67, i64 0, i32 3
  %.011.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %.pn67, i64 0, i32 2
  %.pn66 = sext i32 %.pn66.in to i64
  %.014.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %138, i64 0, i32 21, i64 %.pn66
  %.010 = load i32, i32* %.010.in, align 8
  %.011 = load i32, i32* %.011.in, align 4
  %.014 = load %struct.tilebox*, %struct.tilebox** %.014.in, align 8
  %148 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 9
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %.011, %149
  %151 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 10
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %.011, %152
  %154 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 11
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %.010, %155
  %157 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 12
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %.010, %158
  %160 = load i32, i32* @numcells, align 4
  %.not44 = icmp sgt i32 %131, %160
  br i1 %.not44, label %178, label %161

161:                                              ; preds = %147
  %162 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 1
  %163 = load double, double* %162, align 8
  %164 = call i32 @wireestx(i32 noundef %150, i32 noundef %156, i32 noundef %159, double noundef %163) #2
  %165 = sub nsw i32 %150, %164
  %166 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 2
  %167 = load double, double* %166, align 8
  %168 = call i32 @wireestx(i32 noundef %153, i32 noundef %156, i32 noundef %159, double noundef %167) #2
  %169 = add nsw i32 %153, %168
  %170 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 3
  %171 = load double, double* %170, align 8
  %172 = call i32 @wireesty(i32 noundef %156, i32 noundef %165, i32 noundef %169, double noundef %171) #2
  %173 = sub nsw i32 %156, %172
  %174 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 4
  %175 = load double, double* %174, align 8
  %176 = call i32 @wireesty(i32 noundef %159, i32 noundef %165, i32 noundef %169, double noundef %175) #2
  %177 = add nsw i32 %159, %176
  br label %178

178:                                              ; preds = %161, %147
  %.022 = phi i32 [ %177, %161 ], [ %159, %147 ]
  %.021 = phi i32 [ %173, %161 ], [ %156, %147 ]
  %.020 = phi i32 [ %169, %161 ], [ %153, %147 ]
  %.019 = phi i32 [ %165, %161 ], [ %150, %147 ]
  %.not45 = icmp slt i32 %.019, %.016
  br i1 %.not45, label %179, label %182

179:                                              ; preds = %178
  %.not46 = icmp slt i32 %.015, %.020
  br i1 %.not46, label %180, label %182

180:                                              ; preds = %179
  %.not47 = icmp slt i32 %.021, %.018
  br i1 %.not47, label %181, label %182

181:                                              ; preds = %180
  %.not48 = icmp slt i32 %.017, %.022
  br i1 %.not48, label %183, label %182

182:                                              ; preds = %181, %180, %179, %178
  br label %324

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %218

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %138, i64 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %218

191:                                              ; preds = %187
  %.not62 = icmp slt i32 %.015, %.019
  br i1 %.not62, label %193, label %192

192:                                              ; preds = %191
  br label %194

193:                                              ; preds = %191
  br label %194

194:                                              ; preds = %193, %192
  %195 = phi i32 [ %.015, %192 ], [ %.019, %193 ]
  %.not63 = icmp sgt i32 %.016, %.020
  br i1 %.not63, label %197, label %196

196:                                              ; preds = %194
  br label %198

197:                                              ; preds = %194
  br label %198

198:                                              ; preds = %197, %196
  %199 = phi i32 [ %.016, %196 ], [ %.020, %197 ]
  %.not64 = icmp slt i32 %.017, %.021
  br i1 %.not64, label %201, label %200

200:                                              ; preds = %198
  br label %202

201:                                              ; preds = %198
  br label %202

202:                                              ; preds = %201, %200
  %203 = phi i32 [ %.017, %200 ], [ %.021, %201 ]
  %.not65 = icmp sgt i32 %.018, %.022
  br i1 %.not65, label %205, label %204

204:                                              ; preds = %202
  br label %206

205:                                              ; preds = %202
  br label %206

206:                                              ; preds = %205, %204
  %207 = phi i32 [ %.018, %204 ], [ %.022, %205 ]
  %208 = load double, double* @lapFactor, align 8
  %209 = sub nsw i32 %207, %203
  %210 = sub nsw i32 %199, %195
  %211 = mul nsw i32 %209, %210
  %212 = load i32, i32* @offset, align 4
  %213 = add nsw i32 %211, %212
  %214 = sitofp i32 %213 to double
  %215 = fmul double %208, %214
  %216 = fptosi double %215 to i32
  %217 = add nsw i32 %.2, %216
  br label %323

218:                                              ; preds = %187, %183
  br label %219

219:                                              ; preds = %312, %218
  %.025 = phi i32 [ 0, %218 ], [ %.126, %312 ]
  %.pn = phi %struct.tilebox* [ %14, %218 ], [ %.012, %312 ]
  %.012.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.012 = load %struct.tilebox*, %struct.tilebox** %.012.in, align 8
  %.not49 = icmp eq %struct.tilebox* %.012, null
  br i1 %.not49, label %313, label %220

220:                                              ; preds = %219
  %221 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 9
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, %1
  %224 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 10
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, %1
  %227 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 11
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, %2
  %230 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 12
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, %2
  %233 = load i32, i32* @numcells, align 4
  %.not51 = icmp slt i32 %233, %0
  br i1 %.not51, label %251, label %234

234:                                              ; preds = %220
  %235 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 1
  %236 = load double, double* %235, align 8
  %237 = call i32 @wireestx(i32 noundef %223, i32 noundef %229, i32 noundef %232, double noundef %236) #2
  %238 = sub nsw i32 %223, %237
  %239 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 2
  %240 = load double, double* %239, align 8
  %241 = call i32 @wireestx(i32 noundef %226, i32 noundef %229, i32 noundef %232, double noundef %240) #2
  %242 = add nsw i32 %226, %241
  %243 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 3
  %244 = load double, double* %243, align 8
  %245 = call i32 @wireesty(i32 noundef %229, i32 noundef %238, i32 noundef %242, double noundef %244) #2
  %246 = sub nsw i32 %229, %245
  %247 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 4
  %248 = load double, double* %247, align 8
  %249 = call i32 @wireesty(i32 noundef %232, i32 noundef %238, i32 noundef %242, double noundef %248) #2
  %250 = add nsw i32 %232, %249
  br label %251

251:                                              ; preds = %234, %220
  %.031 = phi i32 [ %250, %234 ], [ %232, %220 ]
  %.030 = phi i32 [ %246, %234 ], [ %229, %220 ]
  %.029 = phi i32 [ %242, %234 ], [ %226, %220 ]
  %.028 = phi i32 [ %238, %234 ], [ %223, %220 ]
  br label %252

252:                                              ; preds = %310, %251
  %.126 = phi i32 [ %.025, %251 ], [ %.227, %310 ]
  %.014.pn = phi %struct.tilebox* [ %.014, %251 ], [ %.013, %310 ]
  %.013.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014.pn, i64 0, i32 0
  %.013 = load %struct.tilebox*, %struct.tilebox** %.013.in, align 8
  %.not52 = icmp eq %struct.tilebox* %.013, null
  br i1 %.not52, label %311, label %253

253:                                              ; preds = %252
  %254 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 9
  %255 = load i32, i32* %254, align 8
  %256 = add nsw i32 %.011, %255
  %257 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 10
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %.011, %258
  %260 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 11
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %.010, %261
  %263 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 12
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %.010, %264
  %266 = load i32, i32* @numcells, align 4
  %.not53 = icmp sgt i32 %131, %266
  br i1 %.not53, label %284, label %267

267:                                              ; preds = %253
  %268 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 1
  %269 = load double, double* %268, align 8
  %270 = call i32 @wireestx(i32 noundef %256, i32 noundef %262, i32 noundef %265, double noundef %269) #2
  %271 = sub nsw i32 %256, %270
  %272 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 2
  %273 = load double, double* %272, align 8
  %274 = call i32 @wireestx(i32 noundef %259, i32 noundef %262, i32 noundef %265, double noundef %273) #2
  %275 = add nsw i32 %259, %274
  %276 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 3
  %277 = load double, double* %276, align 8
  %278 = call i32 @wireesty(i32 noundef %262, i32 noundef %271, i32 noundef %275, double noundef %277) #2
  %279 = sub nsw i32 %262, %278
  %280 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 4
  %281 = load double, double* %280, align 8
  %282 = call i32 @wireesty(i32 noundef %265, i32 noundef %271, i32 noundef %275, double noundef %281) #2
  %283 = add nsw i32 %265, %282
  br label %284

284:                                              ; preds = %267, %253
  %.035 = phi i32 [ %283, %267 ], [ %265, %253 ]
  %.034 = phi i32 [ %279, %267 ], [ %262, %253 ]
  %.033 = phi i32 [ %275, %267 ], [ %259, %253 ]
  %.032 = phi i32 [ %271, %267 ], [ %256, %253 ]
  %.not54 = icmp slt i32 %.032, %.029
  br i1 %.not54, label %285, label %288

285:                                              ; preds = %284
  %.not55 = icmp slt i32 %.028, %.033
  br i1 %.not55, label %286, label %288

286:                                              ; preds = %285
  %.not56 = icmp slt i32 %.034, %.031
  br i1 %.not56, label %287, label %288

287:                                              ; preds = %286
  %.not57 = icmp slt i32 %.030, %.035
  br i1 %.not57, label %289, label %288

288:                                              ; preds = %287, %286, %285, %284
  br label %310

289:                                              ; preds = %287
  %.not58 = icmp slt i32 %.028, %.032
  br i1 %.not58, label %291, label %290

290:                                              ; preds = %289
  br label %292

291:                                              ; preds = %289
  br label %292

292:                                              ; preds = %291, %290
  %293 = phi i32 [ %.028, %290 ], [ %.032, %291 ]
  %.not59 = icmp sgt i32 %.029, %.033
  br i1 %.not59, label %295, label %294

294:                                              ; preds = %292
  br label %296

295:                                              ; preds = %292
  br label %296

296:                                              ; preds = %295, %294
  %297 = phi i32 [ %.029, %294 ], [ %.033, %295 ]
  %.not60 = icmp slt i32 %.030, %.034
  br i1 %.not60, label %299, label %298

298:                                              ; preds = %296
  br label %300

299:                                              ; preds = %296
  br label %300

300:                                              ; preds = %299, %298
  %301 = phi i32 [ %.030, %298 ], [ %.034, %299 ]
  %.not61 = icmp sgt i32 %.031, %.035
  br i1 %.not61, label %303, label %302

302:                                              ; preds = %300
  br label %304

303:                                              ; preds = %300
  br label %304

304:                                              ; preds = %303, %302
  %305 = phi i32 [ %.031, %302 ], [ %.035, %303 ]
  %306 = sub nsw i32 %305, %301
  %307 = sub nsw i32 %297, %293
  %308 = mul nsw i32 %306, %307
  %309 = add nsw i32 %.126, %308
  br label %310

310:                                              ; preds = %304, %288
  %.227 = phi i32 [ %.126, %288 ], [ %309, %304 ]
  br label %252, !llvm.loop !4

311:                                              ; preds = %252
  br label %312

312:                                              ; preds = %311
  br label %219, !llvm.loop !6

313:                                              ; preds = %219
  %.not50 = icmp eq i32 %.025, 0
  br i1 %.not50, label %322, label %314

314:                                              ; preds = %313
  %315 = load double, double* @lapFactor, align 8
  %316 = load i32, i32* @offset, align 4
  %317 = add nsw i32 %.025, %316
  %318 = sitofp i32 %317 to double
  %319 = fmul double %315, %318
  %320 = fptosi double %319 to i32
  %321 = add nsw i32 %.2, %320
  br label %322

322:                                              ; preds = %314, %313
  %.3 = phi i32 [ %321, %314 ], [ %.2, %313 ]
  br label %323

323:                                              ; preds = %322, %206
  %.4 = phi i32 [ %217, %206 ], [ %.3, %322 ]
  br label %324

324:                                              ; preds = %323, %182, %145, %133
  %.5 = phi i32 [ %.2, %133 ], [ %.2, %182 ], [ %.4, %323 ], [ %.2, %145 ]
  %325 = add nuw nsw i32 %.07, 1
  br label %126, !llvm.loop !7

326:                                              ; preds = %126
  br label %327

327:                                              ; preds = %326, %117
  %.6 = phi i32 [ %.2, %326 ], [ %.124, %117 ]
  %328 = add nuw nsw i32 %.08, 1
  br label %110, !llvm.loop !8

329:                                              ; preds = %110
  br label %330

330:                                              ; preds = %329, %108
  %.7 = phi i32 [ %.124, %329 ], [ %.023, %108 ]
  %331 = add nuw nsw i32 %.09, 1
  br label %104, !llvm.loop !9

332:                                              ; preds = %104
  ret i32 %.023
}

declare dso_local i32 @wireestx(i32 noundef, i32 noundef, i32 noundef, double noundef) #1

declare dso_local i32 @wireesty(i32 noundef, i32 noundef, i32 noundef, double noundef) #1

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
