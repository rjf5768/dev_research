; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/hprobes.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/hprobes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@vFixedList = external dso_local global %struct.dlink1*, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@Vptrs = external dso_local global %struct.dlink1**, align 8
@Vroot = external dso_local global %struct.tnode*, align 8
@numProbes = external dso_local global i32, align 4
@edgeCount = external dso_local global i32, align 4
@hEdgeRoot = external dso_local global %struct.tnode*, align 8
@fpdebug = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [12 x i8] c"hprobe:%d  \00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"start:%d  end:%d  loc:%d  UorR:%d\0A\00", align 1
@vFixedEnd = external dso_local global %struct.dlink1*, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"hprobe:%d  start:%d  end:%d  loc:%d  UorR:%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @hprobes() #0 {
  %1 = alloca %struct.dlink1*, align 8
  %2 = alloca %struct.dlink1*, align 8
  %3 = alloca %struct.dlink1*, align 8
  %4 = alloca %struct.dlink1*, align 8
  %5 = alloca %struct.dlink1*, align 8
  %6 = alloca i32, align 4
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
  %21 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  store %struct.dlink1* %21, %struct.dlink1** %1, align 8
  br label %22

22:                                               ; preds = %1025, %0
  %23 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %24 = icmp ne %struct.dlink1* %23, null
  br i1 %24, label %25, label %1029

25:                                               ; preds = %22
  %26 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %27 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %29, i64 %31
  %33 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %1025

37:                                               ; preds = %25
  %38 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %38, i64 %40
  %42 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %44, i64 %46
  %48 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %50, i64 %52
  %54 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %57 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %57, i64 %59
  %61 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %56, i64 %63
  %65 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %124

