; ModuleID = './analyze.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@numcells = external dso_local global i32, align 4
@numnets = external dso_local global i32, align 4
@how_many = dso_local global i32* null, align 8
@netarray = external dso_local global %struct.dimbox**, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"\0A\0A*************************************\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"AVERAGE NUMBER OF CELLS PER NET: %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"*************************************\0A\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Expected Wire Reduction Relative to Random:%6.2f\0A\0A\00", align 1
@qsz = dso_local global i32 0, align 4
@thresh = dso_local global i32 0, align 4
@mthresh = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local double @analyze() #0 {
  %1 = load i32, i32* @numcells, align 4
  %2 = add nsw i32 %1, 1
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = call noalias i8* @malloc(i64 noundef %4) #6
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* @numnets, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = call noalias i8* @malloc(i64 noundef %10) #6
  %12 = bitcast i8* %11 to i32**
  %13 = add nsw i32 %7, 1
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 2
  %16 = call noalias i8* @malloc(i64 noundef %15) #6
  store i8* %16, i8** bitcast (i32** @how_many to i8**), align 8
  %17 = load i32, i32* @numnets, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = call noalias i8* @malloc(i64 noundef %20) #6
  %22 = bitcast i8* %21 to i32*
  br label %23

23:                                               ; preds = %34, %0
  %.02 = phi i32 [ 0, %0 ], [ %35, %34 ]
  %24 = load i32, i32* @numnets, align 4
  %.not = icmp sgt i32 %.02, %24
  br i1 %.not, label %36, label %25

25:                                               ; preds = %23
  %26 = load i32, i32* @numcells, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  %30 = call noalias i8* @malloc(i64 noundef %29) #6
  %31 = zext i32 %.02 to i64
  %32 = getelementptr inbounds i32*, i32** %12, i64 %31
  %33 = bitcast i32** %32 to i8**
  store i8* %30, i8** %33, align 8
  br label %34

34:                                               ; preds = %25
  %35 = add nuw nsw i32 %.02, 1
  br label %23, !llvm.loop !4

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %94, %36
  %.1 = phi i32 [ 1, %36 ], [ %95, %94 ]
  %38 = load i32, i32* @numnets, align 4
  %.not19 = icmp sgt i32 %.1, %38
  br i1 %.not19, label %96, label %39

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %50, %39
  %.08 = phi i32 [ 0, %39 ], [ %51, %50 ]
  %41 = load i32, i32* @numcells, align 4
  %.not29 = icmp sgt i32 %.08, %41
  br i1 %.not29, label %52, label %42

42:                                               ; preds = %40
  %43 = zext i32 %.08 to i64
  %44 = getelementptr inbounds i32, i32* %6, i64 %43
  store i32 0, i32* %44, align 4
  %45 = zext i32 %.1 to i64
  %46 = getelementptr inbounds i32*, i32** %12, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = zext i32 %.08 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %42
  %51 = add nuw nsw i32 %.08, 1
  br label %40, !llvm.loop !6

52:                                               ; preds = %40
  %53 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %54 = zext i32 %.1 to i64
  %55 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %53, i64 %54
  %56 = load %struct.dimbox*, %struct.dimbox** %55, align 8
  %57 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %56, i64 0, i32 0
  br label %58

58:                                               ; preds = %69, %52
  %.0.in = phi %struct.netbox** [ %57, %52 ], [ %70, %69 ]
  %.0 = load %struct.netbox*, %struct.netbox** %.0.in, align 8
  %.not30 = icmp eq %struct.netbox* %.0, null
  br i1 %.not30, label %71, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.netbox, %struct.netbox* %.0, i64 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @numcells, align 4
  %.not32 = icmp sgt i32 %61, %62
  br i1 %.not32, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.netbox, %struct.netbox* %.0, i64 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %6, i64 %66
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %59
  br label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.netbox, %struct.netbox* %.0, i64 0, i32 0
  br label %58, !llvm.loop !7

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %91, %71
  %.19 = phi i32 [ 1, %71 ], [ %92, %91 ]
  %73 = load i32, i32* @numcells, align 4
  %.not31 = icmp sgt i32 %.19, %73
  br i1 %.not31, label %93, label %74

74:                                               ; preds = %72
  %75 = zext i32 %.19 to i64
  %76 = getelementptr inbounds i32, i32* %6, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = zext i32 %.1 to i64
  %81 = getelementptr inbounds i32*, i32** %12, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = zext i32 %.1 to i64
  %84 = getelementptr inbounds i32*, i32** %12, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %82, i64 %88
  store i32 %.19, i32* %89, align 4
  br label %90

