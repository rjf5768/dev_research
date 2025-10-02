; ModuleID = './woverlapf.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/woverlapf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

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
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [37 x i8] c"Overlap condition: cell1:%d cell2:%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"   value:%d   amount:%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @woverlapf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
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

104:                                              ; preds = %356, %103
  %.023 = phi i32 [ 0, %103 ], [ %.7, %356 ]
  %.09 = phi i32 [ 0, %103 ], [ %357, %356 ]
  %.not37 = icmp sgt i32 %.09, %.14
  br i1 %.not37, label %358, label %105

105:                                              ; preds = %104
  %106 = icmp eq i32 %.09, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %105
  %.not38 = icmp slt i32 %.09, %.16
  br i1 %.not38, label %108, label %109

108:                                              ; preds = %107
  br label %356

109:                                              ; preds = %107, %105
  br label %110

110:                                              ; preds = %353, %109
  %.124 = phi i32 [ %.023, %109 ], [ %.6, %353 ]
  %.08 = phi i32 [ 0, %109 ], [ %354, %353 ]
  %.not39 = icmp sgt i32 %.08, %.1
  br i1 %.not39, label %355, label %111

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
  br label %353

118:                                              ; preds = %116, %113
  %119 = load i32***, i32**** @blockarray, align 8
  %120 = zext i32 %.09 to i64
  %121 = getelementptr inbounds i32**, i32*** %119, i64 %120
  %122 = load i32**, i32*** %121, align 8
  %123 = zext i32 %.08 to i64
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  br label %126

126:                                              ; preds = %350, %118
  %.2 = phi i32 [ %.124, %118 ], [ %.5, %350 ]
  %.07 = phi i32 [ 1, %118 ], [ %351, %350 ]
  %127 = load i32, i32* %125, align 4
  %.not42 = icmp sgt i32 %.07, %127
  br i1 %.not42, label %352, label %128

128:                                              ; preds = %126
  %129 = zext i32 %.07 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, %0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %350

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
  br label %350

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
  br label %350

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %234

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %138, i64 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %234

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
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %218, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 noundef %131) #2
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %221 = load double, double* @lapFactor, align 8
  %222 = sub nsw i32 %207, %203
  %223 = sub nsw i32 %199, %195
  %224 = mul nsw i32 %222, %223
  %225 = load i32, i32* @offset, align 4
  %226 = add nsw i32 %224, %225
  %227 = sitofp i32 %226 to double
  %228 = fmul double %221, %227
  %229 = fptosi double %228 to i32
  %230 = sub nsw i32 %207, %203
  %231 = sub nsw i32 %199, %195
  %232 = mul nsw i32 %230, %231
  %233 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %220, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %229, i32 noundef %232) #2
  br label %349

234:                                              ; preds = %187, %183
  br label %235

235:                                              ; preds = %328, %234
  %.025 = phi i32 [ 0, %234 ], [ %.126, %328 ]
  %.pn = phi %struct.tilebox* [ %14, %234 ], [ %.012, %328 ]
  %.012.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.012 = load %struct.tilebox*, %struct.tilebox** %.012.in, align 8
  %.not49 = icmp eq %struct.tilebox* %.012, null
  br i1 %.not49, label %329, label %236

236:                                              ; preds = %235
  %237 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 9
  %238 = load i32, i32* %237, align 8
  %239 = add nsw i32 %238, %1
  %240 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 10
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, %1
  %243 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 11
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, %2
  %246 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 12
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, %2
  %249 = load i32, i32* @numcells, align 4
  %.not51 = icmp slt i32 %249, %0
  br i1 %.not51, label %267, label %250