68:                                               ; preds = %37
  %69 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %70 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @tprop(%struct.tnode* noundef %70, i32 noundef %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %69, i64 %73
  %75 = load %struct.dlink1*, %struct.dlink1** %74, align 8
  store %struct.dlink1* %75, %struct.dlink1** %3, align 8
  br label %76

76:                                               ; preds = %119, %68
  %77 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %78 = icmp ne %struct.dlink1* %77, null
  br i1 %78, label %79, label %123

79:                                               ; preds = %76
  %80 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %81 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %12, align 4
  %83 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %83, i64 %85
  %87 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %119

91:                                               ; preds = %79
  %92 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %92, i64 %94
  %96 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %20, align 4
  %98 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %98, i64 %100
  %102 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %19, align 4
  %104 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %104, i64 %106
  %108 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %91
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %91
  br label %119

118:                                              ; preds = %113
  br label %123

119:                                              ; preds = %117, %90
  %120 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %121 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %120, i32 0, i32 2
  %122 = load %struct.dlink1*, %struct.dlink1** %121, align 8
  store %struct.dlink1* %122, %struct.dlink1** %3, align 8
  br label %76, !llvm.loop !4

123:                                              ; preds = %118, %76
  br label %125

124:                                              ; preds = %37
  store %struct.dlink1* null, %struct.dlink1** %3, align 8
  br label %125

125:                                              ; preds = %124, %123
  %126 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %127 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %127, i64 %129
  %131 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %126, i64 %133
  %135 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %194

138:                                              ; preds = %125
  %139 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %140 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @tprop(%struct.tnode* noundef %140, i32 noundef %141)
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %139, i64 %143
  %145 = load %struct.dlink1*, %struct.dlink1** %144, align 8
  store %struct.dlink1* %145, %struct.dlink1** %2, align 8
  br label %146

146:                                              ; preds = %189, %138
  %147 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %148 = icmp ne %struct.dlink1* %147, null
  br i1 %148, label %149, label %193

149:                                              ; preds = %146
  %150 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %151 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %12, align 4
  %153 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %153, i64 %155
  %157 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %149
  br label %189

161:                                              ; preds = %149
  %162 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %162, i64 %164
  %166 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %17, align 4
  %168 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %168, i64 %170
  %172 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %16, align 4
  %174 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %174, i64 %176
  %178 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %161
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183, %161
  br label %189

188:                                              ; preds = %183
  br label %193

189:                                              ; preds = %187, %160
  %190 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %191 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %190, i32 0, i32 2
  %192 = load %struct.dlink1*, %struct.dlink1** %191, align 8
  store %struct.dlink1* %192, %struct.dlink1** %2, align 8
  br label %146, !llvm.loop !6

193:                                              ; preds = %188, %146
  br label %195

194:                                              ; preds = %125
  store %struct.dlink1* null, %struct.dlink1** %2, align 8
  br label %195

195:                                              ; preds = %194, %193
  %196 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %197 = icmp ne %struct.dlink1* %196, null
  br i1 %197, label %198, label %407

198:                                              ; preds = %195
  %199 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %200 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %201 = icmp eq %struct.dlink1* %199, %200
  br i1 %201, label %202, label %407

202:                                              ; preds = %198
  store i32 1, i32* %14, align 4
  %203 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %204 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @tprop(%struct.tnode* noundef %204, i32 noundef %205)
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %203, i64 %207
  %209 = load %struct.dlink1*, %struct.dlink1** %208, align 8
  store %struct.dlink1* %209, %struct.dlink1** %4, align 8
  br label %210

210:                                              ; preds = %260, %202
  %211 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %212 = icmp ne %struct.dlink1* %211, null
  br i1 %212, label %213, label %264

213:                                              ; preds = %210
  %214 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %215 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %216 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %214, i64 %218
  %220 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %213
  br label %260

224:                                              ; preds = %213
  %225 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %226 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %227 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %225, i64 %229
  %231 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %20, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %224
  br label %264

236:                                              ; preds = %224
  %237 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %238 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %239 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %237, i64 %241
  %243 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %8, align 4
  %246 = icmp sge i32 %244, %245
  br i1 %246, label %258, label %247

247:                                              ; preds = %236
  %248 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %249 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %250 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %248, i64 %252
  %254 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp sle i32 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %247, %236
  br label %260

259:                                              ; preds = %247
  store i32 0, i32* %14, align 4
  br label %264

260:                                              ; preds = %258, %223
  %261 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %262 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %261, i32 0, i32 2
  %263 = load %struct.dlink1*, %struct.dlink1** %262, align 8
  store %struct.dlink1* %263, %struct.dlink1** %4, align 8
  br label %210, !llvm.loop !7

264:                                              ; preds = %259, %235, %210
  %265 = load i32, i32* %14, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %404

267:                                              ; preds = %264
  %268 = load i32, i32* %6, align 4
  %269 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %270 = load i32, i32* @numProbes, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* @numProbes, align 4
  %272 = load i32, i32* @edgeCount, align 4
  %273 = add nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %269, i64 %274
  %276 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %275, i32 0, i32 1
  store i32 %268, i32* %276, align 4
  %277 = load i32, i32* %20, align 4
  %278 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %279 = load i32, i32* @numProbes, align 4
  %280 = load i32, i32* @edgeCount, align 4
  %281 = add nsw i32 %279, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %278, i64 %282
  %284 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %283, i32 0, i32 2
  store i32 %277, i32* %284, align 4
  %285 = load i32, i32* %8, align 4
  %286 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %287 = load i32, i32* @numProbes, align 4
  %288 = load i32, i32* @edgeCount, align 4
  %289 = add nsw i32 %287, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %286, i64 %290
  %292 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %291, i32 0, i32 3
  store i32 %285, i32* %292, align 4
  %293 = load i32, i32* %20, align 4
  %294 = load i32, i32* %6, align 4
  %295 = sub nsw i32 %293, %294
  %296 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %297 = load i32, i32* @numProbes, align 4
  %298 = load i32, i32* @edgeCount, align 4
  %299 = add nsw i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %296, i64 %300
  %302 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %301, i32 0, i32 4
  store i32 %295, i32* %302, align 4
  %303 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %304 = load i32, i32* @numProbes, align 4
  %305 = load i32, i32* @edgeCount, align 4
  %306 = add nsw i32 %304, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %303, i64 %307
  %309 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %308, i32 0, i32 6
  store i32 0, i32* %309, align 4
  %310 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %311 = load i32, i32* @numProbes, align 4
  %312 = load i32, i32* @edgeCount, align 4
  %313 = add nsw i32 %311, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %310, i64 %314
  %316 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %315, i32 0, i32 0
  store i32 0, i32* %316, align 4
  %317 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %318 = load i32, i32* @numProbes, align 4
  %319 = load i32, i32* @edgeCount, align 4
  %320 = add nsw i32 %318, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %317, i64 %321
  %323 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %322, i32 0, i32 5
  store i32 1, i32* %323, align 4
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* @numProbes, align 4
  %326 = load i32, i32* @edgeCount, align 4
  %327 = add nsw i32 %325, %326
  call void @tinsert(%struct.tnode** noundef @hEdgeRoot, i32 noundef %324, i32 noundef %327)
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %329 = load i32, i32* @numProbes, align 4
  %330 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %328, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %329)
  %331 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %332 = load i32, i32* %6, align 4
  %333 = load i32, i32* %20, align 4
  %334 = load i32, i32* %8, align 4
  %335 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %331, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %332, i32 noundef %333, i32 noundef %334, i32 noundef 1)
  %336 = load i32, i32* %6, align 4
  %337 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %338 = load i32, i32* @numProbes, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* @numProbes, align 4
  %340 = load i32, i32* @edgeCount, align 4
  %341 = add nsw i32 %339, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %337, i64 %342
  %344 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %343, i32 0, i32 1
  store i32 %336, i32* %344, align 4
  %345 = load i32, i32* %20, align 4
  %346 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %347 = load i32, i32* @numProbes, align 4
  %348 = load i32, i32* @edgeCount, align 4
  %349 = add nsw i32 %347, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %346, i64 %350
  %352 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %351, i32 0, i32 2
  store i32 %345, i32* %352, align 4
  %353 = load i32, i32* %7, align 4
  %354 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %355 = load i32, i32* @numProbes, align 4
  %356 = load i32, i32* @edgeCount, align 4
  %357 = add nsw i32 %355, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %354, i64 %358
  %360 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %359, i32 0, i32 3
  store i32 %353, i32* %360, align 4
  %361 = load i32, i32* %20, align 4
  %362 = load i32, i32* %6, align 4
  %363 = sub nsw i32 %361, %362
  %364 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %365 = load i32, i32* @numProbes, align 4
  %366 = load i32, i32* @edgeCount, align 4
  %367 = add nsw i32 %365, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %364, i64 %368
  %370 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %369, i32 0, i32 4
  store i32 %363, i32* %370, align 4
  %371 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %372 = load i32, i32* @numProbes, align 4
  %373 = load i32, i32* @edgeCount, align 4
  %374 = add nsw i32 %372, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %371, i64 %375
  %377 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %376, i32 0, i32 6
  store i32 0, i32* %377, align 4
  %378 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %379 = load i32, i32* @numProbes, align 4
  %380 = load i32, i32* @edgeCount, align 4
  %381 = add nsw i32 %379, %380
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %378, i64 %382
  %384 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %383, i32 0, i32 0
  store i32 0, i32* %384, align 4
  %385 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %386 = load i32, i32* @numProbes, align 4
  %387 = load i32, i32* @edgeCount, align 4
  %388 = add nsw i32 %386, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %385, i64 %389
  %391 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %390, i32 0, i32 5
  store i32 -1, i32* %391, align 4
  %392 = load i32, i32* %7, align 4
  %393 = load i32, i32* @numProbes, align 4
  %394 = load i32, i32* @edgeCount, align 4
  %395 = add nsw i32 %393, %394
  call void @tinsert(%struct.tnode** noundef @hEdgeRoot, i32 noundef %392, i32 noundef %395)
  %396 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %397 = load i32, i32* @numProbes, align 4
  %398 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %396, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %397)
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %400 = load i32, i32* %6, align 4
  %401 = load i32, i32* %20, align 4
  %402 = load i32, i32* %7, align 4
  %403 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %399, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %400, i32 noundef %401, i32 noundef %402, i32 noundef -1)
  br label %406