90:                                               ; preds = %79, %74
  br label %91

91:                                               ; preds = %90
  %92 = add nuw nsw i32 %.19, 1
  br label %72, !llvm.loop !8

93:                                               ; preds = %72
  br label %94

94:                                               ; preds = %93
  %95 = add nuw nsw i32 %.1, 1
  br label %37, !llvm.loop !9

96:                                               ; preds = %37
  br label %97

97:                                               ; preds = %113, %96
  %.017 = phi i32 [ 0, %96 ], [ %.118, %113 ]
  %.010 = phi i32 [ 0, %96 ], [ %.111, %113 ]
  %.03 = phi i32 [ 1, %96 ], [ %114, %113 ]
  %98 = load i32, i32* @numnets, align 4
  %.not20 = icmp sgt i32 %.03, %98
  br i1 %.not20, label %115, label %99

99:                                               ; preds = %97
  %100 = zext i32 %.03 to i64
  %101 = getelementptr inbounds i32*, i32** %12, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %113

106:                                              ; preds = %99
  %107 = add nsw i32 %.017, 1
  %108 = zext i32 %.03 to i64
  %109 = getelementptr inbounds i32*, i32** %12, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %.010, %111
  br label %113

113:                                              ; preds = %106, %105
  %.118 = phi i32 [ %.017, %105 ], [ %107, %106 ]
  %.111 = phi i32 [ %.010, %105 ], [ %112, %106 ]
  %114 = add nuw nsw i32 %.03, 1
  br label %97, !llvm.loop !10

115:                                              ; preds = %97
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %117 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %116)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %119 = sitofp i32 %.010 to double
  %120 = sitofp i32 %.017 to double
  %121 = fdiv double %119, %120
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %118, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), double noundef %121) #6
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %124 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %123)
  br label %125

125:                                              ; preds = %199, %115
  %.14 = phi i32 [ 1, %115 ], [ %200, %199 ]
  %126 = load i32, i32* @numnets, align 4
  %.not21 = icmp sgt i32 %.14, %126
  br i1 %.not21, label %201, label %127

127:                                              ; preds = %125
  %128 = zext i32 %.14 to i64
  %129 = getelementptr inbounds i32*, i32** %12, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32*, i32** @how_many, align 8
  %135 = zext i32 %.14 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 0, i32* %136, align 4
  br label %199

137:                                              ; preds = %127
  %138 = zext i32 %.14 to i64
  %139 = getelementptr inbounds i32*, i32** %12, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = zext i32 %.14 to i64
  %145 = getelementptr inbounds i32*, i32** %12, i64 %144
  %146 = load i32*, i32** %145, align 8
  store i32 0, i32* %146, align 4
  %147 = load i32*, i32** @how_many, align 8
  %148 = zext i32 %.14 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 0, i32* %149, align 4
  br label %199

150:                                              ; preds = %137
  %151 = load i32*, i32** @how_many, align 8
  %152 = zext i32 %.14 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %197, %150
  %.05.in = phi i32 [ %.14, %150 ], [ %.05, %197 ]
  %.05 = add nuw nsw i32 %.05.in, 1
  %155 = load i32, i32* @numnets, align 4
  %.not24.not = icmp slt i32 %.05.in, %155
  br i1 %.not24.not, label %156, label %198

156:                                              ; preds = %154
  %157 = zext i32 %.05 to i64
  %158 = getelementptr inbounds i32*, i32** %12, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %.14 to i64
  %162 = getelementptr inbounds i32*, i32** %12, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %163, align 4
  %.not25 = icmp eq i32 %160, %164
  br i1 %.not25, label %166, label %165

165:                                              ; preds = %156
  br label %197

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %184, %166
  %.01 = phi i32 [ 1, %166 ], [ %185, %184 ]
  %168 = load i32, i32* @numcells, align 4
  %.not26 = icmp sgt i32 %.01, %168
  br i1 %.not26, label %.loopexit, label %169

169:                                              ; preds = %167
  %170 = zext i32 %.05 to i64
  %171 = getelementptr inbounds i32*, i32** %12, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = zext i32 %.01 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %.14 to i64
  %177 = getelementptr inbounds i32*, i32** %12, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = zext i32 %.01 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %.not28 = icmp eq i32 %175, %181
  br i1 %.not28, label %183, label %182

