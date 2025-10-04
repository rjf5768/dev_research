; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/findnodes.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/findnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.dlink2 = type { i32, %struct.dlink2*, %struct.dlink2* }

@numRects = external dso_local global i32, align 4
@rectArray = external dso_local global %struct.rect*, align 8
@Hlist = external dso_local global %struct.dlink1*, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@Vptrs = external dso_local global %struct.dlink1**, align 8
@Vroot = external dso_local global %struct.tnode*, align 8
@Hptrs = external dso_local global %struct.dlink1**, align 8
@Hroot = external dso_local global %struct.tnode*, align 8
@hRectRoot = external dso_local global %struct.tnode*, align 8
@vRectRoot = external dso_local global %struct.tnode*, align 8
@fpdebug = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [26 x i8] c"rect Node: %d  at: %d %d \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"  width:%d  height:%d\0A\00", align 1
@doPlacement = external dso_local global i32, align 4
@fpNodes = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"L NC;\0A94 X%d %d %d;\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1
@HRlist = external dso_local global %struct.dlink2*, align 8
@VRlist = external dso_local global %struct.dlink2*, align 8
@LEroot = external dso_local global %struct.tnode*, align 8
@LEptrs = external dso_local global %struct.dlink2**, align 8
@BEroot = external dso_local global %struct.tnode*, align 8
@BEptrs = external dso_local global %struct.dlink2**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @findnodes() #0 {
  %1 = alloca %struct.dlink1*, align 8
  %2 = alloca %struct.dlink1*, align 8
  %3 = alloca %struct.dlink1*, align 8
  %4 = alloca %struct.dlink1*, align 8
  %5 = alloca %struct.dlink1*, align 8
  %6 = alloca %struct.dlink1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
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
  store i32 0, i32* @numRects, align 4
  %37 = call noalias i8* @malloc(i64 noundef 5200) #3
  %38 = bitcast i8* %37 to %struct.rect*
  store %struct.rect* %38, %struct.rect** @rectArray, align 8
  store i32 -100000, i32* %29, align 4
  %39 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
  store %struct.dlink1* %39, %struct.dlink1** %1, align 8
  br label %40

40:                                               ; preds = %1143, %0
  %41 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %42 = icmp ne %struct.dlink1* %41, null
  br i1 %42, label %43, label %1147

43:                                               ; preds = %40
  %44 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %45 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %7, align 4
  %47 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %47, i64 %49
  %51 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %1143