404:                                              ; preds = %264
  %405 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  call void @doubleBack(%struct.dlink1* noundef %405)
  br label %406

406:                                              ; preds = %404, %267
  br label %1025

407:                                              ; preds = %198, %195
  %408 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %409 = icmp ne %struct.dlink1* %408, null
  br i1 %409, label %410, label %715

410:                                              ; preds = %407
  %411 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %412 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %413 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %414 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %412, i64 %416
  %418 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %417, i32 0, i32 7
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %411, i64 %420
  %422 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %421, i32 0, i32 5
  %423 = load i32, i32* %422, align 4
  %424 = icmp eq i32 %423, -1
  br i1 %424, label %425, label %715

425:                                              ; preds = %410
  %426 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %427 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %428 = load i32, i32* %20, align 4
  %429 = call i32 @tprop(%struct.tnode* noundef %427, i32 noundef %428)
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %426, i64 %430
  %432 = load %struct.dlink1*, %struct.dlink1** %431, align 8
  store %struct.dlink1* %432, %struct.dlink1** %5, align 8
  %433 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %434 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %433, i32 0, i32 2
  %435 = load %struct.dlink1*, %struct.dlink1** %434, align 8
  store %struct.dlink1* %435, %struct.dlink1** %5, align 8
  br label %436

436:                                              ; preds = %452, %425
  %437 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %438 = icmp ne %struct.dlink1* %437, null
  br i1 %438, label %439, label %456

439:                                              ; preds = %436
  %440 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %441 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %442 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %440, i64 %444
  %446 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* %20, align 4
  %449 = icmp sgt i32 %447, %448
  br i1 %449, label %450, label %451

450:                                              ; preds = %439
  br label %456

451:                                              ; preds = %439
  br label %452

452:                                              ; preds = %451
  %453 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %454 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %453, i32 0, i32 2
  %455 = load %struct.dlink1*, %struct.dlink1** %454, align 8
  store %struct.dlink1* %455, %struct.dlink1** %5, align 8
  br label %436, !llvm.loop !8

456:                                              ; preds = %450, %436
  %457 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %458 = icmp eq %struct.dlink1* %457, null
  br i1 %458, label %459, label %461

459:                                              ; preds = %456
  %460 = load %struct.dlink1*, %struct.dlink1** @vFixedEnd, align 8
  store %struct.dlink1* %460, %struct.dlink1** %5, align 8
  br label %465

461:                                              ; preds = %456
  %462 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %463 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %462, i32 0, i32 1
  %464 = load %struct.dlink1*, %struct.dlink1** %463, align 8
  store %struct.dlink1* %464, %struct.dlink1** %5, align 8
  br label %465

465:                                              ; preds = %461, %459
  br label %466

466:                                              ; preds = %503, %465
  %467 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %468 = icmp ne %struct.dlink1* %467, null
  br i1 %468, label %469, label %507

469:                                              ; preds = %466
  %470 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %471 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  store i32 %472, i32* %13, align 4
  %473 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %474 = load i32, i32* %13, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %473, i64 %475
  %477 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %476, i32 0, i32 5
  %478 = load i32, i32* %477, align 4
  %479 = icmp sgt i32 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %469
  br label %503

481:                                              ; preds = %469
  %482 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %483 = load i32, i32* %13, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %482, i64 %484
  %486 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  store i32 %487, i32* %10, align 4
  %488 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %489 = load i32, i32* %13, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %488, i64 %490
  %492 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 4
  store i32 %493, i32* %11, align 4
  %494 = load i32, i32* %11, align 4
  %495 = load i32, i32* %19, align 4
  %496 = icmp sle i32 %494, %495
  br i1 %496, label %501, label %497

497:                                              ; preds = %481
  %498 = load i32, i32* %10, align 4
  %499 = load i32, i32* %19, align 4
  %500 = icmp sgt i32 %498, %499
  br i1 %500, label %501, label %502

501:                                              ; preds = %497, %481
  br label %503

502:                                              ; preds = %497
  br label %507

503:                                              ; preds = %501, %480
  %504 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %505 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %504, i32 0, i32 1
  %506 = load %struct.dlink1*, %struct.dlink1** %505, align 8
  store %struct.dlink1* %506, %struct.dlink1** %5, align 8
  br label %466, !llvm.loop !9

507:                                              ; preds = %502, %466
  %508 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %509 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %510 = icmp eq %struct.dlink1* %508, %509
  br i1 %510, label %511, label %714

511:                                              ; preds = %507
  store i32 1, i32* %14, align 4
  %512 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %513 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %514 = load i32, i32* %6, align 4
  %515 = call i32 @tprop(%struct.tnode* noundef %513, i32 noundef %514)
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %512, i64 %516
  %518 = load %struct.dlink1*, %struct.dlink1** %517, align 8
  store %struct.dlink1* %518, %struct.dlink1** %4, align 8
  br label %519

519:                                              ; preds = %569, %511
  %520 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %521 = icmp ne %struct.dlink1* %520, null
  br i1 %521, label %522, label %573

522:                                              ; preds = %519
  %523 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %524 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %525 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %523, i64 %527
  %529 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %528, i32 0, i32 5
  %530 = load i32, i32* %529, align 4
  %531 = icmp slt i32 %530, 0
  br i1 %531, label %532, label %533

532:                                              ; preds = %522
  br label %569

533:                                              ; preds = %522
  %534 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %535 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %536 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %534, i64 %538
  %540 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %539, i32 0, i32 3
  %541 = load i32, i32* %540, align 4
  %542 = load i32, i32* %20, align 4
  %543 = icmp sge i32 %541, %542
  br i1 %543, label %544, label %545

544:                                              ; preds = %533
  br label %573

545:                                              ; preds = %533
  %546 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %547 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %548 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %546, i64 %550
  %552 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = load i32, i32* %8, align 4
  %555 = icmp sge i32 %553, %554
  br i1 %555, label %567, label %556

556:                                              ; preds = %545
  %557 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %558 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %559 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %557, i64 %561
  %563 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %562, i32 0, i32 2
  %564 = load i32, i32* %563, align 4
  %565 = load i32, i32* %19, align 4
  %566 = icmp sle i32 %564, %565
  br i1 %566, label %567, label %568