182:                                              ; preds = %169
  br label %186

183:                                              ; preds = %169
  br label %184

184:                                              ; preds = %183
  %185 = add nuw nsw i32 %.01, 1
  br label %167, !llvm.loop !11

.loopexit:                                        ; preds = %167
  br label %186

186:                                              ; preds = %.loopexit, %182
  br i1 %.not26, label %187, label %196

187:                                              ; preds = %186
  %188 = zext i32 %.05 to i64
  %189 = getelementptr inbounds i32*, i32** %12, i64 %188
  %190 = load i32*, i32** %189, align 8
  store i32 0, i32* %190, align 4
  %191 = load i32*, i32** @how_many, align 8
  %192 = zext i32 %.14 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %187, %186
  br label %197

197:                                              ; preds = %196, %165
  br label %154, !llvm.loop !12

198:                                              ; preds = %154
  br label %199

199:                                              ; preds = %198, %143, %133
  %200 = add nuw nsw i32 %.14, 1
  br label %125, !llvm.loop !13

201:                                              ; preds = %125
  store i32 0, i32* %22, align 4
  br label %202

202:                                              ; preds = %216, %201
  %.2 = phi i32 [ 1, %201 ], [ %217, %216 ]
  %203 = load i32, i32* @numnets, align 4
  %.not22 = icmp sgt i32 %.2, %203
  br i1 %.not22, label %218, label %204

204:                                              ; preds = %202
  %205 = load i32*, i32** @how_many, align 8
  %206 = zext i32 %.2 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %208, 1
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  br label %216

211:                                              ; preds = %204
  %212 = load i32, i32* %22, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %22, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %22, i64 %214
  store i32 %.2, i32* %215, align 4
  br label %216

216:                                              ; preds = %211, %210
  %217 = add nuw nsw i32 %.2, 1
  br label %202, !llvm.loop !14

218:                                              ; preds = %202
  %219 = load i32, i32* %22, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %22, i64 %220
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %22, align 4
  call void @qsortx(i8* noundef %21, i32 noundef %219, i32 noundef 4)
  br label %223

223:                                              ; preds = %245, %218
  %.015 = phi i32 [ 0, %218 ], [ %.116, %245 ]
  %.013 = phi i32 [ 0, %218 ], [ %.114, %245 ]
  %.06 = phi i32 [ 0, %218 ], [ %.17, %245 ]
  %.3 = phi i32 [ 1, %218 ], [ %246, %245 ]
  %224 = load i32, i32* @numnets, align 4
  %.not23 = icmp sgt i32 %.3, %224
  br i1 %.not23, label %247, label %225

225:                                              ; preds = %223
  %226 = zext i32 %.3 to i64
  %227 = getelementptr inbounds i32*, i32** %12, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %225
  %232 = zext i32 %.3 to i64
  %233 = getelementptr inbounds i32*, i32** %12, i64 %232
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, -1
  %237 = add nsw i32 %.013, %236
  %238 = zext i32 %.3 to i64
  %239 = getelementptr inbounds i32*, i32** %12, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %.015, %241
  %243 = add nsw i32 %.06, 1
  br label %244

244:                                              ; preds = %231, %225
  %.116 = phi i32 [ %242, %231 ], [ %.015, %225 ]
  %.114 = phi i32 [ %237, %231 ], [ %.013, %225 ]
  %.17 = phi i32 [ %243, %231 ], [ %.06, %225 ]
  br label %245

245:                                              ; preds = %244
  %246 = add nuw nsw i32 %.3, 1
  br label %223, !llvm.loop !15