55:                                               ; preds = %43
  %56 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %56, i64 %58
  %60 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  %62 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %62, i64 %64
  %66 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %68, i64 %70
  %72 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %75 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @tprop(%struct.tnode* noundef %75, i32 noundef %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %74, i64 %78
  %80 = load %struct.dlink1*, %struct.dlink1** %79, align 8
  store %struct.dlink1* %80, %struct.dlink1** %4, align 8
  store i32 -100000, i32* %19, align 4
  br label %81

81:                                               ; preds = %1138, %55
  %82 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %83 = icmp ne %struct.dlink1* %82, null
  br i1 %83, label %84, label %1142

84:                                               ; preds = %81
  %85 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %86 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %24, align 4
  %88 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %89 = load i32, i32* %24, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %88, i64 %90
  %92 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %1138

96:                                               ; preds = %84
  %97 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %98 = load i32, i32* %24, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %97, i64 %99
  %101 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %23, align 4
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %1142

107:                                              ; preds = %96
  %108 = load i32, i32* %23, align 4
  %109 = load i32, i32* %19, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %1138

112:                                              ; preds = %107
  %113 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %114 = load i32, i32* %24, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %113, i64 %115
  %117 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %22, align 4
  %119 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %120 = load i32, i32* %24, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %119, i64 %121
  %123 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %21, align 4
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %112
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128, %112
  br label %1138

133:                                              ; preds = %128
  %134 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %134, i64 %136
  %138 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %133
  %142 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %143 = load i32, i32* %24, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %142, i64 %144
  %146 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %141
  %150 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %151 = load i32, i32* %24, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %150, i64 %152
  %154 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %161

157:                                              ; preds = %149
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %162, label %161

161:                                              ; preds = %157, %149
  br label %1138

162:                                              ; preds = %157, %141
  br label %177

163:                                              ; preds = %133
  %164 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %165 = load i32, i32* %24, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %164, i64 %166
  %168 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %176

171:                                              ; preds = %163
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %1138

176:                                              ; preds = %171, %163
  br label %177

177:                                              ; preds = %176, %162
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %27, align 4
  %179 = load i32, i32* %23, align 4
  store i32 %179, i32* %25, align 4
  %180 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %181 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @tprop(%struct.tnode* noundef %181, i32 noundef %182)
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %180, i64 %184
  %186 = load %struct.dlink1*, %struct.dlink1** %185, align 8
  store %struct.dlink1* %186, %struct.dlink1** %2, align 8
  br label %187

187:                                              ; preds = %1133, %177
  %188 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %189 = icmp ne %struct.dlink1* %188, null
  br i1 %189, label %190, label %1137

190:                                              ; preds = %187
  %191 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %192 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  store i32 %193, i32* %20, align 4
  %194 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %194, i64 %196
  %198 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %190
  br label %1133

202:                                              ; preds = %190
  %203 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %204 = load i32, i32* %20, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %203, i64 %205
  %207 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %19, align 4
  %209 = load i32, i32* %19, align 4
  %210 = load i32, i32* %23, align 4
  %211 = icmp sge i32 %209, %210
  br i1 %211, label %213, label %212

212:                                              ; preds = %202
  br label %1133

213:                                              ; preds = %202
  %214 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %214, i64 %216
  %218 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %18, align 4
  %220 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %221 = load i32, i32* %20, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %220, i64 %222
  %224 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %17, align 4
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp sgt i32 %226, %227
  br i1 %228, label %233, label %229

229:                                              ; preds = %213
  %230 = load i32, i32* %17, align 4
  %231 = load i32, i32* %10, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %229, %213
  br label %1133

234:                                              ; preds = %229
  %235 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %235, i64 %237
  %239 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %264

242:                                              ; preds = %234
  %243 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %244 = load i32, i32* %20, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %243, i64 %245
  %247 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %263, label %250

250:                                              ; preds = %242
  %251 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %252 = load i32, i32* %20, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %251, i64 %253
  %255 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %262

258:                                              ; preds = %250
  %259 = load i32, i32* %19, align 4
  %260 = load i32, i32* %9, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %263, label %262

262:                                              ; preds = %258, %250
  br label %1133

263:                                              ; preds = %258, %242
  br label %278

264:                                              ; preds = %234
  %265 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %266 = load i32, i32* %20, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %265, i64 %267
  %269 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %277

272:                                              ; preds = %264
  %273 = load i32, i32* %17, align 4
  %274 = load i32, i32* %10, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  br label %1133

277:                                              ; preds = %272, %264
  br label %278

278:                                              ; preds = %277, %263
  %279 = load i32, i32* %19, align 4
  store i32 %279, i32* %26, align 4
  %280 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %281 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %282 = load i32, i32* %10, align 4
  %283 = call i32 @tprop(%struct.tnode* noundef %281, i32 noundef %282)
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %280, i64 %284
  %286 = load %struct.dlink1*, %struct.dlink1** %285, align 8
  store %struct.dlink1* %286, %struct.dlink1** %3, align 8
  store i32 0, i32* %33, align 4
  br label %287

287:                                              ; preds = %668, %278
  %288 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %289 = icmp ne %struct.dlink1* %288, null
  br i1 %289, label %290, label %672

290:                                              ; preds = %287
  %291 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %292 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  store i32 %293, i32* %11, align 4
  %294 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %295 = load i32, i32* %11, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %294, i64 %296
  %298 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %290
  br label %668

302:                                              ; preds = %290
  %303 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %303, i64 %305
  %307 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %14, align 4
  %309 = load i32, i32* %14, align 4
  %310 = load i32, i32* %10, align 4
  %311 = icmp sge i32 %309, %310
  br i1 %311, label %313, label %312

312:                                              ; preds = %302
  br label %668

313:                                              ; preds = %302
  %314 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %315 = load i32, i32* %11, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %314, i64 %316
  %318 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %12, align 4
  %320 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %321 = load i32, i32* %11, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %320, i64 %322
  %324 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %13, align 4
  %326 = load i32, i32* %12, align 4
  %327 = load i32, i32* %26, align 4
  %328 = icmp sgt i32 %326, %327
  br i1 %328, label %333, label %329

329:                                              ; preds = %313
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* %25, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %329, %313
  br label %668

334:                                              ; preds = %329
  %335 = load i32, i32* %26, align 4
  %336 = load i32, i32* %25, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %415

338:                                              ; preds = %334
  %339 = load i32, i32* %12, align 4
  %340 = load i32, i32* %25, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %375, label %342

342:                                              ; preds = %338
  %343 = load i32, i32* %12, align 4
  %344 = load i32, i32* %25, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %414

346:                                              ; preds = %342
  %347 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %348 = load i32, i32* %11, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %347, i64 %349
  %351 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %375, label %354

354:                                              ; preds = %346
  %355 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %356 = load i32, i32* %11, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %355, i64 %357
  %359 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %414

362:                                              ; preds = %354
  %363 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %364 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %365 = load i32, i32* %11, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %364, i64 %366
  %368 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %367, i32 0, i32 8
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %363, i64 %370
  %372 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 4
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %375, label %414

375:                                              ; preds = %362, %346, %338
  %376 = load i32, i32* %13, align 4
  %377 = load i32, i32* %26, align 4
  %378 = icmp sgt i32 %376, %377
  br i1 %378, label %412, label %379

379:                                              ; preds = %375
  %380 = load i32, i32* %13, align 4
  %381 = load i32, i32* %26, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %414

383:                                              ; preds = %379
  %384 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %385 = load i32, i32* %11, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %384, i64 %386
  %388 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %387, i32 0, i32 6
  %389 = load i32, i32* %388, align 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %412, label %391

391:                                              ; preds = %383
  %392 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %393 = load i32, i32* %11, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %392, i64 %394
  %396 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 4
  %398 = icmp slt i32 %397, 0
  br i1 %398, label %399, label %414

399:                                              ; preds = %391
  %400 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %401 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %402 = load i32, i32* %11, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %401, i64 %403
  %405 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %404, i32 0, i32 7
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %400, i64 %407
  %409 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %408, i32 0, i32 5
  %410 = load i32, i32* %409, align 4
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %399, %383, %375
  %413 = load i32, i32* %11, align 4
  store i32 %413, i32* %16, align 4
  store i32 %413, i32* %15, align 4
  store i32 4, i32* %33, align 4
  br label %414

414:                                              ; preds = %412, %399, %391, %379, %362, %354, %342
  br label %663

415:                                              ; preds = %334
  %416 = load i32, i32* %33, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %528

418:                                              ; preds = %415
  %419 = load i32, i32* %12, align 4
  %420 = load i32, i32* %25, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %455, label %422

422:                                              ; preds = %418
  %423 = load i32, i32* %12, align 4
  %424 = load i32, i32* %25, align 4
  %425 = icmp eq i32 %423, %424
  br i1 %425, label %426, label %527

426:                                              ; preds = %422
  %427 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %428 = load i32, i32* %11, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %427, i64 %429
  %431 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %430, i32 0, i32 6
  %432 = load i32, i32* %431, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %455, label %434

434:                                              ; preds = %426
  %435 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %436 = load i32, i32* %11, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %435, i64 %437
  %439 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %438, i32 0, i32 5
  %440 = load i32, i32* %439, align 4
  %441 = icmp slt i32 %440, 0
  br i1 %441, label %442, label %527

442:                                              ; preds = %434
  %443 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %444 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %445 = load i32, i32* %11, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %444, i64 %446
  %448 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %447, i32 0, i32 8
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %443, i64 %450
  %452 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %451, i32 0, i32 5
  %453 = load i32, i32* %452, align 4
  %454 = icmp slt i32 %453, 0
  br i1 %454, label %455, label %527

455:                                              ; preds = %442, %426, %418
  %456 = load i32, i32* %13, align 4
  %457 = load i32, i32* %25, align 4
  %458 = icmp sgt i32 %456, %457
  br i1 %458, label %471, label %459

459:                                              ; preds = %455
  %460 = load i32, i32* %13, align 4
  %461 = load i32, i32* %25, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %527

463:                                              ; preds = %459
  %464 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %465 = load i32, i32* %11, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %464, i64 %466
  %468 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %467, i32 0, i32 6
  %469 = load i32, i32* %468, align 4
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %527

471:                                              ; preds = %463, %455
  %472 = load i32, i32* %12, align 4
  %473 = load i32, i32* %26, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %487, label %475

475:                                              ; preds = %471
  %476 = load i32, i32* %12, align 4
  %477 = load i32, i32* %26, align 4
  %478 = icmp eq i32 %476, %477
  br i1 %478, label %479, label %526

479:                                              ; preds = %475
  %480 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %481 = load i32, i32* %11, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %480, i64 %482
  %484 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %483, i32 0, i32 6
  %485 = load i32, i32* %484, align 4
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %526

487:                                              ; preds = %479, %471
  %488 = load i32, i32* %13, align 4
  %489 = load i32, i32* %26, align 4
  %490 = icmp sgt i32 %488, %489
  br i1 %490, label %524, label %491

491:                                              ; preds = %487
  %492 = load i32, i32* %13, align 4
  %493 = load i32, i32* %26, align 4
  %494 = icmp eq i32 %492, %493
  br i1 %494, label %495, label %526

495:                                              ; preds = %491
  %496 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %497 = load i32, i32* %11, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %496, i64 %498
  %500 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %499, i32 0, i32 6
  %501 = load i32, i32* %500, align 4
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %524, label %503

503:                                              ; preds = %495
  %504 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %505 = load i32, i32* %11, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %504, i64 %506
  %508 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %507, i32 0, i32 5
  %509 = load i32, i32* %508, align 4
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %511, label %526

511:                                              ; preds = %503
  %512 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %513 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %514 = load i32, i32* %11, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %513, i64 %515
  %517 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %516, i32 0, i32 7
  %518 = load i32, i32* %517, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %512, i64 %519
  %521 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %520, i32 0, i32 5
  %522 = load i32, i32* %521, align 4
  %523 = icmp sgt i32 %522, 0
  br i1 %523, label %524, label %526

524:                                              ; preds = %511, %495, %487
  %525 = load i32, i32* %11, align 4
  store i32 %525, i32* %16, align 4
  store i32 %525, i32* %15, align 4
  store i32 4, i32* %33, align 4
  br label %526

526:                                              ; preds = %524, %511, %503, %491, %479, %475
  br label %527

527:                                              ; preds = %526, %463, %459, %442, %434, %422
  br label %528

528:                                              ; preds = %527, %415
  %529 = load i32, i32* %33, align 4
  %530 = icmp eq i32 %529, 1
  br i1 %530, label %534, label %531

531:                                              ; preds = %528
  %532 = load i32, i32* %33, align 4
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %595

534:                                              ; preds = %531, %528
  %535 = load i32, i32* %12, align 4
  %536 = load i32, i32* %26, align 4
  %537 = icmp slt i32 %535, %536
  br i1 %537, label %550, label %538

538:                                              ; preds = %534
  %539 = load i32, i32* %12, align 4
  %540 = load i32, i32* %26, align 4
  %541 = icmp eq i32 %539, %540
  br i1 %541, label %542, label %594

542:                                              ; preds = %538
  %543 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %544 = load i32, i32* %11, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %543, i64 %545
  %547 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %546, i32 0, i32 6
  %548 = load i32, i32* %547, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %594

550:                                              ; preds = %542, %534
  %551 = load i32, i32* %13, align 4
  %552 = load i32, i32* %26, align 4
  %553 = icmp sgt i32 %551, %552
  br i1 %553, label %587, label %554

554:                                              ; preds = %550
  %555 = load i32, i32* %13, align 4
  %556 = load i32, i32* %26, align 4
  %557 = icmp eq i32 %555, %556
  br i1 %557, label %558, label %594

558:                                              ; preds = %554
  %559 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %560 = load i32, i32* %11, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %559, i64 %561
  %563 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %562, i32 0, i32 6
  %564 = load i32, i32* %563, align 4
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %587, label %566

566:                                              ; preds = %558
  %567 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %568 = load i32, i32* %11, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %567, i64 %569
  %571 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %570, i32 0, i32 5
  %572 = load i32, i32* %571, align 4
  %573 = icmp slt i32 %572, 0
  br i1 %573, label %574, label %594

574:                                              ; preds = %566
  %575 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %576 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %577 = load i32, i32* %11, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %576, i64 %578
  %580 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %579, i32 0, i32 7
  %581 = load i32, i32* %580, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %575, i64 %582
  %584 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %583, i32 0, i32 5
  %585 = load i32, i32* %584, align 4
  %586 = icmp sgt i32 %585, 0
  br i1 %586, label %587, label %594

587:                                              ; preds = %574, %558, %550
  %588 = load i32, i32* %11, align 4
  store i32 %588, i32* %16, align 4
  %589 = load i32, i32* %33, align 4
  %590 = icmp eq i32 %589, 1
  br i1 %590, label %591, label %592

591:                                              ; preds = %587
  store i32 3, i32* %33, align 4
  br label %593

592:                                              ; preds = %587
  store i32 2, i32* %33, align 4
  br label %593

593:                                              ; preds = %592, %591
  br label %594

594:                                              ; preds = %593, %574, %566, %554, %542, %538
  br label %595

595:                                              ; preds = %594, %531
  %596 = load i32, i32* %33, align 4
  %597 = icmp eq i32 %596, 2
  br i1 %597, label %601, label %598

598:                                              ; preds = %595
  %599 = load i32, i32* %33, align 4
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %662

601:                                              ; preds = %598, %595
  %602 = load i32, i32* %12, align 4
  %603 = load i32, i32* %25, align 4
  %604 = icmp slt i32 %602, %603
  br i1 %604, label %638, label %605

605:                                              ; preds = %601
  %606 = load i32, i32* %12, align 4
  %607 = load i32, i32* %25, align 4
  %608 = icmp eq i32 %606, %607
  br i1 %608, label %609, label %661

609:                                              ; preds = %605
  %610 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %611 = load i32, i32* %11, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %610, i64 %612
  %614 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %613, i32 0, i32 6
  %615 = load i32, i32* %614, align 4
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %638, label %617

617:                                              ; preds = %609
  %618 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %619 = load i32, i32* %11, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %618, i64 %620
  %622 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %621, i32 0, i32 5
  %623 = load i32, i32* %622, align 4
  %624 = icmp slt i32 %623, 0
  br i1 %624, label %625, label %661

625:                                              ; preds = %617
  %626 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %627 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %628 = load i32, i32* %11, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %627, i64 %629
  %631 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %630, i32 0, i32 8
  %632 = load i32, i32* %631, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %626, i64 %633
  %635 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %634, i32 0, i32 5
  %636 = load i32, i32* %635, align 4
  %637 = icmp slt i32 %636, 0
  br i1 %637, label %638, label %661

638:                                              ; preds = %625, %609, %601
  %639 = load i32, i32* %13, align 4
  %640 = load i32, i32* %25, align 4
  %641 = icmp sgt i32 %639, %640
  br i1 %641, label %654, label %642

642:                                              ; preds = %638
  %643 = load i32, i32* %13, align 4
  %644 = load i32, i32* %25, align 4
  %645 = icmp eq i32 %643, %644
  br i1 %645, label %646, label %661

646:                                              ; preds = %642
  %647 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %648 = load i32, i32* %11, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %647, i64 %649
  %651 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %650, i32 0, i32 6
  %652 = load i32, i32* %651, align 4
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %661

654:                                              ; preds = %646, %638
  %655 = load i32, i32* %11, align 4
  store i32 %655, i32* %15, align 4
  %656 = load i32, i32* %33, align 4
  %657 = icmp eq i32 %656, 2
  br i1 %657, label %658, label %659

658:                                              ; preds = %654
  store i32 3, i32* %33, align 4
  br label %660

659:                                              ; preds = %654
  store i32 1, i32* %33, align 4
  br label %660

660:                                              ; preds = %659, %658
  br label %661

661:                                              ; preds = %660, %646, %642, %625, %617, %605
  br label %662

662:                                              ; preds = %661, %598
  br label %663

663:                                              ; preds = %662, %414
  %664 = load i32, i32* %33, align 4
  %665 = icmp slt i32 %664, 3
  br i1 %665, label %666, label %667

666:                                              ; preds = %663
  br label %668

667:                                              ; preds = %663
  br label %672

668:                                              ; preds = %666, %333, %312, %301
  %669 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %670 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %669, i32 0, i32 2
  %671 = load %struct.dlink1*, %struct.dlink1** %670, align 8
  store %struct.dlink1* %671, %struct.dlink1** %3, align 8
  br label %287, !llvm.loop !4

672:                                              ; preds = %667, %287
  %673 = load i32, i32* %33, align 4
  %674 = icmp slt i32 %673, 3
  br i1 %674, label %675, label %676

675:                                              ; preds = %672
  br label %1137

676:                                              ; preds = %672
  %677 = load i32, i32* %14, align 4
  store i32 %677, i32* %28, align 4
  %678 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %679 = load i32, i32* %15, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %678, i64 %680
  %682 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %681, i32 0, i32 3
  %683 = load i32, i32* %682, align 4
  %684 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %685 = load i32, i32* %16, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %684, i64 %686
  %688 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %687, i32 0, i32 3
  %689 = load i32, i32* %688, align 4
  %690 = icmp slt i32 %683, %689
  br i1 %690, label %691, label %704

691:                                              ; preds = %676
  %692 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %693 = load i32, i32* %16, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %692, i64 %694
  %696 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %695, i32 0, i32 1
  %697 = load i32, i32* %696, align 4
  store i32 %697, i32* %35, align 4
  %698 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %699 = load i32, i32* %16, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %698, i64 %700
  %702 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %701, i32 0, i32 2
  %703 = load i32, i32* %702, align 4
  store i32 %703, i32* %36, align 4
  br label %745

704:                                              ; preds = %676
  %705 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %706 = load i32, i32* %15, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %705, i64 %707
  %709 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %708, i32 0, i32 3
  %710 = load i32, i32* %709, align 4
  %711 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %712 = load i32, i32* %16, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %711, i64 %713
  %715 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %714, i32 0, i32 3
  %716 = load i32, i32* %715, align 4
  %717 = icmp sgt i32 %710, %716
  br i1 %717, label %718, label %731

718:                                              ; preds = %704
  %719 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %720 = load i32, i32* %15, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %719, i64 %721
  %723 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %722, i32 0, i32 1
  %724 = load i32, i32* %723, align 4
  store i32 %724, i32* %35, align 4
  %725 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %726 = load i32, i32* %15, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %725, i64 %727
  %729 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %728, i32 0, i32 2
  %730 = load i32, i32* %729, align 4
  store i32 %730, i32* %36, align 4
  br label %744

731:                                              ; preds = %704
  %732 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %733 = load i32, i32* %15, align 4
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %732, i64 %734
  %736 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %735, i32 0, i32 1
  %737 = load i32, i32* %736, align 4
  store i32 %737, i32* %35, align 4
  %738 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %739 = load i32, i32* %16, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %738, i64 %740
  %742 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %741, i32 0, i32 2
  %743 = load i32, i32* %742, align 4
  store i32 %743, i32* %36, align 4
  br label %744

744:                                              ; preds = %731, %718
  br label %745

745:                                              ; preds = %744, %691
  %746 = load i32, i32* %21, align 4
  %747 = load i32, i32* %28, align 4
  %748 = icmp sle i32 %746, %747
  br i1 %748, label %749, label %888

749:                                              ; preds = %745
  %750 = load i32, i32* %35, align 4
  %751 = load i32, i32* %25, align 4
  %752 = icmp slt i32 %750, %751
  br i1 %752, label %753, label %888

753:                                              ; preds = %749
  %754 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %755 = load i32, i32* %15, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %754, i64 %756
  %758 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %757, i32 0, i32 6
  %759 = load i32, i32* %758, align 4
  store i32 %759, i32* %34, align 4
  %760 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %761 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %762 = load i32, i32* %25, align 4
  %763 = call i32 @tprop(%struct.tnode* noundef %761, i32 noundef %762)
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %760, i64 %764
  %766 = load %struct.dlink1*, %struct.dlink1** %765, align 8
  store %struct.dlink1* %766, %struct.dlink1** %5, align 8
  %767 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %768 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %769 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %768, i32 0, i32 0
  %770 = load i32, i32* %769, align 8
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %767, i64 %771
  %773 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %772, i32 0, i32 3
  %774 = load i32, i32* %773, align 4
  store i32 %774, i32* %30, align 4
  %775 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %776 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %775, i32 0, i32 2
  %777 = load %struct.dlink1*, %struct.dlink1** %776, align 8
  store %struct.dlink1* %777, %struct.dlink1** %5, align 8
  br label %778

778:                                              ; preds = %794, %753
  %779 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %780 = icmp ne %struct.dlink1* %779, null
  br i1 %780, label %781, label %798

781:                                              ; preds = %778
  %782 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %783 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %784 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %783, i32 0, i32 0
  %785 = load i32, i32* %784, align 8
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %782, i64 %786
  %788 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %787, i32 0, i32 3
  %789 = load i32, i32* %788, align 4
  %790 = load i32, i32* %30, align 4
  %791 = icmp sgt i32 %789, %790
  br i1 %791, label %792, label %793

792:                                              ; preds = %781
  br label %798

793:                                              ; preds = %781
  br label %794

794:                                              ; preds = %793
  %795 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %796 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %795, i32 0, i32 2
  %797 = load %struct.dlink1*, %struct.dlink1** %796, align 8
  store %struct.dlink1* %797, %struct.dlink1** %5, align 8
  br label %778, !llvm.loop !6

798:                                              ; preds = %792, %778
  %799 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %800 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %799, i32 0, i32 1
  %801 = load %struct.dlink1*, %struct.dlink1** %800, align 8
  store %struct.dlink1* %801, %struct.dlink1** %5, align 8
  br label %802

802:                                              ; preds = %883, %798
  %803 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %804 = icmp ne %struct.dlink1* %803, null
  br i1 %804, label %805, label %887

805:                                              ; preds = %802
  %806 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %807 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %808 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %807, i32 0, i32 0
  %809 = load i32, i32* %808, align 8
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %806, i64 %810
  %812 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %811, i32 0, i32 5
  %813 = load i32, i32* %812, align 4
  %814 = icmp sgt i32 %813, 0
  br i1 %814, label %815, label %816

815:                                              ; preds = %805
  br label %883

816:                                              ; preds = %805
  %817 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %818 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %819 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %818, i32 0, i32 0
  %820 = load i32, i32* %819, align 8
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %817, i64 %821
  %823 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %822, i32 0, i32 2
  %824 = load i32, i32* %823, align 4
  store i32 %824, i32* %32, align 4
  %825 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %826 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %827 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %826, i32 0, i32 0
  %828 = load i32, i32* %827, align 8
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %825, i64 %829
  %831 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %830, i32 0, i32 1
  %832 = load i32, i32* %831, align 4
  store i32 %832, i32* %31, align 4
  %833 = load i32, i32* %31, align 4
  %834 = load i32, i32* %28, align 4
  %835 = icmp sgt i32 %833, %834
  br i1 %835, label %840, label %836

836:                                              ; preds = %816
  %837 = load i32, i32* %32, align 4
  %838 = load i32, i32* %28, align 4
  %839 = icmp slt i32 %837, %838
  br i1 %839, label %840, label %841

840:                                              ; preds = %836, %816
  br label %883

841:                                              ; preds = %836
  %842 = load i32, i32* %34, align 4
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %844, label %854

844:                                              ; preds = %841
  %845 = load i32, i32* %31, align 4
  %846 = load i32, i32* %28, align 4
  %847 = icmp eq i32 %845, %846
  br i1 %847, label %848, label %853

848:                                              ; preds = %844
  %849 = load i32, i32* %32, align 4
  %850 = load i32, i32* %31, align 4
  %851 = icmp sgt i32 %849, %850
  br i1 %851, label %852, label %853

852:                                              ; preds = %848
  br label %883

853:                                              ; preds = %848, %844
  br label %874

854:                                              ; preds = %841
  %855 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %856 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %857 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %856, i32 0, i32 0
  %858 = load i32, i32* %857, align 8
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %855, i64 %859
  %861 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %860, i32 0, i32 6
  %862 = load i32, i32* %861, align 4
  %863 = icmp eq i32 %862, 1
  br i1 %863, label %864, label %873

864:                                              ; preds = %854
  %865 = load i32, i32* %31, align 4
  %866 = load i32, i32* %28, align 4
  %867 = icmp eq i32 %865, %866
  br i1 %867, label %872, label %868

868:                                              ; preds = %864
  %869 = load i32, i32* %32, align 4
  %870 = load i32, i32* %28, align 4
  %871 = icmp eq i32 %869, %870
  br i1 %871, label %872, label %873

872:                                              ; preds = %868, %864
  br label %883

873:                                              ; preds = %868, %854
  br label %874

874:                                              ; preds = %873, %853
  %875 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %876 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %877 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %876, i32 0, i32 0
  %878 = load i32, i32* %877, align 8
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %875, i64 %879
  %881 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %880, i32 0, i32 3
  %882 = load i32, i32* %881, align 4
  store i32 %882, i32* %25, align 4
  br label %887

883:                                              ; preds = %872, %852, %840, %815
  %884 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %885 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %884, i32 0, i32 1
  %886 = load %struct.dlink1*, %struct.dlink1** %885, align 8
  store %struct.dlink1* %886, %struct.dlink1** %5, align 8
  br label %802, !llvm.loop !7

887:                                              ; preds = %874, %802
  br label %888

888:                                              ; preds = %887, %749, %745
  %889 = load i32, i32* %17, align 4
  %890 = load i32, i32* %28, align 4
  %891 = icmp sle i32 %889, %890
  br i1 %891, label %892, label %996

892:                                              ; preds = %888
  %893 = load i32, i32* %36, align 4
  %894 = load i32, i32* %26, align 4
  %895 = icmp sgt i32 %893, %894
  br i1 %895, label %896, label %996

896:                                              ; preds = %892
  %897 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %898 = load i32, i32* %16, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %897, i64 %899
  %901 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %900, i32 0, i32 6
  %902 = load i32, i32* %901, align 4
  store i32 %902, i32* %34, align 4
  %903 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %904 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %905 = load i32, i32* %26, align 4
  %906 = call i32 @tprop(%struct.tnode* noundef %904, i32 noundef %905)
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %903, i64 %907
  %909 = load %struct.dlink1*, %struct.dlink1** %908, align 8
  store %struct.dlink1* %909, %struct.dlink1** %6, align 8
  br label %910

910:                                              ; preds = %991, %896
  %911 = load %struct.dlink1*, %struct.dlink1** %6, align 8
  %912 = icmp ne %struct.dlink1* %911, null
  br i1 %912, label %913, label %995

913:                                              ; preds = %910
  %914 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %915 = load %struct.dlink1*, %struct.dlink1** %6, align 8
  %916 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %915, i32 0, i32 0
  %917 = load i32, i32* %916, align 8
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %914, i64 %918
  %920 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %919, i32 0, i32 5
  %921 = load i32, i32* %920, align 4
  %922 = icmp slt i32 %921, 0
  br i1 %922, label %923, label %924

923:                                              ; preds = %913
  br label %991

924:                                              ; preds = %913
  %925 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %926 = load %struct.dlink1*, %struct.dlink1** %6, align 8
  %927 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %926, i32 0, i32 0
  %928 = load i32, i32* %927, align 8
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %925, i64 %929
  %931 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %930, i32 0, i32 2
  %932 = load i32, i32* %931, align 4
  store i32 %932, i32* %32, align 4
  %933 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %934 = load %struct.dlink1*, %struct.dlink1** %6, align 8
  %935 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %934, i32 0, i32 0
  %936 = load i32, i32* %935, align 8
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %933, i64 %937
  %939 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %938, i32 0, i32 1
  %940 = load i32, i32* %939, align 4
  store i32 %940, i32* %31, align 4
  %941 = load i32, i32* %31, align 4
  %942 = load i32, i32* %28, align 4
  %943 = icmp sgt i32 %941, %942
  br i1 %943, label %948, label %944

944:                                              ; preds = %924
  %945 = load i32, i32* %32, align 4
  %946 = load i32, i32* %28, align 4
  %947 = icmp slt i32 %945, %946
  br i1 %947, label %948, label %949

948:                                              ; preds = %944, %924
  br label %991

949:                                              ; preds = %944
  %950 = load i32, i32* %34, align 4
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %952, label %962

952:                                              ; preds = %949
  %953 = load i32, i32* %31, align 4
  %954 = load i32, i32* %28, align 4
  %955 = icmp eq i32 %953, %954
  br i1 %955, label %956, label %961

956:                                              ; preds = %952
  %957 = load i32, i32* %32, align 4
  %958 = load i32, i32* %31, align 4
  %959 = icmp sgt i32 %957, %958
  br i1 %959, label %960, label %961

960:                                              ; preds = %956
  br label %991

961:                                              ; preds = %956, %952
  br label %982

962:                                              ; preds = %949
  %963 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %964 = load %struct.dlink1*, %struct.dlink1** %6, align 8
  %965 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %964, i32 0, i32 0
  %966 = load i32, i32* %965, align 8
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %963, i64 %967
  %969 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %968, i32 0, i32 6
  %970 = load i32, i32* %969, align 4
  %971 = icmp eq i32 %970, 1
  br i1 %971, label %972, label %981

972:                                              ; preds = %962
  %973 = load i32, i32* %31, align 4
  %974 = load i32, i32* %28, align 4
  %975 = icmp eq i32 %973, %974
  br i1 %975, label %980, label %976

976:                                              ; preds = %972
  %977 = load i32, i32* %32, align 4
  %978 = load i32, i32* %28, align 4
  %979 = icmp eq i32 %977, %978
  br i1 %979, label %980, label %981

980:                                              ; preds = %976, %972
  br label %991

981:                                              ; preds = %976, %962
  br label %982

982:                                              ; preds = %981, %961
  %983 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %984 = load %struct.dlink1*, %struct.dlink1** %6, align 8
  %985 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %984, i32 0, i32 0
  %986 = load i32, i32* %985, align 8
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %983, i64 %987
  %989 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %988, i32 0, i32 3
  %990 = load i32, i32* %989, align 4
  store i32 %990, i32* %26, align 4
  br label %995

991:                                              ; preds = %980, %960, %948, %923
  %992 = load %struct.dlink1*, %struct.dlink1** %6, align 8
  %993 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %992, i32 0, i32 2
  %994 = load %struct.dlink1*, %struct.dlink1** %993, align 8
  store %struct.dlink1* %994, %struct.dlink1** %6, align 8
  br label %910, !llvm.loop !8

995:                                              ; preds = %982, %910
  br label %996

996:                                              ; preds = %995, %892, %888
  %997 = load i32, i32* %25, align 4
  %998 = load i32, i32* %26, align 4
  %999 = load i32, i32* %27, align 4
  %1000 = load i32, i32* %28, align 4
  %1001 = call i32 @backCheck(i32 noundef %997, i32 noundef %998, i32 noundef %999, i32 noundef %1000)
  %1002 = icmp ne i32 %1001, 0
  br i1 %1002, label %1003, label %1004

1003:                                             ; preds = %996
  br label %1137

1004:                                             ; preds = %996
  %1005 = load i32, i32* @numRects, align 4
  %1006 = add nsw i32 %1005, 1
  store i32 %1006, i32* @numRects, align 4
  %1007 = srem i32 %1006, 100
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1009, label %1018

1009:                                             ; preds = %1004
  %1010 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1011 = bitcast %struct.rect* %1010 to i8*
  %1012 = load i32, i32* @numRects, align 4
  %1013 = add nsw i32 %1012, 100
  %1014 = sext i32 %1013 to i64
  %1015 = mul i64 %1014, 52
  %1016 = call i8* @realloc(i8* noundef %1011, i64 noundef %1015) #3
  %1017 = bitcast i8* %1016 to %struct.rect*
  store %struct.rect* %1017, %struct.rect** @rectArray, align 8
  br label %1018

1018:                                             ; preds = %1009, %1004
  %1019 = load i32, i32* %25, align 4
  %1020 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1021 = load i32, i32* @numRects, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds %struct.rect, %struct.rect* %1020, i64 %1022
  %1024 = getelementptr inbounds %struct.rect, %struct.rect* %1023, i32 0, i32 4
  store i32 %1019, i32* %1024, align 4
  %1025 = load i32, i32* %26, align 4
  %1026 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1027 = load i32, i32* @numRects, align 4
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds %struct.rect, %struct.rect* %1026, i64 %1028
  %1030 = getelementptr inbounds %struct.rect, %struct.rect* %1029, i32 0, i32 5
  store i32 %1025, i32* %1030, align 4
  %1031 = load i32, i32* %27, align 4
  %1032 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1033 = load i32, i32* @numRects, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = getelementptr inbounds %struct.rect, %struct.rect* %1032, i64 %1034
  %1036 = getelementptr inbounds %struct.rect, %struct.rect* %1035, i32 0, i32 6
  store i32 %1031, i32* %1036, align 4
  %1037 = load i32, i32* %28, align 4
  %1038 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1039 = load i32, i32* @numRects, align 4
  %1040 = sext i32 %1039 to i64
  %1041 = getelementptr inbounds %struct.rect, %struct.rect* %1038, i64 %1040
  %1042 = getelementptr inbounds %struct.rect, %struct.rect* %1041, i32 0, i32 7
  store i32 %1037, i32* %1042, align 4
  %1043 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1044 = load i32, i32* @numRects, align 4
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds %struct.rect, %struct.rect* %1043, i64 %1045
  %1047 = getelementptr inbounds %struct.rect, %struct.rect* %1046, i32 0, i32 8
  store i32 0, i32* %1047, align 4
  %1048 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1049 = load i32, i32* @numRects, align 4
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds %struct.rect, %struct.rect* %1048, i64 %1050
  %1052 = getelementptr inbounds %struct.rect, %struct.rect* %1051, i32 0, i32 9
  store i32 0, i32* %1052, align 4
  %1053 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1054 = load i32, i32* @numRects, align 4
  %1055 = sext i32 %1054 to i64
  %1056 = getelementptr inbounds %struct.rect, %struct.rect* %1053, i64 %1055
  %1057 = getelementptr inbounds %struct.rect, %struct.rect* %1056, i32 0, i32 10
  store i32 0, i32* %1057, align 4
  %1058 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1059 = load i32, i32* @numRects, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds %struct.rect, %struct.rect* %1058, i64 %1060
  %1062 = getelementptr inbounds %struct.rect, %struct.rect* %1061, i32 0, i32 11
  store i32 0, i32* %1062, align 4
  %1063 = load i32, i32* %25, align 4
  %1064 = load i32, i32* %26, align 4
  %1065 = add nsw i32 %1063, %1064
  %1066 = sdiv i32 %1065, 2
  %1067 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1068 = load i32, i32* @numRects, align 4
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds %struct.rect, %struct.rect* %1067, i64 %1069
  %1071 = getelementptr inbounds %struct.rect, %struct.rect* %1070, i32 0, i32 0
  store i32 %1066, i32* %1071, align 4
  %1072 = load i32, i32* %27, align 4
  %1073 = load i32, i32* %28, align 4
  %1074 = add nsw i32 %1072, %1073
  %1075 = sdiv i32 %1074, 2
  %1076 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1077 = load i32, i32* @numRects, align 4
  %1078 = sext i32 %1077 to i64
  %1079 = getelementptr inbounds %struct.rect, %struct.rect* %1076, i64 %1078
  %1080 = getelementptr inbounds %struct.rect, %struct.rect* %1079, i32 0, i32 1
  store i32 %1075, i32* %1080, align 4
  %1081 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1082 = load i32, i32* @numRects, align 4
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds %struct.rect, %struct.rect* %1081, i64 %1083
  %1085 = getelementptr inbounds %struct.rect, %struct.rect* %1084, i32 0, i32 2
  store i32 0, i32* %1085, align 4
  %1086 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1087 = load i32, i32* @numRects, align 4
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds %struct.rect, %struct.rect* %1086, i64 %1088
  %1090 = getelementptr inbounds %struct.rect, %struct.rect* %1089, i32 0, i32 3
  store i32 0, i32* %1090, align 4
  %1091 = load i32, i32* %25, align 4
  %1092 = load i32, i32* @numRects, align 4
  call void @tinsert(%struct.tnode** noundef @hRectRoot, i32 noundef %1091, i32 noundef %1092)
  %1093 = load i32, i32* %27, align 4
  %1094 = load i32, i32* @numRects, align 4
  call void @tinsert(%struct.tnode** noundef @vRectRoot, i32 noundef %1093, i32 noundef %1094)
  %1095 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %1096 = load i32, i32* @numRects, align 4
  %1097 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1098 = load i32, i32* @numRects, align 4
  %1099 = sext i32 %1098 to i64
  %1100 = getelementptr inbounds %struct.rect, %struct.rect* %1097, i64 %1099
  %1101 = getelementptr inbounds %struct.rect, %struct.rect* %1100, i32 0, i32 0
  %1102 = load i32, i32* %1101, align 4
  %1103 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %1104 = load i32, i32* @numRects, align 4
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr inbounds %struct.rect, %struct.rect* %1103, i64 %1105
  %1107 = getelementptr inbounds %struct.rect, %struct.rect* %1106, i32 0, i32 1
  %1108 = load i32, i32* %1107, align 4
  %1109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1095, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %1096, i32 noundef %1102, i32 noundef %1108)
  %1110 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %1111 = load i32, i32* %26, align 4
  %1112 = load i32, i32* %25, align 4
  %1113 = sub nsw i32 %1111, %1112
  %1114 = load i32, i32* %28, align 4
  %1115 = load i32, i32* %27, align 4
  %1116 = sub nsw i32 %1114, %1115
  %1117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1110, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %1113, i32 noundef %1116)
  %1118 = load i32, i32* @doPlacement, align 4
  %1119 = icmp ne i32 %1118, 0
  br i1 %1119, label %1120, label %1132