567:                                              ; preds = %556, %545
  br label %569

568:                                              ; preds = %556
  store i32 0, i32* %14, align 4
  br label %573

569:                                              ; preds = %567, %532
  %570 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %571 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %570, i32 0, i32 2
  %572 = load %struct.dlink1*, %struct.dlink1** %571, align 8
  store %struct.dlink1* %572, %struct.dlink1** %4, align 8
  br label %519, !llvm.loop !10

573:                                              ; preds = %568, %544, %519
  %574 = load i32, i32* %14, align 4
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %713

576:                                              ; preds = %573
  %577 = load i32, i32* %6, align 4
  %578 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %579 = load i32, i32* @numProbes, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* @numProbes, align 4
  %581 = load i32, i32* @edgeCount, align 4
  %582 = add nsw i32 %580, %581
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %578, i64 %583
  %585 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %584, i32 0, i32 1
  store i32 %577, i32* %585, align 4
  %586 = load i32, i32* %20, align 4
  %587 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %588 = load i32, i32* @numProbes, align 4
  %589 = load i32, i32* @edgeCount, align 4
  %590 = add nsw i32 %588, %589
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %587, i64 %591
  %593 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %592, i32 0, i32 2
  store i32 %586, i32* %593, align 4
  %594 = load i32, i32* %8, align 4
  %595 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %596 = load i32, i32* @numProbes, align 4
  %597 = load i32, i32* @edgeCount, align 4
  %598 = add nsw i32 %596, %597
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %595, i64 %599
  %601 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %600, i32 0, i32 3
  store i32 %594, i32* %601, align 4
  %602 = load i32, i32* %20, align 4
  %603 = load i32, i32* %6, align 4
  %604 = sub nsw i32 %602, %603
  %605 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %606 = load i32, i32* @numProbes, align 4
  %607 = load i32, i32* @edgeCount, align 4
  %608 = add nsw i32 %606, %607
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %605, i64 %609
  %611 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %610, i32 0, i32 4
  store i32 %604, i32* %611, align 4
  %612 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %613 = load i32, i32* @numProbes, align 4
  %614 = load i32, i32* @edgeCount, align 4
  %615 = add nsw i32 %613, %614
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %612, i64 %616
  %618 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %617, i32 0, i32 6
  store i32 0, i32* %618, align 4
  %619 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %620 = load i32, i32* @numProbes, align 4
  %621 = load i32, i32* @edgeCount, align 4
  %622 = add nsw i32 %620, %621
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %619, i64 %623
  %625 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %624, i32 0, i32 0
  store i32 0, i32* %625, align 4
  %626 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %627 = load i32, i32* @numProbes, align 4
  %628 = load i32, i32* @edgeCount, align 4
  %629 = add nsw i32 %627, %628
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %626, i64 %630
  %632 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %631, i32 0, i32 5
  store i32 1, i32* %632, align 4
  %633 = load i32, i32* %8, align 4
  %634 = load i32, i32* @numProbes, align 4
  %635 = load i32, i32* @edgeCount, align 4
  %636 = add nsw i32 %634, %635
  call void @tinsert(%struct.tnode** noundef @hEdgeRoot, i32 noundef %633, i32 noundef %636)
  %637 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %638 = load i32, i32* @numProbes, align 4
  %639 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %637, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %638)
  %640 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %641 = load i32, i32* %6, align 4
  %642 = load i32, i32* %20, align 4
  %643 = load i32, i32* %8, align 4
  %644 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %640, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %641, i32 noundef %642, i32 noundef %643, i32 noundef 1)
  %645 = load i32, i32* %6, align 4
  %646 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %647 = load i32, i32* @numProbes, align 4
  %648 = add nsw i32 %647, 1
  store i32 %648, i32* @numProbes, align 4
  %649 = load i32, i32* @edgeCount, align 4
  %650 = add nsw i32 %648, %649
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %646, i64 %651
  %653 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %652, i32 0, i32 1
  store i32 %645, i32* %653, align 4
  %654 = load i32, i32* %20, align 4
  %655 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %656 = load i32, i32* @numProbes, align 4
  %657 = load i32, i32* @edgeCount, align 4
  %658 = add nsw i32 %656, %657
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %655, i64 %659
  %661 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %660, i32 0, i32 2
  store i32 %654, i32* %661, align 4
  %662 = load i32, i32* %19, align 4
  %663 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %664 = load i32, i32* @numProbes, align 4
  %665 = load i32, i32* @edgeCount, align 4
  %666 = add nsw i32 %664, %665
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %663, i64 %667
  %669 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %668, i32 0, i32 3
  store i32 %662, i32* %669, align 4
  %670 = load i32, i32* %20, align 4
  %671 = load i32, i32* %6, align 4
  %672 = sub nsw i32 %670, %671
  %673 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %674 = load i32, i32* @numProbes, align 4
  %675 = load i32, i32* @edgeCount, align 4
  %676 = add nsw i32 %674, %675
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %673, i64 %677
  %679 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %678, i32 0, i32 4
  store i32 %672, i32* %679, align 4
  %680 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %681 = load i32, i32* @numProbes, align 4
  %682 = load i32, i32* @edgeCount, align 4
  %683 = add nsw i32 %681, %682
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %680, i64 %684
  %686 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %685, i32 0, i32 6
  store i32 0, i32* %686, align 4
  %687 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %688 = load i32, i32* @numProbes, align 4
  %689 = load i32, i32* @edgeCount, align 4
  %690 = add nsw i32 %688, %689
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %687, i64 %691
  %693 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %692, i32 0, i32 0
  store i32 0, i32* %693, align 4
  %694 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %695 = load i32, i32* @numProbes, align 4
  %696 = load i32, i32* @edgeCount, align 4
  %697 = add nsw i32 %695, %696
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %694, i64 %698
  %700 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %699, i32 0, i32 5
  store i32 -1, i32* %700, align 4
  %701 = load i32, i32* %19, align 4
  %702 = load i32, i32* @numProbes, align 4
  %703 = load i32, i32* @edgeCount, align 4
  %704 = add nsw i32 %702, %703
  call void @tinsert(%struct.tnode** noundef @hEdgeRoot, i32 noundef %701, i32 noundef %704)
  %705 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %706 = load i32, i32* @numProbes, align 4
  %707 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %705, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %706)
  %708 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %709 = load i32, i32* %6, align 4
  %710 = load i32, i32* %20, align 4
  %711 = load i32, i32* %19, align 4
  %712 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %708, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %709, i32 noundef %710, i32 noundef %711, i32 noundef -1)
  br label %713