247:                                              ; preds = %223
  %248 = sitofp i32 %.06 to double
  %249 = load i32, i32* @numcells, align 4
  %250 = sitofp i32 %249 to double
  %251 = fdiv double %248, %250
  %252 = sitofp i32 %.013 to double
  %253 = sitofp i32 %.06 to double
  %254 = fdiv double %252, %253
  %255 = load i32, i32* @numnets, align 4
  %256 = sitofp i32 %255 to double
  %257 = load i32, i32* @numcells, align 4
  %258 = sitofp i32 %257 to double
  %259 = fdiv double %256, %258
  %260 = fdiv double %259, %251
  %261 = call double @wireratio(i32 noundef %249, double noundef %254, double noundef %260, double noundef %251) #6
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %263 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %262, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), double noundef %261) #6
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %265 = call i32 @fflush(%struct._IO_FILE* noundef %264) #6
  ret double %261
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @qsortx(i8* noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = icmp slt i32 %1, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %84

6:                                                ; preds = %3
  store i32 %2, i32* @qsz, align 4
  %7 = shl nsw i32 %2, 2
  store i32 %7, i32* @thresh, align 4
  %8 = mul nsw i32 %2, 6
  store i32 %8, i32* @mthresh, align 4
  %9 = mul nsw i32 %1, %2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %0, i64 %10
  %12 = icmp sgt i32 %1, 3
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  call void @qst(i8* noundef %0, i8* noundef %11)
  %14 = load i32, i32* @thresh, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %0, i64 %15
  br label %18

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17, %13
  %.01 = phi i8* [ %16, %13 ], [ %11, %17 ]
  br label %19

19:                                               ; preds = %30, %18
  %.06 = phi i8* [ %0, %18 ], [ %.17, %30 ]
  %.02 = phi i8* [ %0, %18 ], [ %22, %30 ]
  %20 = load i32, i32* @qsz, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %.02, i64 %21
  %23 = icmp ult i8* %22, %.01
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = bitcast i8* %.06 to i32*
  %26 = bitcast i8* %22 to i32*
  %27 = call i32 @comparex(i32* noundef %25, i32* noundef %26)
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %24
  %.17 = phi i8* [ %22, %29 ], [ %.06, %24 ]
  br label %19, !llvm.loop !16

31:                                               ; preds = %19
  %.not = icmp eq i8* %.06, %0
  br i1 %.not, label %44, label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @qsz, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %0, i64 %34
  br label %36

36:                                               ; preds = %38, %32
  %.2 = phi i8* [ %.06, %32 ], [ %41, %38 ]
  %.04 = phi i8* [ %0, %32 ], [ %42, %38 ]
  %37 = icmp ult i8* %.04, %35
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = load i8, i8* %.2, align 1
  %40 = load i8, i8* %.04, align 1
  %41 = getelementptr inbounds i8, i8* %.2, i64 1
  store i8 %40, i8* %.2, align 1
  %42 = getelementptr inbounds i8, i8* %.04, i64 1
  store i8 %39, i8* %.04, align 1
  br label %36, !llvm.loop !17

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %83, %44
  %.0 = phi i8* [ %0, %44 ], [ %48, %83 ]
  %46 = load i32, i32* @qsz, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %.0, i64 %47
  %49 = icmp ult i8* %48, %11
  br i1 %49, label %50, label %.loopexit

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %60, %50
  %.1 = phi i8* [ %48, %50 ], [ %55, %60 ]
  %52 = load i32, i32* @qsz, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 0, %53
  %55 = getelementptr inbounds i8, i8* %.1, i64 %54
  %56 = bitcast i8* %55 to i32*
  %57 = bitcast i8* %48 to i32*
  %58 = call i32 @comparex(i32* noundef %56, i32* noundef %57)
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %51, !llvm.loop !18

61:                                               ; preds = %51
  %62 = load i32, i32* @qsz, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %55, i64 %63
  %.not8 = icmp eq i8* %64, %48
  br i1 %.not8, label %83, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @qsz, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %48, i64 %67
  br label %69

69:                                               ; preds = %81, %65
  %.13 = phi i8* [ %68, %65 ], [ %70, %81 ]
  %70 = getelementptr inbounds i8, i8* %.13, i64 -1
  %.not9 = icmp ult i8* %70, %48
  br i1 %.not9, label %82, label %71

71:                                               ; preds = %69
  %72 = load i8, i8* %70, align 1
  br label %73

73:                                               ; preds = %80, %71
  %.15 = phi i8* [ %70, %71 ], [ %77, %80 ]
  %74 = load i32, i32* @qsz, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 0, %75
  %77 = getelementptr inbounds i8, i8* %.15, i64 %76
  %.not10 = icmp ult i8* %77, %64
  br i1 %.not10, label %81, label %78

78:                                               ; preds = %73
  %79 = load i8, i8* %77, align 1
  store i8 %79, i8* %.15, align 1
  br label %80

80:                                               ; preds = %78
  br label %73, !llvm.loop !19

81:                                               ; preds = %73
  store i8 %72, i8* %.15, align 1
  br label %69, !llvm.loop !20

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %61
  br label %45, !llvm.loop !21

.loopexit:                                        ; preds = %45
  br label %84

84:                                               ; preds = %.loopexit, %5
  ret void
}