1120:                                             ; preds = %1018
  %1121 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %1122 = load i32, i32* @numRects, align 4
  %1123 = load i32, i32* %26, align 4
  %1124 = load i32, i32* %25, align 4
  %1125 = add nsw i32 %1123, %1124
  %1126 = sdiv i32 %1125, 2
  %1127 = load i32, i32* %28, align 4
  %1128 = load i32, i32* %27, align 4
  %1129 = add nsw i32 %1127, %1128
  %1130 = sdiv i32 %1129, 2
  %1131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1121, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef %1122, i32 noundef %1126, i32 noundef %1130)
  br label %1132

1132:                                             ; preds = %1120, %1018
  br label %1137

1133:                                             ; preds = %276, %262, %233, %212, %201
  %1134 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %1135 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %1134, i32 0, i32 2
  %1136 = load %struct.dlink1*, %struct.dlink1** %1135, align 8
  store %struct.dlink1* %1136, %struct.dlink1** %2, align 8
  br label %187, !llvm.loop !9

1137:                                             ; preds = %1132, %1003, %675, %187
  br label %1138

1138:                                             ; preds = %1137, %175, %161, %132, %111, %95
  %1139 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %1140 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %1139, i32 0, i32 2
  %1141 = load %struct.dlink1*, %struct.dlink1** %1140, align 8
  store %struct.dlink1* %1141, %struct.dlink1** %4, align 8
  br label %81, !llvm.loop !10

