; ModuleID = './goverlapf.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/goverlapf.c"
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
define dso_local i32 @goverlapf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
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

100:                                              ; preds = %340, %99
  %.023 = phi i32 [ 0, %99 ], [ %.7, %340 ]
  %.09 = phi i32 [ 0, %99 ], [ %341, %340 ]
  %.not37 = icmp sgt i32 %.09, %.14
  br i1 %.not37, label %342, label %101

101:                                              ; preds = %100
  %102 = icmp eq i32 %.09, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %101
  %.not38 = icmp slt i32 %.09, %.16
  br i1 %.not38, label %104, label %105

104:                                              ; preds = %103
  br label %340

105:                                              ; preds = %103, %101
  br label %106

106:                                              ; preds = %337, %105
  %.124 = phi i32 [ %.023, %105 ], [ %.6, %337 ]
  %.08 = phi i32 [ 0, %105 ], [ %338, %337 ]
  %.not39 = icmp sgt i32 %.08, %.1
  br i1 %.not39, label %339, label %107

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
  br label %337

114:                                              ; preds = %112, %109
  %115 = load i32***, i32**** @blockarray, align 8
  %116 = zext i32 %.09 to i64
  %117 = getelementptr inbounds i32**, i32*** %115, i64 %116
  %118 = load i32**, i32*** %117, align 8
  %119 = zext i32 %.08 to i64
  %120 = getelementptr inbounds i32*, i32** %118, i64 %119
  %121 = load i32*, i32** %120, align 8
  br label %122

122:                                              ; preds = %334, %114
  %.2 = phi i32 [ %.124, %114 ], [ %.5, %334 ]
  %.07 = phi i32 [ 1, %114 ], [ %335, %334 ]
  %123 = load i32, i32* %121, align 4
  %.not42 = icmp sgt i32 %.07, %123
  br i1 %.not42, label %336, label %124

124:                                              ; preds = %122
  %125 = zext i32 %.07 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, %0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %334

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
  br label %334

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
  br label %334

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %226

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %134, i64 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %226

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
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %210, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 noundef %127) #2
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %213 = load double, double* @lapFactor, align 8
  %214 = sub nsw i32 %199, %195
  %215 = sub nsw i32 %191, %187
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* @offset, align 4
  %218 = add nsw i32 %216, %217
  %219 = sitofp i32 %218 to double
  %220 = fmul double %213, %219
  %221 = fptosi double %220 to i32
  %222 = sub nsw i32 %199, %195
  %223 = sub nsw i32 %191, %187
  %224 = mul nsw i32 %222, %223
  %225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %212, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %221, i32 noundef %224) #2
  br label %333

226:                                              ; preds = %179, %175
  br label %227

227:                                              ; preds = %312, %226
  %.025 = phi i32 [ 0, %226 ], [ %.126, %312 ]
  %.pn = phi %struct.tilebox* [ %14, %226 ], [ %.012, %312 ]
  %.012.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.012 = load %struct.tilebox*, %struct.tilebox** %.012.in, align 8
  %.not49 = icmp eq %struct.tilebox* %.012, null
  br i1 %.not49, label %313, label %228

228:                                              ; preds = %227
  %229 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 9
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, %1
  %232 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 10
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, %1
  %235 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 11
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, %2
  %238 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 12
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, %2
  %241 = load i32, i32* @numcells, align 4
  %.not51 = icmp slt i32 %241, %0
  br i1 %.not51, label %255, label %242

242:                                              ; preds = %228
  %243 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = sub nsw i32 %231, %244
  %246 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %234, %247
  %249 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = sub nsw i32 %237, %250
  %252 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.012, i64 0, i32 8
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %240, %253
  br label %255

255:                                              ; preds = %242, %228
  %.031 = phi i32 [ %254, %242 ], [ %240, %228 ]
  %.030 = phi i32 [ %251, %242 ], [ %237, %228 ]
  %.029 = phi i32 [ %248, %242 ], [ %234, %228 ]
  %.028 = phi i32 [ %245, %242 ], [ %231, %228 ]
  br label %256