250:                                              ; preds = %236
  %251 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 1
  %252 = load double, double* %251, align 8
  %253 = call i32 @wireestx(i32 noundef %239, i32 noundef %245, i32 noundef %248, double noundef %252) #2
  %254 = sub nsw i32 %239, %253
  %255 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 2
  %256 = load double, double* %255, align 8
  %257 = call i32 @wireestx(i32 noundef %242, i32 noundef %245, i32 noundef %248, double noundef %256) #2
  %258 = add nsw i32 %242, %257
  %259 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 3
  %260 = load double, double* %259, align 8
  %261 = call i32 @wireesty(i32 noundef %245, i32 noundef %254, i32 noundef %258, double noundef %260) #2
  %262 = sub nsw i32 %245, %261
  %263 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 4
  %264 = load double, double* %263, align 8
  %265 = call i32 @wireesty(i32 noundef %248, i32 noundef %254, i32 noundef %258, double noundef %264) #2
  %266 = add nsw i32 %248, %265
  br label %267

267:                                              ; preds = %250, %236
  %.031 = phi i32 [ %266, %250 ], [ %248, %236 ]
  %.030 = phi i32 [ %262, %250 ], [ %245, %236 ]
  %.029 = phi i32 [ %258, %250 ], [ %242, %236 ]
  %.028 = phi i32 [ %254, %250 ], [ %239, %236 ]
  br label %268

268:                                              ; preds = %326, %267
  %.126 = phi i32 [ %.025, %267 ], [ %.227, %326 ]
  %.014.pn = phi %struct.tilebox* [ %.014, %267 ], [ %.013, %326 ]
  %.013.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014.pn, i64 0, i32 0
  %.013 = load %struct.tilebox*, %struct.tilebox** %.013.in, align 8
  %.not52 = icmp eq %struct.tilebox* %.013, null
  br i1 %.not52, label %327, label %269

269:                                              ; preds = %268
  %270 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 9
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %.011, %271
  %273 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 10
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %.011, %274
  %276 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 11
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 %.010, %277
  %279 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 12
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %.010, %280
  %282 = load i32, i32* @numcells, align 4
  %.not53 = icmp sgt i32 %131, %282
  br i1 %.not53, label %300, label %283

283:                                              ; preds = %269
  %284 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 1
  %285 = load double, double* %284, align 8
  %286 = call i32 @wireestx(i32 noundef %272, i32 noundef %278, i32 noundef %281, double noundef %285) #2
  %287 = sub nsw i32 %272, %286
  %288 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 2
  %289 = load double, double* %288, align 8
  %290 = call i32 @wireestx(i32 noundef %275, i32 noundef %278, i32 noundef %281, double noundef %289) #2
  %291 = add nsw i32 %275, %290
  %292 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 3
  %293 = load double, double* %292, align 8
  %294 = call i32 @wireesty(i32 noundef %278, i32 noundef %287, i32 noundef %291, double noundef %293) #2
  %295 = sub nsw i32 %278, %294
  %296 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 4
  %297 = load double, double* %296, align 8
  %298 = call i32 @wireesty(i32 noundef %281, i32 noundef %287, i32 noundef %291, double noundef %297) #2
  %299 = add nsw i32 %281, %298
  br label %300

300:                                              ; preds = %283, %269
  %.035 = phi i32 [ %299, %283 ], [ %281, %269 ]
  %.034 = phi i32 [ %295, %283 ], [ %278, %269 ]
  %.033 = phi i32 [ %291, %283 ], [ %275, %269 ]
  %.032 = phi i32 [ %287, %283 ], [ %272, %269 ]
  %.not54 = icmp slt i32 %.032, %.029
  br i1 %.not54, label %301, label %304

301:                                              ; preds = %300
  %.not55 = icmp slt i32 %.028, %.033
  br i1 %.not55, label %302, label %304

302:                                              ; preds = %301
  %.not56 = icmp slt i32 %.034, %.031
  br i1 %.not56, label %303, label %304

303:                                              ; preds = %302
  %.not57 = icmp slt i32 %.030, %.035
  br i1 %.not57, label %305, label %304

304:                                              ; preds = %303, %302, %301, %300
  br label %326

305:                                              ; preds = %303
  %.not58 = icmp slt i32 %.028, %.032
  br i1 %.not58, label %307, label %306