713:                                              ; preds = %576, %573
  br label %714

714:                                              ; preds = %713, %507
  br label %715

715:                                              ; preds = %714, %410, %407
  %716 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %717 = icmp ne %struct.dlink1* %716, null
  br i1 %717, label %718, label %1023

718:                                              ; preds = %715
  %719 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %720 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %721 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %722 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 8
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %720, i64 %724
  %726 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %725, i32 0, i32 8
  %727 = load i32, i32* %726, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %719, i64 %728
  %730 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %729, i32 0, i32 5
  %731 = load i32, i32* %730, align 4
  %732 = icmp eq i32 %731, 1
  br i1 %732, label %733, label %1023

733:                                              ; preds = %718
  %734 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %735 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %736 = load i32, i32* %17, align 4
  %737 = call i32 @tprop(%struct.tnode* noundef %735, i32 noundef %736)
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %734, i64 %738
  %740 = load %struct.dlink1*, %struct.dlink1** %739, align 8
  store %struct.dlink1* %740, %struct.dlink1** %5, align 8
  %741 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %742 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %741, i32 0, i32 2
  %743 = load %struct.dlink1*, %struct.dlink1** %742, align 8
  store %struct.dlink1* %743, %struct.dlink1** %5, align 8
  br label %744

744:                                              ; preds = %760, %733
  %745 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %746 = icmp ne %struct.dlink1* %745, null
  br i1 %746, label %747, label %764

747:                                              ; preds = %744
  %748 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %749 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %750 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %749, i32 0, i32 0
  %751 = load i32, i32* %750, align 8
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %748, i64 %752
  %754 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %753, i32 0, i32 3
  %755 = load i32, i32* %754, align 4
  %756 = load i32, i32* %17, align 4
  %757 = icmp sgt i32 %755, %756
  br i1 %757, label %758, label %759

758:                                              ; preds = %747
  br label %764

759:                                              ; preds = %747
  br label %760

760:                                              ; preds = %759
  %761 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %762 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %761, i32 0, i32 2
  %763 = load %struct.dlink1*, %struct.dlink1** %762, align 8
  store %struct.dlink1* %763, %struct.dlink1** %5, align 8
  br label %744, !llvm.loop !11

764:                                              ; preds = %758, %744
  %765 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %766 = icmp eq %struct.dlink1* %765, null
  br i1 %766, label %767, label %769

767:                                              ; preds = %764
  %768 = load %struct.dlink1*, %struct.dlink1** @vFixedEnd, align 8
  store %struct.dlink1* %768, %struct.dlink1** %5, align 8
  br label %773

769:                                              ; preds = %764
  %770 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %771 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %770, i32 0, i32 1
  %772 = load %struct.dlink1*, %struct.dlink1** %771, align 8
  store %struct.dlink1* %772, %struct.dlink1** %5, align 8
  br label %773

773:                                              ; preds = %769, %767
  br label %774

774:                                              ; preds = %811, %773
  %775 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %776 = icmp ne %struct.dlink1* %775, null
  br i1 %776, label %777, label %815

777:                                              ; preds = %774
  %778 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %779 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %778, i32 0, i32 0
  %780 = load i32, i32* %779, align 8
  store i32 %780, i32* %13, align 4
  %781 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %782 = load i32, i32* %13, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %781, i64 %783
  %785 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %784, i32 0, i32 5
  %786 = load i32, i32* %785, align 4
  %787 = icmp sgt i32 %786, 0
  br i1 %787, label %788, label %789

788:                                              ; preds = %777
  br label %811

789:                                              ; preds = %777
  %790 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %791 = load i32, i32* %13, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %790, i64 %792
  %794 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %793, i32 0, i32 1
  %795 = load i32, i32* %794, align 4
  store i32 %795, i32* %10, align 4
  %796 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %797 = load i32, i32* %13, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %796, i64 %798
  %800 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %799, i32 0, i32 2
  %801 = load i32, i32* %800, align 4
  store i32 %801, i32* %11, align 4
  %802 = load i32, i32* %11, align 4
  %803 = load i32, i32* %15, align 4
  %804 = icmp slt i32 %802, %803
  br i1 %804, label %809, label %805

805:                                              ; preds = %789
  %806 = load i32, i32* %10, align 4
  %807 = load i32, i32* %15, align 4
  %808 = icmp sge i32 %806, %807
  br i1 %808, label %809, label %810

809:                                              ; preds = %805, %789
  br label %811

810:                                              ; preds = %805
  br label %815

811:                                              ; preds = %809, %788
  %812 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %813 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %812, i32 0, i32 1
  %814 = load %struct.dlink1*, %struct.dlink1** %813, align 8
  store %struct.dlink1* %814, %struct.dlink1** %5, align 8
  br label %774, !llvm.loop !12

815:                                              ; preds = %810, %774
  %816 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %817 = load %struct.dlink1*, %struct.dlink1** %5, align 8
  %818 = icmp eq %struct.dlink1* %816, %817
  br i1 %818, label %819, label %1022

819:                                              ; preds = %815
  store i32 1, i32* %14, align 4
  %820 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %821 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %822 = load i32, i32* %6, align 4
  %823 = call i32 @tprop(%struct.tnode* noundef %821, i32 noundef %822)
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %820, i64 %824
  %826 = load %struct.dlink1*, %struct.dlink1** %825, align 8
  store %struct.dlink1* %826, %struct.dlink1** %4, align 8
  br label %827

827:                                              ; preds = %877, %819
  %828 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %829 = icmp ne %struct.dlink1* %828, null
  br i1 %829, label %830, label %881