256:                                              ; preds = %310, %255
  %.126 = phi i32 [ %.025, %255 ], [ %.227, %310 ]
  %.014.pn = phi %struct.tilebox* [ %.014, %255 ], [ %.013, %310 ]
  %.013.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.014.pn, i64 0, i32 0
  %.013 = load %struct.tilebox*, %struct.tilebox** %.013.in, align 8
  %.not52 = icmp eq %struct.tilebox* %.013, null
  br i1 %.not52, label %311, label %257

257:                                              ; preds = %256
  %258 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 9
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %.011, %259
  %261 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 10
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %.011, %262
  %264 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 11
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %.010, %265
  %267 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 12
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %.010, %268
  %270 = load i32, i32* @numcells, align 4
  %.not53 = icmp sgt i32 %127, %270
  br i1 %.not53, label %284, label %271

271:                                              ; preds = %257
  %272 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = sub nsw i32 %260, %273
  %275 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %263, %276
  %278 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 7
  %279 = load i32, i32* %278, align 8
  %280 = sub nsw i32 %266, %279
  %281 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.013, i64 0, i32 8
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %269, %282
  br label %284

284:                                              ; preds = %271, %257
  %.035 = phi i32 [ %283, %271 ], [ %269, %257 ]
  %.034 = phi i32 [ %280, %271 ], [ %266, %257 ]
  %.033 = phi i32 [ %277, %271 ], [ %263, %257 ]
  %.032 = phi i32 [ %274, %271 ], [ %260, %257 ]
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
  br label %256, !llvm.loop !4

311:                                              ; preds = %256
  br label %312

312:                                              ; preds = %311
  br label %227, !llvm.loop !6

313:                                              ; preds = %227
  %.not50 = icmp eq i32 %.025, 0
  br i1 %.not50, label %332, label %314

314:                                              ; preds = %313
  %315 = load double, double* @lapFactor, align 8
  %316 = load i32, i32* @offset, align 4
  %317 = add nsw i32 %.025, %316
  %318 = sitofp i32 %317 to double
  %319 = fmul double %315, %318
  %320 = fptosi double %319 to i32
  %321 = add nsw i32 %.2, %320
  %322 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %323 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %322, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 noundef %127) #2
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %325 = load double, double* @lapFactor, align 8
  %326 = load i32, i32* @offset, align 4
  %327 = add nsw i32 %.025, %326
  %328 = sitofp i32 %327 to double
  %329 = fmul double %325, %328
  %330 = fptosi double %329 to i32
  %331 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %324, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %330, i32 noundef %.025) #2
  br label %332

332:                                              ; preds = %314, %313
  %.3 = phi i32 [ %321, %314 ], [ %.2, %313 ]
  br label %333

333:                                              ; preds = %332, %198
  %.4 = phi i32 [ %209, %198 ], [ %.3, %332 ]
  br label %334

334:                                              ; preds = %333, %174, %141, %129
  %.5 = phi i32 [ %.2, %129 ], [ %.2, %174 ], [ %.4, %333 ], [ %.2, %141 ]
  %335 = add nuw nsw i32 %.07, 1
  br label %122, !llvm.loop !7

336:                                              ; preds = %122
  br label %337

337:                                              ; preds = %336, %113
  %.6 = phi i32 [ %.2, %336 ], [ %.124, %113 ]
  %338 = add nuw nsw i32 %.08, 1
  br label %106, !llvm.loop !8

339:                                              ; preds = %106
  br label %340

340:                                              ; preds = %339, %104
  %.7 = phi i32 [ %.124, %339 ], [ %.023, %104 ]
  %341 = add nuw nsw i32 %.09, 1
  br label %100, !llvm.loop !9

342:                                              ; preds = %100
  ret i32 %.023
}

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