declare dso_local double @wireratio(i32 noundef, double noundef, double noundef, double noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @comparex(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1) #4 {
  %3 = load i32*, i32** @how_many, align 8
  %4 = load i32, i32* %1, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %3, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %0, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %3, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %7, %11
  ret i32 %12
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @qst(i8* noundef %0, i8* noundef %1) #3 {
  %3 = ptrtoint i8* %1 to i64
  %4 = ptrtoint i8* %0 to i64
  %5 = sub i64 %3, %4
  %6 = trunc i64 %5 to i32
  br label %7

7:                                                ; preds = %140, %2
  %.018 = phi i32 [ %6, %2 ], [ %.119, %140 ]
  %.01 = phi i8* [ %1, %2 ], [ %.12, %140 ]
  %.0 = phi i8* [ %0, %2 ], [ %.1, %140 ]
  %8 = load i32, i32* @qsz, align 4
  %9 = sdiv i32 %.018, %8
  %10 = ashr i32 %9, 1
  %11 = mul nsw i32 %8, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %.0, i64 %12
  %14 = load i32, i32* @mthresh, align 4
  %.not = icmp slt i32 %.018, %14
  br i1 %.not, label %56, label %15

15:                                               ; preds = %7
  %16 = bitcast i8* %.0 to i32*
  %17 = bitcast i8* %13 to i32*
  %18 = call i32 @comparex(i32* noundef %16, i32* noundef %17)
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi i8* [ %.0, %20 ], [ %13, %21 ]
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* @qsz, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds i8, i8* %.01, i64 %27
  %29 = bitcast i8* %28 to i32*
  %30 = call i32 @comparex(i32* noundef %24, i32* noundef %29)
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = icmp eq i8* %23, %.0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  br label %36

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35, %34
  %37 = phi i8* [ %13, %34 ], [ %.0, %35 ]
  %38 = bitcast i8* %37 to i32*
  %39 = bitcast i8* %28 to i32*
  %40 = call i32 @comparex(i32* noundef %38, i32* noundef %39)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %36
  %.05 = phi i8* [ %28, %42 ], [ %37, %36 ]
  br label %44

44:                                               ; preds = %43, %22
  %.16 = phi i8* [ %.05, %43 ], [ %23, %22 ]
  %.not26 = icmp eq i8* %.16, %13
  br i1 %.not26, label %55, label %45

45:                                               ; preds = %44
  %46 = load i32, i32* @qsz, align 4
  br label %47

47:                                               ; preds = %50, %45
  %.012 = phi i32 [ %46, %45 ], [ %53, %50 ]
  %.27 = phi i8* [ %.16, %45 ], [ %51, %50 ]
  %.03 = phi i8* [ %13, %45 ], [ %52, %50 ]
  %48 = load i8, i8* %.03, align 1
  %49 = load i8, i8* %.27, align 1
  store i8 %49, i8* %.03, align 1
  store i8 %48, i8* %.27, align 1
  br label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, i8* %.27, i64 1
  %52 = getelementptr inbounds i8, i8* %.03, i64 1
  %53 = add nsw i32 %.012, -1
  %.not27 = icmp eq i32 %53, 0
  br i1 %.not27, label %54, label %47, !llvm.loop !22

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55, %7
  %57 = load i32, i32* @qsz, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 0, %58
  %60 = getelementptr inbounds i8, i8* %.01, i64 %59
  br label %61

61:                                               ; preds = %118, %56
  %.014 = phi i8* [ %13, %56 ], [ %.216, %118 ]
  %.38 = phi i8* [ %60, %56 ], [ %.6, %118 ]
  %.14 = phi i8* [ %.0, %56 ], [ %.017, %118 ]
  br label %62

62:                                               ; preds = %71, %61
  %.2 = phi i8* [ %.14, %61 ], [ %74, %71 ]
  %63 = icmp ult i8* %.2, %.014
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = bitcast i8* %.2 to i32*
  %66 = bitcast i8* %.014 to i32*
  %67 = call i32 @comparex(i32* noundef %65, i32* noundef nonnull %66)
  %68 = icmp slt i32 %67, 1
  br label %69

69:                                               ; preds = %64, %62
  %70 = phi i1 [ false, %62 ], [ %68, %64 ]
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  %72 = load i32, i32* @qsz, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %.2, i64 %73
  br label %62, !llvm.loop !23

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %83, %75
  %.4 = phi i8* [ %.38, %75 ], [ %87, %83 ]
  %77 = icmp ugt i8* %.4, %.014
  br i1 %77, label %78, label %100

78:                                               ; preds = %76
  %79 = bitcast i8* %.014 to i32*
  %80 = bitcast i8* %.4 to i32*
  %81 = call i32 @comparex(i32* noundef %79, i32* noundef nonnull %80)
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* @qsz, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i8, i8* %.4, i64 %86
  br label %76, !llvm.loop !24

88:                                               ; preds = %78
  %89 = load i32, i32* @qsz, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %.2, i64 %90
  %92 = icmp eq i8* %.2, %.014
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %99

94:                                               ; preds = %88
  %95 = load i32, i32* @qsz, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 0, %96
  %98 = getelementptr inbounds i8, i8* %.4, i64 %97
  br label %99

99:                                               ; preds = %94, %93
  %.115 = phi i8* [ %.4, %93 ], [ %.014, %94 ]
  %.5 = phi i8* [ %.4, %93 ], [ %98, %94 ]
  br label %109

100:                                              ; preds = %76
  %101 = icmp eq i8* %.2, %.014
  br i1 %101, label %102, label %103

102:                                              ; preds = %100
  br label %119

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* @qsz, align 4
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 0, %106
  %108 = getelementptr inbounds i8, i8* %.4, i64 %107
  br label %109

109:                                              ; preds = %104, %99
  %.017 = phi i8* [ %91, %99 ], [ %.2, %104 ]
  %.216 = phi i8* [ %.115, %99 ], [ %.2, %104 ]
  %.110 = phi i8* [ %.4, %99 ], [ %.014, %104 ]
  %.6 = phi i8* [ %.5, %99 ], [ %108, %104 ]
  %110 = load i32, i32* @qsz, align 4
  br label %111

111:                                              ; preds = %114, %109
  %.113 = phi i32 [ %110, %109 ], [ %117, %114 ]
  %.211 = phi i8* [ %.110, %109 ], [ %115, %114 ]
  %.3 = phi i8* [ %.2, %109 ], [ %116, %114 ]
  %112 = load i8, i8* %.3, align 1
  %113 = load i8, i8* %.211, align 1
  store i8 %113, i8* %.3, align 1
  store i8 %112, i8* %.211, align 1
  br label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, i8* %.211, i64 1
  %116 = getelementptr inbounds i8, i8* %.3, i64 1
  %117 = add nsw i32 %.113, -1
  %.not21 = icmp eq i32 %117, 0
  br i1 %.not21, label %118, label %111, !llvm.loop !25

118:                                              ; preds = %114
  br label %61

119:                                              ; preds = %102
  %120 = load i32, i32* @qsz, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %.014, i64 %121
  %123 = ptrtoint i8* %.014 to i64
  %124 = ptrtoint i8* %.0 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = ptrtoint i8* %.01 to i64
  %128 = ptrtoint i8* %122 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  %.not22 = icmp sgt i32 %126, %130
  br i1 %.not22, label %135, label %131

131:                                              ; preds = %119
  %132 = load i32, i32* @thresh, align 4
  %.not25 = icmp sgt i32 %132, %126
  br i1 %.not25, label %134, label %133

133:                                              ; preds = %131
  call void @qst(i8* noundef %.0, i8* noundef %.014)
  br label %134

134:                                              ; preds = %133, %131
  br label %139

135:                                              ; preds = %119
  %136 = load i32, i32* @thresh, align 4
  %.not23 = icmp sgt i32 %136, %130
  br i1 %.not23, label %138, label %137

137:                                              ; preds = %135
  call void @qst(i8* noundef %122, i8* noundef %.01)
  br label %138

138:                                              ; preds = %137, %135
  br label %139

139:                                              ; preds = %138, %134
  %.119 = phi i32 [ %130, %134 ], [ %126, %138 ]
  %.12 = phi i8* [ %.01, %134 ], [ %.014, %138 ]
  %.1 = phi i8* [ %122, %134 ], [ %.0, %138 ]
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* @thresh, align 4
  %.not24 = icmp slt i32 %.119, %141
  br i1 %.not24, label %142, label %7, !llvm.loop !26

142:                                              ; preds = %140
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