830:                                              ; preds = %827
  %831 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %832 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %833 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %832, i32 0, i32 0
  %834 = load i32, i32* %833, align 8
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %831, i64 %835
  %837 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %836, i32 0, i32 5
  %838 = load i32, i32* %837, align 4
  %839 = icmp slt i32 %838, 0
  br i1 %839, label %840, label %841

840:                                              ; preds = %830
  br label %877

841:                                              ; preds = %830
  %842 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %843 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %844 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %843, i32 0, i32 0
  %845 = load i32, i32* %844, align 8
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %842, i64 %846
  %848 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %847, i32 0, i32 3
  %849 = load i32, i32* %848, align 4
  %850 = load i32, i32* %17, align 4
  %851 = icmp sge i32 %849, %850
  br i1 %851, label %852, label %853

852:                                              ; preds = %841
  br label %881

853:                                              ; preds = %841
  %854 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %855 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %856 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %855, i32 0, i32 0
  %857 = load i32, i32* %856, align 8
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %854, i64 %858
  %860 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %859, i32 0, i32 1
  %861 = load i32, i32* %860, align 4
  %862 = load i32, i32* %15, align 4
  %863 = icmp sge i32 %861, %862
  br i1 %863, label %875, label %864

864:                                              ; preds = %853
  %865 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %866 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %867 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %866, i32 0, i32 0
  %868 = load i32, i32* %867, align 8
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %865, i64 %869
  %871 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %870, i32 0, i32 2
  %872 = load i32, i32* %871, align 4
  %873 = load i32, i32* %7, align 4
  %874 = icmp sle i32 %872, %873
  br i1 %874, label %875, label %876

875:                                              ; preds = %864, %853
  br label %877

876:                                              ; preds = %864
  store i32 0, i32* %14, align 4
  br label %881

877:                                              ; preds = %875, %840
  %878 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %879 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %878, i32 0, i32 2
  %880 = load %struct.dlink1*, %struct.dlink1** %879, align 8
  store %struct.dlink1* %880, %struct.dlink1** %4, align 8
  br label %827, !llvm.loop !13

881:                                              ; preds = %876, %852, %827
  %882 = load i32, i32* %14, align 4
  %883 = icmp ne i32 %882, 0
  br i1 %883, label %884, label %1021

884:                                              ; preds = %881
  %885 = load i32, i32* %6, align 4
  %886 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %887 = load i32, i32* @numProbes, align 4
  %888 = add nsw i32 %887, 1
  store i32 %888, i32* @numProbes, align 4
  %889 = load i32, i32* @edgeCount, align 4
  %890 = add nsw i32 %888, %889
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %886, i64 %891
  %893 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %892, i32 0, i32 1
  store i32 %885, i32* %893, align 4
  %894 = load i32, i32* %17, align 4
  %895 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %896 = load i32, i32* @numProbes, align 4
  %897 = load i32, i32* @edgeCount, align 4
  %898 = add nsw i32 %896, %897
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %895, i64 %899
  %901 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %900, i32 0, i32 2
  store i32 %894, i32* %901, align 4
  %902 = load i32, i32* %15, align 4
  %903 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %904 = load i32, i32* @numProbes, align 4
  %905 = load i32, i32* @edgeCount, align 4
  %906 = add nsw i32 %904, %905
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %903, i64 %907
  %909 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %908, i32 0, i32 3
  store i32 %902, i32* %909, align 4
  %910 = load i32, i32* %17, align 4
  %911 = load i32, i32* %6, align 4
  %912 = sub nsw i32 %910, %911
  %913 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %914 = load i32, i32* @numProbes, align 4
  %915 = load i32, i32* @edgeCount, align 4
  %916 = add nsw i32 %914, %915
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %913, i64 %917
  %919 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %918, i32 0, i32 4
  store i32 %912, i32* %919, align 4
  %920 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %921 = load i32, i32* @numProbes, align 4
  %922 = load i32, i32* @edgeCount, align 4
  %923 = add nsw i32 %921, %922
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %920, i64 %924
  %926 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %925, i32 0, i32 6
  store i32 0, i32* %926, align 4
  %927 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %928 = load i32, i32* @numProbes, align 4
  %929 = load i32, i32* @edgeCount, align 4
  %930 = add nsw i32 %928, %929
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %927, i64 %931
  %933 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %932, i32 0, i32 0
  store i32 0, i32* %933, align 4
  %934 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %935 = load i32, i32* @numProbes, align 4
  %936 = load i32, i32* @edgeCount, align 4
  %937 = add nsw i32 %935, %936
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %934, i64 %938
  %940 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %939, i32 0, i32 5
  store i32 1, i32* %940, align 4
  %941 = load i32, i32* %15, align 4
  %942 = load i32, i32* @numProbes, align 4
  %943 = load i32, i32* @edgeCount, align 4
  %944 = add nsw i32 %942, %943
  call void @tinsert(%struct.tnode** noundef @hEdgeRoot, i32 noundef %941, i32 noundef %944)
  %945 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %946 = load i32, i32* @numProbes, align 4
  %947 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %945, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %946)
  %948 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %949 = load i32, i32* %6, align 4
  %950 = load i32, i32* %17, align 4
  %951 = load i32, i32* %15, align 4
  %952 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %948, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %949, i32 noundef %950, i32 noundef %951, i32 noundef 1)
  %953 = load i32, i32* %6, align 4
  %954 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %955 = load i32, i32* @numProbes, align 4
  %956 = add nsw i32 %955, 1
  store i32 %956, i32* @numProbes, align 4
  %957 = load i32, i32* @edgeCount, align 4
  %958 = add nsw i32 %956, %957
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %954, i64 %959
  %961 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %960, i32 0, i32 1
  store i32 %953, i32* %961, align 4
  %962 = load i32, i32* %17, align 4
  %963 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %964 = load i32, i32* @numProbes, align 4
  %965 = load i32, i32* @edgeCount, align 4
  %966 = add nsw i32 %964, %965
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %963, i64 %967
  %969 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %968, i32 0, i32 2
  store i32 %962, i32* %969, align 4
  %970 = load i32, i32* %7, align 4
  %971 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %972 = load i32, i32* @numProbes, align 4
  %973 = load i32, i32* @edgeCount, align 4
  %974 = add nsw i32 %972, %973
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %971, i64 %975
  %977 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %976, i32 0, i32 3
  store i32 %970, i32* %977, align 4
  %978 = load i32, i32* %17, align 4
  %979 = load i32, i32* %6, align 4
  %980 = sub nsw i32 %978, %979
  %981 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %982 = load i32, i32* @numProbes, align 4
  %983 = load i32, i32* @edgeCount, align 4
  %984 = add nsw i32 %982, %983
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %981, i64 %985
  %987 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %986, i32 0, i32 4
  store i32 %980, i32* %987, align 4
  %988 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %989 = load i32, i32* @numProbes, align 4
  %990 = load i32, i32* @edgeCount, align 4
  %991 = add nsw i32 %989, %990
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %988, i64 %992
  %994 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %993, i32 0, i32 6
  store i32 0, i32* %994, align 4
  %995 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %996 = load i32, i32* @numProbes, align 4
  %997 = load i32, i32* @edgeCount, align 4
  %998 = add nsw i32 %996, %997
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %995, i64 %999
  %1001 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %1000, i32 0, i32 0
  store i32 0, i32* %1001, align 4
  %1002 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %1003 = load i32, i32* @numProbes, align 4
  %1004 = load i32, i32* @edgeCount, align 4
  %1005 = add nsw i32 %1003, %1004
  %1006 = sext i32 %1005 to i64
  %1007 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %1002, i64 %1006
  %1008 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %1007, i32 0, i32 5
  store i32 -1, i32* %1008, align 4
  %1009 = load i32, i32* %7, align 4
  %1010 = load i32, i32* @numProbes, align 4
  %1011 = load i32, i32* @edgeCount, align 4
  %1012 = add nsw i32 %1010, %1011
  call void @tinsert(%struct.tnode** noundef @hEdgeRoot, i32 noundef %1009, i32 noundef %1012)
  %1013 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %1014 = load i32, i32* @numProbes, align 4
  %1015 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1013, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %1014)
  %1016 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %1017 = load i32, i32* %6, align 4
  %1018 = load i32, i32* %17, align 4
  %1019 = load i32, i32* %7, align 4
  %1020 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1016, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 noundef %1017, i32 noundef %1018, i32 noundef %1019, i32 noundef -1)
  br label %1021