306:                                              ; preds = %305
  br label %308

307:                                              ; preds = %305
  br label %308

308:                                              ; preds = %307, %306
  %309 = phi i32 [ %.028, %306 ], [ %.032, %307 ]
  %.not59 = icmp sgt i32 %.029, %.033
  br i1 %.not59, label %311, label %310

310:                                              ; preds = %308
  br label %312

311:                                              ; preds = %308
  br label %312

312:                                              ; preds = %311, %310
  %313 = phi i32 [ %.029, %310 ], [ %.033, %311 ]
  %.not60 = icmp slt i32 %.030, %.034
  br i1 %.not60, label %315, label %314

314:                                              ; preds = %312
  br label %316

315:                                              ; preds = %312
  br label %316

316:                                              ; preds = %315, %314
  %317 = phi i32 [ %.030, %314 ], [ %.034, %315 ]
  %.not61 = icmp sgt i32 %.031, %.035
  br i1 %.not61, label %319, label %318

318:                                              ; preds = %316
  br label %320

319:                                              ; preds = %316
  br label %320

320:                                              ; preds = %319, %318
  %321 = phi i32 [ %.031, %318 ], [ %.035, %319 ]
  %322 = sub nsw i32 %321, %317
  %323 = sub nsw i32 %313, %309
  %324 = mul nsw i32 %322, %323
  %325 = add nsw i32 %.126, %324
  br label %326

326:                                              ; preds = %320, %304
  %.227 = phi i32 [ %.126, %304 ], [ %325, %320 ]
  br label %268, !llvm.loop !4

327:                                              ; preds = %268
  br label %328

328:                                              ; preds = %327
  br label %235, !llvm.loop !6

329:                                              ; preds = %235
  %.not50 = icmp eq i32 %.025, 0
  br i1 %.not50, label %348, label %330

330:                                              ; preds = %329
  %331 = load double, double* @lapFactor, align 8
  %332 = load i32, i32* @offset, align 4
  %333 = add nsw i32 %.025, %332
  %334 = sitofp i32 %333 to double
  %335 = fmul double %331, %334
  %336 = fptosi double %335 to i32
  %337 = add nsw i32 %.2, %336
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %339 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %338, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 noundef %131) #2
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %341 = load double, double* @lapFactor, align 8
  %342 = load i32, i32* @offset, align 4
  %343 = add nsw i32 %.025, %342
  %344 = sitofp i32 %343 to double
  %345 = fmul double %341, %344
  %346 = fptosi double %345 to i32
  %347 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %340, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %346, i32 noundef %.025) #2
  br label %348

348:                                              ; preds = %330, %329
  %.3 = phi i32 [ %337, %330 ], [ %.2, %329 ]
  br label %349

349:                                              ; preds = %348, %206
  %.4 = phi i32 [ %217, %206 ], [ %.3, %348 ]
  br label %350

350:                                              ; preds = %349, %182, %145, %133
  %.5 = phi i32 [ %.2, %133 ], [ %.2, %182 ], [ %.4, %349 ], [ %.2, %145 ]
  %351 = add nuw nsw i32 %.07, 1
  br label %126, !llvm.loop !7

352:                                              ; preds = %126
  br label %353

353:                                              ; preds = %352, %117
  %.6 = phi i32 [ %.2, %352 ], [ %.124, %117 ]
  %354 = add nuw nsw i32 %.08, 1
  br label %110, !llvm.loop !8

355:                                              ; preds = %110
  br label %356

356:                                              ; preds = %355, %108
  %.7 = phi i32 [ %.124, %355 ], [ %.023, %108 ]
  %357 = add nuw nsw i32 %.09, 1
  br label %104, !llvm.loop !9

358:                                              ; preds = %104
  ret i32 %.023
}

declare dso_local i32 @wireestx(i32 noundef, i32 noundef, i32 noundef, double noundef) #1

declare dso_local i32 @wireesty(i32 noundef, i32 noundef, i32 noundef, double noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

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