1142:                                             ; preds = %106, %81
  br label %1143

1143:                                             ; preds = %1142, %54
  %1144 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %1145 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %1144, i32 0, i32 2
  %1146 = load %struct.dlink1*, %struct.dlink1** %1145, align 8
  store %struct.dlink1* %1146, %struct.dlink1** %1, align 8
  br label %40, !llvm.loop !11

1147:                                             ; preds = %40
  call void @rectlink()
  call void @makeRLEtree()
  call void @makeRBEtree()
  %1148 = load i32, i32* @doPlacement, align 4
  %1149 = icmp ne i32 %1148, 0
  br i1 %1149, label %1150, label %1155

1150:                                             ; preds = %1147
  %1151 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %1152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1151, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %1153 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %1154 = call i32 @fclose(%struct._IO_FILE* noundef %1153)
  br label %1155

1155:                                             ; preds = %1150, %1147
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @tprop(%struct.tnode* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @backCheck(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @numRects, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %41, %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sge i32 %17, 1
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rect, %struct.rect* %20, i64 %22
  %24 = getelementptr inbounds %struct.rect, %struct.rect* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rect, %struct.rect* %26, i64 %28
  %30 = getelementptr inbounds %struct.rect, %struct.rect* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %19
  br label %41

40:                                               ; preds = %35
  br label %44

41:                                               ; preds = %39
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %10, align 4
  br label %16, !llvm.loop !12

44:                                               ; preds = %40, %16
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %70

48:                                               ; preds = %44
  %49 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rect, %struct.rect* %49, i64 %51
  %53 = getelementptr inbounds %struct.rect, %struct.rect* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.rect, %struct.rect* %55, i64 %57
  %59 = getelementptr inbounds %struct.rect, %struct.rect* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %48
  store i32 0, i32* %5, align 4
  br label %70

69:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %68, %47
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @rectlink() #0 {
  %1 = alloca %struct.tnode*, align 8
  %2 = alloca %struct.dlink2*, align 8
  %3 = alloca %struct.dlink2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dlink2* null, %struct.dlink2** @HRlist, align 8
  store %struct.dlink2* null, %struct.dlink2** @VRlist, align 8
  call void @tpop(%struct.tnode** noundef @hRectRoot, %struct.tnode** noundef %1, i32* noundef %4, i32* noundef %5)
  %6 = load %struct.tnode*, %struct.tnode** %1, align 8
  %7 = icmp eq %struct.tnode* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %70

9:                                                ; preds = %0
  %10 = call noalias i8* @malloc(i64 noundef 24) #3
  %11 = bitcast i8* %10 to %struct.dlink2*
  store %struct.dlink2* %11, %struct.dlink2** @HRlist, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  %14 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  %16 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %15, i32 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %16, align 8
  %17 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  %18 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %17, i32 0, i32 1
  store %struct.dlink2* null, %struct.dlink2** %18, align 8
  call void @tpop(%struct.tnode** noundef @vRectRoot, %struct.tnode** noundef %1, i32* noundef %4, i32* noundef %5)
  %19 = call noalias i8* @malloc(i64 noundef 24) #3
  %20 = bitcast i8* %19 to %struct.dlink2*
  store %struct.dlink2* %20, %struct.dlink2** @VRlist, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  %23 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  %25 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %24, i32 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %25, align 8
  %26 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  %27 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %26, i32 0, i32 1
  store %struct.dlink2* null, %struct.dlink2** %27, align 8
  %28 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  store %struct.dlink2* %28, %struct.dlink2** %3, align 8
  br label %29

29:                                               ; preds = %33, %9
  call void @tpop(%struct.tnode** noundef @hRectRoot, %struct.tnode** noundef %1, i32* noundef %4, i32* noundef %5)
  %30 = load %struct.tnode*, %struct.tnode** %1, align 8
  %31 = icmp eq %struct.tnode* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %48

33:                                               ; preds = %29
  %34 = call noalias i8* @malloc(i64 noundef 24) #3
  %35 = bitcast i8* %34 to %struct.dlink2*
  store %struct.dlink2* %35, %struct.dlink2** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.dlink2*, %struct.dlink2** %2, align 8
  %38 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dlink2*, %struct.dlink2** %3, align 8
  %40 = load %struct.dlink2*, %struct.dlink2** %2, align 8
  %41 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %40, i32 0, i32 1
  store %struct.dlink2* %39, %struct.dlink2** %41, align 8
  %42 = load %struct.dlink2*, %struct.dlink2** %2, align 8
  %43 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %42, i32 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %43, align 8
  %44 = load %struct.dlink2*, %struct.dlink2** %2, align 8
  %45 = load %struct.dlink2*, %struct.dlink2** %3, align 8
  %46 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %45, i32 0, i32 2
  store %struct.dlink2* %44, %struct.dlink2** %46, align 8
  %47 = load %struct.dlink2*, %struct.dlink2** %2, align 8
  store %struct.dlink2* %47, %struct.dlink2** %3, align 8
  br label %29

48:                                               ; preds = %32
  %49 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  store %struct.dlink2* %49, %struct.dlink2** %3, align 8
  br label %50

50:                                               ; preds = %54, %48
  call void @tpop(%struct.tnode** noundef @vRectRoot, %struct.tnode** noundef %1, i32* noundef %4, i32* noundef %5)
  %51 = load %struct.tnode*, %struct.tnode** %1, align 8
  %52 = icmp eq %struct.tnode* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %69

54:                                               ; preds = %50
  %55 = call noalias i8* @malloc(i64 noundef 24) #3
  %56 = bitcast i8* %55 to %struct.dlink2*
  store %struct.dlink2* %56, %struct.dlink2** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.dlink2*, %struct.dlink2** %2, align 8
  %59 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.dlink2*, %struct.dlink2** %3, align 8
  %61 = load %struct.dlink2*, %struct.dlink2** %2, align 8
  %62 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %61, i32 0, i32 1
  store %struct.dlink2* %60, %struct.dlink2** %62, align 8
  %63 = load %struct.dlink2*, %struct.dlink2** %2, align 8
  %64 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %63, i32 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %64, align 8
  %65 = load %struct.dlink2*, %struct.dlink2** %2, align 8
  %66 = load %struct.dlink2*, %struct.dlink2** %3, align 8
  %67 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %66, i32 0, i32 2
  store %struct.dlink2* %65, %struct.dlink2** %67, align 8
  %68 = load %struct.dlink2*, %struct.dlink2** %2, align 8
  store %struct.dlink2* %68, %struct.dlink2** %3, align 8
  br label %50

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makeRLEtree() #0 {
  %1 = alloca %struct.dlink2*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tnode* null, %struct.tnode** @LEroot, align 8
  %5 = call noalias i8* @malloc(i64 noundef 800) #3
  %6 = bitcast i8* %5 to %struct.dlink2**
  store %struct.dlink2** %6, %struct.dlink2*** @LEptrs, align 8
  store i32 0, i32* %4, align 4
  store i32 -1000000, i32* %2, align 4
  %7 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  store %struct.dlink2* %7, %struct.dlink2** %1, align 8
  br label %8

8:                                                ; preds = %52, %0
  %9 = load %struct.dlink2*, %struct.dlink2** %1, align 8
  %10 = icmp ne %struct.dlink2* %9, null
  br i1 %10, label %11, label %56

11:                                               ; preds = %8
  %12 = load %struct.dlink2*, %struct.dlink2** %1, align 8
  %13 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rect, %struct.rect* %15, i64 %17
  %19 = getelementptr inbounds %struct.rect, %struct.rect* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %11
  %24 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rect, %struct.rect* %24, i64 %26
  %28 = getelementptr inbounds %struct.rect, %struct.rect* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = srem i32 %31, 100
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load %struct.dlink2**, %struct.dlink2*** @LEptrs, align 8
  %36 = bitcast %struct.dlink2** %35 to i8*
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 100
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = call i8* @realloc(i8* noundef %36, i64 noundef %40) #3
  %42 = bitcast i8* %41 to %struct.dlink2**
  store %struct.dlink2** %42, %struct.dlink2*** @LEptrs, align 8
  br label %43

43:                                               ; preds = %34, %23
  %44 = load %struct.dlink2*, %struct.dlink2** %1, align 8
  %45 = load %struct.dlink2**, %struct.dlink2*** @LEptrs, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dlink2*, %struct.dlink2** %45, i64 %47
  store %struct.dlink2* %44, %struct.dlink2** %48, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %4, align 4
  call void @tinsert(%struct.tnode** noundef @LEroot, i32 noundef %49, i32 noundef %50)
  br label %51

51:                                               ; preds = %43, %11
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.dlink2*, %struct.dlink2** %1, align 8
  %54 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %53, i32 0, i32 2
  %55 = load %struct.dlink2*, %struct.dlink2** %54, align 8
  store %struct.dlink2* %55, %struct.dlink2** %1, align 8
  br label %8, !llvm.loop !13

56:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makeRBEtree() #0 {
  %1 = alloca %struct.dlink2*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tnode* null, %struct.tnode** @BEroot, align 8
  %5 = call noalias i8* @malloc(i64 noundef 800) #3
  %6 = bitcast i8* %5 to %struct.dlink2**
  store %struct.dlink2** %6, %struct.dlink2*** @BEptrs, align 8
  store i32 0, i32* %4, align 4
  store i32 -1000000, i32* %2, align 4
  %7 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  store %struct.dlink2* %7, %struct.dlink2** %1, align 8
  br label %8

8:                                                ; preds = %52, %0
  %9 = load %struct.dlink2*, %struct.dlink2** %1, align 8
  %10 = icmp ne %struct.dlink2* %9, null
  br i1 %10, label %11, label %56

11:                                               ; preds = %8
  %12 = load %struct.dlink2*, %struct.dlink2** %1, align 8
  %13 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rect, %struct.rect* %15, i64 %17
  %19 = getelementptr inbounds %struct.rect, %struct.rect* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %11
  %24 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rect, %struct.rect* %24, i64 %26
  %28 = getelementptr inbounds %struct.rect, %struct.rect* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = srem i32 %31, 100
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load %struct.dlink2**, %struct.dlink2*** @BEptrs, align 8
  %36 = bitcast %struct.dlink2** %35 to i8*
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 100
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = call i8* @realloc(i8* noundef %36, i64 noundef %40) #3
  %42 = bitcast i8* %41 to %struct.dlink2**
  store %struct.dlink2** %42, %struct.dlink2*** @BEptrs, align 8
  br label %43

43:                                               ; preds = %34, %23
  %44 = load %struct.dlink2*, %struct.dlink2** %1, align 8
  %45 = load %struct.dlink2**, %struct.dlink2*** @BEptrs, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dlink2*, %struct.dlink2** %45, i64 %47
  store %struct.dlink2* %44, %struct.dlink2** %48, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %4, align 4
  call void @tinsert(%struct.tnode** noundef @BEroot, i32 noundef %49, i32 noundef %50)
  br label %51

51:                                               ; preds = %43, %11
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.dlink2*, %struct.dlink2** %1, align 8
  %54 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %53, i32 0, i32 2
  %55 = load %struct.dlink2*, %struct.dlink2** %54, align 8
  store %struct.dlink2* %55, %struct.dlink2** %1, align 8
  br label %8, !llvm.loop !14

56:                                               ; preds = %8
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local void @tpop(%struct.tnode** noundef, %struct.tnode** noundef, i32* noundef, i32* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