1021:                                             ; preds = %884, %881
  br label %1022

1022:                                             ; preds = %1021, %815
  br label %1023

1023:                                             ; preds = %1022, %718, %715
  %1024 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  call void @doubleBack(%struct.dlink1* noundef %1024)
  br label %1025

1025:                                             ; preds = %1023, %406, %36
  %1026 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %1027 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %1026, i32 0, i32 2
  %1028 = load %struct.dlink1*, %struct.dlink1** %1027, align 8
  store %struct.dlink1* %1028, %struct.dlink1** %1, align 8
  br label %22, !llvm.loop !14

1029:                                             ; preds = %22
  ret void
}

declare dso_local i32 @tprop(%struct.tnode* noundef, i32 noundef) #1

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @doubleBack(%struct.dlink1* noundef %0) #0 {
  %2 = alloca %struct.dlink1*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dlink1*, align 8
  %12 = alloca %struct.dlink1*, align 8
  store %struct.dlink1* %0, %struct.dlink1** %2, align 8
  %13 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %14 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %15 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %13, i64 %17
  %19 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %22 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %23 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %21, i64 %25
  %27 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %30 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %31 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %29, i64 %33
  %35 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  %37 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %38 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @tprop(%struct.tnode* noundef %38, i32 noundef %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %37, i64 %41
  %43 = load %struct.dlink1*, %struct.dlink1** %42, align 8
  store %struct.dlink1* %43, %struct.dlink1** %12, align 8
  br label %44

44:                                               ; preds = %318, %1
  %45 = load %struct.dlink1*, %struct.dlink1** %12, align 8
  %46 = icmp ne %struct.dlink1* %45, null
  br i1 %46, label %47, label %322

47:                                               ; preds = %44
  %48 = load %struct.dlink1*, %struct.dlink1** %12, align 8
  %49 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %10, align 4
  %51 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %51, i64 %53
  %55 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %318

59:                                               ; preds = %47
  %60 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %60, i64 %62
  %64 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  %66 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %66, i64 %68
  %70 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %72, i64 %74
  %76 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %59
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %86, label %85

85:                                               ; preds = %81, %59
  br label %318

86:                                               ; preds = %81
  %87 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %88 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %88, i64 %90
  %92 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %87, i64 %94
  %96 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %180

99:                                               ; preds = %86
  %100 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %101 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %101, i64 %103
  %105 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %100, i64 %107
  %109 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %180

112:                                              ; preds = %99
  store i32 1, i32* %9, align 4
  %113 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %114 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @tprop(%struct.tnode* noundef %114, i32 noundef %115)
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %113, i64 %117
  %119 = load %struct.dlink1*, %struct.dlink1** %118, align 8
  store %struct.dlink1* %119, %struct.dlink1** %11, align 8
  br label %120

120:                                              ; preds = %175, %112
  %121 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %122 = icmp ne %struct.dlink1* %121, null
  br i1 %122, label %123, label %179

123:                                              ; preds = %120
  %124 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %125 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %126 = icmp eq %struct.dlink1* %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %175

128:                                              ; preds = %123
  %129 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %130 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %131 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %129, i64 %133
  %135 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %175

139:                                              ; preds = %128
  %140 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %141 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %142 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %140, i64 %144
  %146 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %179

151:                                              ; preds = %139
  %152 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %153 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %154 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %152, i64 %156
  %158 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %173, label %162

162:                                              ; preds = %151
  %163 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %164 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %165 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %163, i64 %167
  %169 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp sle i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %162, %151
  br label %175

174:                                              ; preds = %162
  store i32 0, i32* %9, align 4
  br label %179

175:                                              ; preds = %173, %138, %127
  %176 = load %struct.dlink1*, %struct.dlink1** %11, align 8
  %177 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %176, i32 0, i32 2
  %178 = load %struct.dlink1*, %struct.dlink1** %177, align 8
  store %struct.dlink1* %178, %struct.dlink1** %11, align 8
  br label %120, !llvm.loop !15

179:                                              ; preds = %174, %150, %120
  br label %181

180:                                              ; preds = %99, %86
  store i32 0, i32* %9, align 4
  br label %181

181:                                              ; preds = %180, %179
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %317

184:                                              ; preds = %181
  %185 = load i32, i32* %3, align 4
  %186 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %187 = load i32, i32* @numProbes, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* @numProbes, align 4
  %189 = load i32, i32* @edgeCount, align 4
  %190 = add nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %186, i64 %191
  %193 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %192, i32 0, i32 1
  store i32 %185, i32* %193, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %196 = load i32, i32* @numProbes, align 4
  %197 = load i32, i32* @edgeCount, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %195, i64 %199
  %201 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %200, i32 0, i32 2
  store i32 %194, i32* %201, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %204 = load i32, i32* @numProbes, align 4
  %205 = load i32, i32* @edgeCount, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %203, i64 %207
  %209 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %208, i32 0, i32 3
  store i32 %202, i32* %209, align 4
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %3, align 4
  %212 = sub nsw i32 %210, %211
  %213 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %214 = load i32, i32* @numProbes, align 4
  %215 = load i32, i32* @edgeCount, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %213, i64 %217
  %219 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %218, i32 0, i32 4
  store i32 %212, i32* %219, align 4
  %220 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %221 = load i32, i32* @numProbes, align 4
  %222 = load i32, i32* @edgeCount, align 4
  %223 = add nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %220, i64 %224
  %226 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %225, i32 0, i32 6
  store i32 0, i32* %226, align 4
  %227 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %228 = load i32, i32* @numProbes, align 4
  %229 = load i32, i32* @edgeCount, align 4
  %230 = add nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %227, i64 %231
  %233 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %232, i32 0, i32 0
  store i32 0, i32* %233, align 4
  %234 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %235 = load i32, i32* @numProbes, align 4
  %236 = load i32, i32* @edgeCount, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %234, i64 %238
  %240 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %239, i32 0, i32 5
  store i32 1, i32* %240, align 4
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @numProbes, align 4
  %243 = load i32, i32* @edgeCount, align 4
  %244 = add nsw i32 %242, %243
  call void @tinsert(%struct.tnode** noundef @hEdgeRoot, i32 noundef %241, i32 noundef %244)
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %246 = load i32, i32* @numProbes, align 4
  %247 = load i32, i32* %3, align 4
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* %8, align 4
  %250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %245, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef %246, i32 noundef %247, i32 noundef %248, i32 noundef %249, i32 noundef 1)
  %251 = load i32, i32* %3, align 4
  %252 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %253 = load i32, i32* @numProbes, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* @numProbes, align 4
  %255 = load i32, i32* @edgeCount, align 4
  %256 = add nsw i32 %254, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %252, i64 %257
  %259 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %258, i32 0, i32 1
  store i32 %251, i32* %259, align 4
  %260 = load i32, i32* %6, align 4
  %261 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %262 = load i32, i32* @numProbes, align 4
  %263 = load i32, i32* @edgeCount, align 4
  %264 = add nsw i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %261, i64 %265
  %267 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %266, i32 0, i32 2
  store i32 %260, i32* %267, align 4
  %268 = load i32, i32* %7, align 4
  %269 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %270 = load i32, i32* @numProbes, align 4
  %271 = load i32, i32* @edgeCount, align 4
  %272 = add nsw i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %269, i64 %273
  %275 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %274, i32 0, i32 3
  store i32 %268, i32* %275, align 4
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* %3, align 4
  %278 = sub nsw i32 %276, %277
  %279 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %280 = load i32, i32* @numProbes, align 4
  %281 = load i32, i32* @edgeCount, align 4
  %282 = add nsw i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %279, i64 %283
  %285 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %284, i32 0, i32 4
  store i32 %278, i32* %285, align 4
  %286 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %287 = load i32, i32* @numProbes, align 4
  %288 = load i32, i32* @edgeCount, align 4
  %289 = add nsw i32 %287, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %286, i64 %290
  %292 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %291, i32 0, i32 6
  store i32 0, i32* %292, align 4
  %293 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %294 = load i32, i32* @numProbes, align 4
  %295 = load i32, i32* @edgeCount, align 4
  %296 = add nsw i32 %294, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %293, i64 %297
  %299 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %298, i32 0, i32 0
  store i32 0, i32* %299, align 4
  %300 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %301 = load i32, i32* @numProbes, align 4
  %302 = load i32, i32* @edgeCount, align 4
  %303 = add nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %300, i64 %304
  %306 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %305, i32 0, i32 5
  store i32 -1, i32* %306, align 4
  %307 = load i32, i32* %7, align 4
  %308 = load i32, i32* @numProbes, align 4
  %309 = load i32, i32* @edgeCount, align 4
  %310 = add nsw i32 %308, %309
  call void @tinsert(%struct.tnode** noundef @hEdgeRoot, i32 noundef %307, i32 noundef %310)
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %312 = load i32, i32* @numProbes, align 4
  %313 = load i32, i32* %3, align 4
  %314 = load i32, i32* %6, align 4
  %315 = load i32, i32* %7, align 4
  %316 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %311, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef %312, i32 noundef %313, i32 noundef %314, i32 noundef %315, i32 noundef -1)
  br label %317

317:                                              ; preds = %184, %181
  br label %318

318:                                              ; preds = %317, %85, %58
  %319 = load %struct.dlink1*, %struct.dlink1** %12, align 8
  %320 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %319, i32 0, i32 2
  %321 = load %struct.dlink1*, %struct.dlink1** %320, align 8
  store %struct.dlink1* %321, %struct.dlink1** %12, align 8
  br label %44, !llvm.loop !16

322:                                              ; preds = %44
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
