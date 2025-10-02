; ModuleID = './checkpen.ll'
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

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @checkpen() #0 {
  br label %1

1:                                                ; preds = %22, %0
  %.01 = phi i32 [ 0, %0 ], [ %23, %22 ]
  %.0 = phi i32 [ 1, %0 ], [ %24, %22 ]
  %2 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %25, label %3

3:                                                ; preds = %1
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %5
  %7 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %10
  %12 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i64 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %15, i64 %16
  %18 = load %struct.cellbox*, %struct.cellbox** %17, align 8
  %19 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %18, i64 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @checkover(i32 noundef %.0, i32 noundef %9, i32 noundef %14, i32 noundef %20, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %22

22:                                               ; preds = %3
  %23 = add nsw i32 %.01, %21
  %24 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

25:                                               ; preds = %1
  ret i32 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @checkover(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
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
  %.05 = phi i32 [ %37, %36 ], [ %30, %33 ]
  br label %39

39:                                               ; preds = %38, %32
  %.16 = phi i32 [ 1, %32 ], [ %.05, %38 ]
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
  %.03 = phi i32 [ 1, %50 ], [ %43, %48 ]
  br label %52

52:                                               ; preds = %51, %46
  %.14 = phi i32 [ %47, %46 ], [ %.03, %51 ]
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
  %.01 = phi i32 [ %63, %62 ], [ %56, %59 ]
  br label %65

65:                                               ; preds = %64, %58
  %.12 = phi i32 [ 1, %58 ], [ %.01, %64 ]
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
  %.0 = phi i32 [ 1, %76 ], [ %69, %74 ]
  br label %78

78:                                               ; preds = %77, %72
  %.1 = phi i32 [ %73, %72 ], [ %.0, %77 ]
  %79 = icmp eq i32 %.16, %.14
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = icmp eq i32 %.12, %.1
  br i1 %81, label %82, label %83

82:                                               ; preds = %80
  br label %84

83:                                               ; preds = %80, %78
  br label %84

84:                                               ; preds = %83, %82
  %storemerge20 = phi i32 [ 0, %83 ], [ %.16, %82 ]
  %storemerge = phi i32 [ 0, %83 ], [ %.12, %82 ]
  store i32 %storemerge20, i32* @binX, align 4
  store i32 %storemerge, i32* @binY, align 4
  br label %85

85:                                               ; preds = %257, %84
  %.017 = phi i32 [ 0, %84 ], [ %.7, %257 ]
  %.09 = phi i32 [ 0, %84 ], [ %258, %257 ]
  %.not = icmp sgt i32 %.09, %.14
  br i1 %.not, label %259, label %86

86:                                               ; preds = %85
  %87 = icmp eq i32 %.09, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %.not21 = icmp slt i32 %.09, %.16
  br i1 %.not21, label %89, label %90

89:                                               ; preds = %88
  br label %257

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %254, %90
  %.118 = phi i32 [ %.017, %90 ], [ %.6, %254 ]
  %.08 = phi i32 [ 0, %90 ], [ %255, %254 ]
  %.not22 = icmp sgt i32 %.08, %.1
  br i1 %.not22, label %256, label %92

92:                                               ; preds = %91
  %93 = icmp eq i32 %.09, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = icmp eq i32 %.08, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %94, %92
  %.not23 = icmp eq i32 %.09, 0
  br i1 %.not23, label %98, label %97

97:                                               ; preds = %96
  %.not24 = icmp slt i32 %.08, %.12
  br i1 %.not24, label %98, label %99

98:                                               ; preds = %97, %96
  br label %254

99:                                               ; preds = %97, %94
  %100 = load i32***, i32**** @blockarray, align 8
  %101 = zext i32 %.09 to i64
  %102 = getelementptr inbounds i32**, i32*** %100, i64 %101
  %103 = load i32**, i32*** %102, align 8
  %104 = zext i32 %.08 to i64
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  %106 = load i32*, i32** %105, align 8
  br label %107

107:                                              ; preds = %251, %99
  %.219 = phi i32 [ %.118, %99 ], [ %.5, %251 ]
  %.07 = phi i32 [ 1, %99 ], [ %252, %251 ]
  %108 = load i32, i32* %106, align 4
  %.not25 = icmp sgt i32 %.07, %108
  br i1 %.not25, label %253, label %109

109:                                              ; preds = %107
  %110 = zext i32 %.07 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, %0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @numcells, align 4
  %116 = icmp sgt i32 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %114, %109
  br label %251

118:                                              ; preds = %114
  %119 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %120 = sext i32 %112 to i64
  %121 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %119, i64 %120
  %122 = load %struct.cellbox*, %struct.cellbox** %121, align 8
  %.not26 = icmp eq i32 %112, %4
  br i1 %.not26, label %126, label %123

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
  br label %251

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130, %123
  %.pn46.in = phi i32 [ %125, %123 ], [ %6, %130 ]
  %.pn47 = phi %struct.cellbox* [ %122, %123 ], [ %11, %130 ]
  %.010.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %.pn47, i64 0, i32 3
  %.011.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %.pn47, i64 0, i32 2
  %.pn46 = sext i32 %.pn46.in to i64
  %.014.in = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i64 0, i32 21, i64 %.pn46
  %.010 = load i32, i32* %.010.in, align 8
  %.011 = load i32, i32* %.011.in, align 4
  %.014 = load %struct.tilebox*, %struct.tilebox** %.014.in, align 8
  %132 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 9
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %.011, %133
  %135 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 10
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %.011, %136
  %138 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 11
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %.010, %139
  %141 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014, i64 0, i32 12
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %.010, %142
  %.not27 = icmp slt i32 %134, %20
  br i1 %.not27, label %144, label %147

144:                                              ; preds = %131
  %.not28 = icmp slt i32 %17, %137
  br i1 %.not28, label %145, label %147

145:                                              ; preds = %144
  %.not29 = icmp slt i32 %140, %26
  br i1 %.not29, label %146, label %147

146:                                              ; preds = %145
  %.not30 = icmp slt i32 %23, %143
  br i1 %.not30, label %148, label %147

147:                                              ; preds = %146, %145, %144, %131
  br label %251

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %183

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i64 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %183

156:                                              ; preds = %152
  %.not42 = icmp slt i32 %17, %134
  br i1 %.not42, label %158, label %157

157:                                              ; preds = %156
  br label %159

158:                                              ; preds = %156
  br label %159

159:                                              ; preds = %158, %157
  %160 = phi i32 [ %17, %157 ], [ %134, %158 ]
  %.not43 = icmp sgt i32 %20, %137
  br i1 %.not43, label %162, label %161

161:                                              ; preds = %159
  br label %163

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %161
  %164 = phi i32 [ %20, %161 ], [ %137, %162 ]
  %.not44 = icmp slt i32 %23, %140
  br i1 %.not44, label %166, label %165

165:                                              ; preds = %163
  br label %167

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %166, %165
  %168 = phi i32 [ %23, %165 ], [ %140, %166 ]
  %.not45 = icmp sgt i32 %26, %143
  br i1 %.not45, label %170, label %169

169:                                              ; preds = %167
  br label %171

170:                                              ; preds = %167
  br label %171

171:                                              ; preds = %170, %169
  %172 = phi i32 [ %26, %169 ], [ %143, %170 ]
  %173 = load double, double* @lapFactor, align 8
  %174 = sub nsw i32 %172, %168
  %175 = sub nsw i32 %164, %160
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* @offset, align 4
  %178 = add nsw i32 %176, %177
  %179 = sitofp i32 %178 to double
  %180 = fmul double %173, %179
  %181 = fptosi double %180 to i32
  %182 = add nsw i32 %.219, %181
  br label %250

183:                                              ; preds = %152, %148
  br label %184

184:                                              ; preds = %239, %183
  %.015 = phi i32 [ 0, %183 ], [ %.116, %239 ]
  %.pn = phi %struct.tilebox* [ %14, %183 ], [ %.012, %239 ]
  %.012.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.012 = load %struct.tilebox*, %struct.tilebox** %.012.in, align 8
  %.not31 = icmp eq %struct.tilebox* %.012, null
  br i1 %.not31, label %240, label %185

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 9
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, %1
  %189 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 10
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %1
  %192 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 11
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, %2
  %195 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 12
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %2
  br label %198

198:                                              ; preds = %237, %185
  %.116 = phi i32 [ %.015, %185 ], [ %.2, %237 ]
  %.014.pn = phi %struct.tilebox* [ %.014, %185 ], [ %.013, %237 ]
  %.013.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014.pn, i64 0, i32 0
  %.013 = load %struct.tilebox*, %struct.tilebox** %.013.in, align 8
  %.not33 = icmp eq %struct.tilebox* %.013, null
  br i1 %.not33, label %238, label %199

199:                                              ; preds = %198
  %200 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 9
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %.011, %201
  %203 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 10
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %.011, %204
  %206 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 11
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %.010, %207
  %209 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 12
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %.010, %210
  %.not34 = icmp slt i32 %202, %191
  br i1 %.not34, label %212, label %215

212:                                              ; preds = %199
  %.not35 = icmp slt i32 %188, %205
  br i1 %.not35, label %213, label %215

213:                                              ; preds = %212
  %.not36 = icmp slt i32 %208, %197
  br i1 %.not36, label %214, label %215

214:                                              ; preds = %213
  %.not37 = icmp slt i32 %194, %211
  br i1 %.not37, label %216, label %215

215:                                              ; preds = %214, %213, %212, %199
  br label %237

216:                                              ; preds = %214
  %.not38 = icmp slt i32 %188, %202
  br i1 %.not38, label %218, label %217

217:                                              ; preds = %216
  br label %219

218:                                              ; preds = %216
  br label %219

219:                                              ; preds = %218, %217
  %220 = phi i32 [ %188, %217 ], [ %202, %218 ]
  %.not39 = icmp sgt i32 %191, %205
  br i1 %.not39, label %222, label %221

221:                                              ; preds = %219
  br label %223

222:                                              ; preds = %219
  br label %223

223:                                              ; preds = %222, %221
  %224 = phi i32 [ %191, %221 ], [ %205, %222 ]
  %.not40 = icmp slt i32 %194, %208
  br i1 %.not40, label %226, label %225

225:                                              ; preds = %223
  br label %227

226:                                              ; preds = %223
  br label %227

227:                                              ; preds = %226, %225
  %228 = phi i32 [ %194, %225 ], [ %208, %226 ]
  %.not41 = icmp sgt i32 %197, %211
  br i1 %.not41, label %230, label %229

229:                                              ; preds = %227
  br label %231

230:                                              ; preds = %227
  br label %231

231:                                              ; preds = %230, %229
  %232 = phi i32 [ %197, %229 ], [ %211, %230 ]
  %233 = sub nsw i32 %232, %228
  %234 = sub nsw i32 %224, %220
  %235 = mul nsw i32 %233, %234
  %236 = add nsw i32 %.116, %235
  br label %237

237:                                              ; preds = %231, %215
  %.2 = phi i32 [ %.116, %215 ], [ %236, %231 ]
  br label %198, !llvm.loop !6

238:                                              ; preds = %198
  br label %239

239:                                              ; preds = %238
  br label %184, !llvm.loop !7

240:                                              ; preds = %184
  %.not32 = icmp eq i32 %.015, 0
  br i1 %.not32, label %249, label %241

241:                                              ; preds = %240
  %242 = load double, double* @lapFactor, align 8
  %243 = load i32, i32* @offset, align 4
  %244 = add nsw i32 %.015, %243
  %245 = sitofp i32 %244 to double
  %246 = fmul double %242, %245
  %247 = fptosi double %246 to i32
  %248 = add nsw i32 %.219, %247
  br label %249

249:                                              ; preds = %241, %240
  %.3 = phi i32 [ %248, %241 ], [ %.219, %240 ]
  br label %250

250:                                              ; preds = %249, %171
  %.4 = phi i32 [ %182, %171 ], [ %.3, %249 ]
  br label %251

251:                                              ; preds = %250, %147, %129, %117
  %.5 = phi i32 [ %.219, %117 ], [ %.219, %147 ], [ %.4, %250 ], [ %.219, %129 ]
  %252 = add nuw nsw i32 %.07, 1
  br label %107, !llvm.loop !8

253:                                              ; preds = %107
  br label %254

254:                                              ; preds = %253, %98
  %.6 = phi i32 [ %.219, %253 ], [ %.118, %98 ]
  %255 = add nuw nsw i32 %.08, 1
  br label %91, !llvm.loop !9

256:                                              ; preds = %91
  br label %257

257:                                              ; preds = %256, %89
  %.7 = phi i32 [ %.118, %256 ], [ %.017, %89 ]
  %258 = add nuw nsw i32 %.09, 1
  br label %85, !llvm.loop !10

259:                                              ; preds = %85
  ret i32 %.017
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
!10 = distinct !{!10, !5}
