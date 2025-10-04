; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/density.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/density.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.nrbox = type { %struct.altbox**, i32, i32, i32 }
%struct.altbox = type { i32*, i32, %struct.chanbox* }
%struct.chanbox = type { i32, i32, i32, i32, %struct.chanbox* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.wcbox = type { i32, i32, i32*, i32, %struct.wcbox* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clbox = type { i32, i32, i32, i32, i32, i32, i32, %struct.clbox* }

@eNum = external dso_local global i32, align 4
@eArray = external dso_local global %struct.ebox*, align 8
@largestNet = external dso_local global i32, align 4
@netRoutes = external dso_local global %struct.nrbox*, align 8
@eIndexArray = external dso_local global i32**, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"CHANNEL DENSITIES:\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"channel:%d  node1:%d  node2:%d  density:%d\0A\00", align 1
@numXnodes = external dso_local global i32, align 4
@xNodeArray = external dso_local global %struct.wcbox**, align 8
@defaultTracks = external dso_local global i32, align 4
@pitch = external dso_local global i32, align 4
@numYnodes = external dso_local global i32, align 4
@yNodeArray = external dso_local global %struct.wcbox**, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@cellList = external dso_local global %struct.clbox**, align 8
@numberCells = external dso_local global i32, align 4
@fpdebug = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"CELL: <%d>\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"edge:%d  extraSpace:%d  \00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"HorV:%d  loc:%d  start:%d  \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"end:%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @density() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.tnode*, align 8
  %21 = alloca %struct.tnode**, align 8
  %22 = alloca %struct.chanbox*, align 8
  %23 = alloca %struct.plist*, align 8
  %24 = alloca %struct.wcbox*, align 8
  %25 = alloca %struct.clbox*, align 8
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %36, %0
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @eNum, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ebox, %struct.ebox* %31, i64 %33
  %35 = getelementptr inbounds %struct.ebox, %struct.ebox* %34, i32 0, i32 12
  store %struct.tnode* null, %struct.tnode** %35, align 8
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %26, !llvm.loop !4

39:                                               ; preds = %26
  store i32 1, i32* %1, align 4
  br label %40

40:                                               ; preds = %142, %39
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @largestNet, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %145

44:                                               ; preds = %40
  %45 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %45, i64 %47
  %49 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %2, align 4
  %51 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %51, i64 %53
  %55 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %54, i32 0, i32 0
  %56 = load %struct.altbox**, %struct.altbox*** %55, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.altbox*, %struct.altbox** %56, i64 %58
  %60 = load %struct.altbox*, %struct.altbox** %59, align 8
  %61 = getelementptr inbounds %struct.altbox, %struct.altbox* %60, i32 0, i32 2
  %62 = load %struct.chanbox*, %struct.chanbox** %61, align 8
  store %struct.chanbox* %62, %struct.chanbox** %22, align 8
  br label %63

63:                                               ; preds = %137, %44
  %64 = load %struct.chanbox*, %struct.chanbox** %22, align 8
  %65 = icmp ne %struct.chanbox* %64, null
  br i1 %65, label %66, label %141

66:                                               ; preds = %63
  %67 = load i32**, i32*** @eIndexArray, align 8
  %68 = load %struct.chanbox*, %struct.chanbox** %22, align 8
  %69 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %67, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.chanbox*, %struct.chanbox** %22, align 8
  %75 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %3, align 4
  %80 = load %struct.chanbox*, %struct.chanbox** %22, align 8
  %81 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ebox, %struct.ebox* %83, i64 %85
  %87 = getelementptr inbounds %struct.ebox, %struct.ebox* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %82, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %66
  %91 = load %struct.chanbox*, %struct.chanbox** %22, align 8
  %92 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %4, align 4
  %94 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ebox, %struct.ebox* %94, i64 %96
  %98 = getelementptr inbounds %struct.ebox, %struct.ebox* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.chanbox*, %struct.chanbox** %22, align 8
  %101 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  store i32 %103, i32* %5, align 4
  br label %118

104:                                              ; preds = %66
  %105 = load %struct.chanbox*, %struct.chanbox** %22, align 8
  %106 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %4, align 4
  %108 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ebox, %struct.ebox* %108, i64 %110
  %112 = getelementptr inbounds %struct.ebox, %struct.ebox* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.chanbox*, %struct.chanbox** %22, align 8
  %115 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %113, %116
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %104, %90
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ebox, %struct.ebox* %123, i64 %125
  %127 = getelementptr inbounds %struct.ebox, %struct.ebox* %126, i32 0, i32 12
  %128 = load i32, i32* %4, align 4
  call void @tinsert(%struct.tnode** noundef %127, i32 noundef %128, i32 noundef 1)
  %129 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ebox, %struct.ebox* %129, i64 %131
  %133 = getelementptr inbounds %struct.ebox, %struct.ebox* %132, i32 0, i32 12
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  call void @tinsert(%struct.tnode** noundef %133, i32 noundef %135, i32 noundef -1)
  br label %136

136:                                              ; preds = %122, %118
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.chanbox*, %struct.chanbox** %22, align 8
  %139 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %138, i32 0, i32 4
  %140 = load %struct.chanbox*, %struct.chanbox** %139, align 8
  store %struct.chanbox* %140, %struct.chanbox** %22, align 8
  br label %63, !llvm.loop !6

141:                                              ; preds = %63
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %1, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %1, align 4
  br label %40, !llvm.loop !7

145:                                              ; preds = %40
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %146, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %148 = call noalias i8* @malloc(i64 noundef 80008) #3
  %149 = bitcast i8* %148 to %struct.tnode**
  store %struct.tnode** %149, %struct.tnode*** %21, align 8
  store i32 1, i32* %3, align 4
  br label %150

150:                                              ; preds = %273, %145
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* @eNum, align 4
  %153 = icmp sle i32 %151, %152
  br i1 %153, label %154, label %276

154:                                              ; preds = %150
  %155 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.ebox, %struct.ebox* %155, i64 %157
  %159 = getelementptr inbounds %struct.ebox, %struct.ebox* %158, i32 0, i32 12
  %160 = load %struct.tnode*, %struct.tnode** %159, align 8
  %161 = icmp eq %struct.tnode* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %154
  %163 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.ebox, %struct.ebox* %163, i64 %165
  %167 = getelementptr inbounds %struct.ebox, %struct.ebox* %166, i32 0, i32 10
  store i32 0, i32* %167, align 8
  br label %273

168:                                              ; preds = %154
  store i32 0, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %169 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.ebox, %struct.ebox* %169, i64 %171
  %173 = getelementptr inbounds %struct.ebox, %struct.ebox* %172, i32 0, i32 12
  %174 = load %struct.tnode*, %struct.tnode** %173, align 8
  %175 = load %struct.tnode**, %struct.tnode*** %21, align 8
  %176 = getelementptr inbounds %struct.tnode*, %struct.tnode** %175, i64 0
  store %struct.tnode* %174, %struct.tnode** %176, align 8
  br label %177

177:                                              ; preds = %249, %168
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp sge i32 %178, %179
  br i1 %180, label %181, label %250

181:                                              ; preds = %177
  %182 = load %struct.tnode**, %struct.tnode*** %21, align 8
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds %struct.tnode*, %struct.tnode** %182, i64 %185
  %187 = load %struct.tnode*, %struct.tnode** %186, align 8
  store %struct.tnode* %187, %struct.tnode** %20, align 8
  %188 = load %struct.tnode*, %struct.tnode** %20, align 8
  %189 = getelementptr inbounds %struct.tnode, %struct.tnode* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %223

192:                                              ; preds = %181
  %193 = load %struct.tnode*, %struct.tnode** %20, align 8
  %194 = getelementptr inbounds %struct.tnode, %struct.tnode* %193, i32 0, i32 2
  %195 = load %struct.tnode*, %struct.tnode** %194, align 8
  %196 = load %struct.tnode**, %struct.tnode*** %21, align 8
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.tnode*, %struct.tnode** %196, i64 %199
  store %struct.tnode* %195, %struct.tnode** %200, align 8
  %201 = load %struct.tnode*, %struct.tnode** %20, align 8
  %202 = getelementptr inbounds %struct.tnode, %struct.tnode* %201, i32 0, i32 3
  %203 = load %struct.tnode*, %struct.tnode** %202, align 8
  %204 = load %struct.tnode**, %struct.tnode*** %21, align 8
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.tnode*, %struct.tnode** %204, i64 %207
  store %struct.tnode* %203, %struct.tnode** %208, align 8
  %209 = load %struct.tnode*, %struct.tnode** %20, align 8
  %210 = getelementptr inbounds %struct.tnode, %struct.tnode* %209, i32 0, i32 4
  %211 = load %struct.tnode*, %struct.tnode** %210, align 8
  %212 = icmp ne %struct.tnode* %211, null
  br i1 %212, label %213, label %222

213:                                              ; preds = %192
  %214 = load %struct.tnode*, %struct.tnode** %20, align 8
  %215 = getelementptr inbounds %struct.tnode, %struct.tnode* %214, i32 0, i32 4
  %216 = load %struct.tnode*, %struct.tnode** %215, align 8
  %217 = load %struct.tnode**, %struct.tnode*** %21, align 8
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.tnode*, %struct.tnode** %217, i64 %220
  store %struct.tnode* %216, %struct.tnode** %221, align 8
  br label %222

222:                                              ; preds = %213, %192
  br label %249

223:                                              ; preds = %181
  %224 = load %struct.tnode*, %struct.tnode** %20, align 8
  %225 = getelementptr inbounds %struct.tnode, %struct.tnode* %224, i32 0, i32 9
  %226 = load %struct.plist*, %struct.plist** %225, align 8
  store %struct.plist* %226, %struct.plist** %23, align 8
  br label %227

227:                                              ; preds = %238, %223
  %228 = load %struct.plist*, %struct.plist** %23, align 8
  %229 = icmp ne %struct.plist* %228, null
  br i1 %229, label %230, label %242

230:                                              ; preds = %227
  %231 = load %struct.tnode*, %struct.tnode** %20, align 8
  %232 = getelementptr inbounds %struct.tnode, %struct.tnode* %231, i32 0, i32 9
  %233 = load %struct.plist*, %struct.plist** %232, align 8
  %234 = getelementptr inbounds %struct.plist, %struct.plist* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %230
  %239 = load %struct.plist*, %struct.plist** %23, align 8
  %240 = getelementptr inbounds %struct.plist, %struct.plist* %239, i32 0, i32 1
  %241 = load %struct.plist*, %struct.plist** %240, align 8
  store %struct.plist* %241, %struct.plist** %23, align 8
  br label %227, !llvm.loop !8

242:                                              ; preds = %227
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* %12, align 4
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = load i32, i32* %6, align 4
  store i32 %247, i32* %12, align 4
  br label %248

248:                                              ; preds = %246, %242
  br label %249

249:                                              ; preds = %248, %222
  br label %177, !llvm.loop !9

250:                                              ; preds = %177
  %251 = load i32, i32* %12, align 4
  %252 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %253 = load i32, i32* %3, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.ebox, %struct.ebox* %252, i64 %254
  %256 = getelementptr inbounds %struct.ebox, %struct.ebox* %255, i32 0, i32 10
  store i32 %251, i32* %256, align 8
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %258 = load i32, i32* %3, align 4
  %259 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %260 = load i32, i32* %3, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.ebox, %struct.ebox* %259, i64 %261
  %263 = getelementptr inbounds %struct.ebox, %struct.ebox* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %266 = load i32, i32* %3, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.ebox, %struct.ebox* %265, i64 %267
  %269 = getelementptr inbounds %struct.ebox, %struct.ebox* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %12, align 4
  %272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %257, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 noundef %258, i32 noundef %264, i32 noundef %270, i32 noundef %271)
  br label %273

273:                                              ; preds = %250, %162
  %274 = load i32, i32* %3, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %3, align 4
  br label %150, !llvm.loop !10

276:                                              ; preds = %150
  %277 = load %struct.tnode**, %struct.tnode*** %21, align 8
  %278 = bitcast %struct.tnode** %277 to i8*
  call void @free(i8* noundef %278) #3
  store i32 1, i32* %7, align 4
  br label %279

279:                                              ; preds = %367, %276
  %280 = load i32, i32* %7, align 4
  %281 = load i32, i32* @numXnodes, align 4
  %282 = icmp sle i32 %280, %281
  br i1 %282, label %283, label %370

283:                                              ; preds = %279
  %284 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %285 = load i32, i32* %7, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %284, i64 %286
  %288 = load %struct.wcbox*, %struct.wcbox** %287, align 8
  store %struct.wcbox* %288, %struct.wcbox** %24, align 8
  br label %289

289:                                              ; preds = %362, %283
  %290 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %291 = icmp ne %struct.wcbox* %290, null
  br i1 %291, label %292, label %366

292:                                              ; preds = %289
  %293 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %294 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %362

298:                                              ; preds = %292
  %299 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %300 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %299, i32 0, i32 3
  store i32 0, i32* %300, align 8
  %301 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %302 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %306

306:                                              ; preds = %327, %298
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* %11, align 4
  %309 = icmp sle i32 %307, %308
  br i1 %309, label %310, label %330

310:                                              ; preds = %306
  %311 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %312 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %313 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %312, i32 0, i32 2
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.ebox, %struct.ebox* %311, i64 %319
  %321 = getelementptr inbounds %struct.ebox, %struct.ebox* %320, i32 0, i32 10
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %324 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 8
  %326 = add nsw i32 %325, %322
  store i32 %326, i32* %324, align 8
  br label %327

327:                                              ; preds = %310
  %328 = load i32, i32* %10, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %10, align 4
  br label %306, !llvm.loop !11

330:                                              ; preds = %306
  %331 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %332 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %347

335:                                              ; preds = %330
  %336 = load i32, i32* @defaultTracks, align 4
  %337 = add nsw i32 %336, 2
  %338 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %339 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  %341 = add nsw i32 %340, %337
  store i32 %341, i32* %339, align 8
  %342 = load i32, i32* @pitch, align 4
  %343 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %344 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 8
  %346 = mul nsw i32 %345, %342
  store i32 %346, i32* %344, align 8
  br label %361

347:                                              ; preds = %330
  %348 = load i32, i32* @defaultTracks, align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %360

350:                                              ; preds = %347
  %351 = load i32, i32* @defaultTracks, align 4
  %352 = add nsw i32 %351, 1
  %353 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %354 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %353, i32 0, i32 3
  store i32 %352, i32* %354, align 8
  %355 = load i32, i32* @pitch, align 4
  %356 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %357 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = mul nsw i32 %358, %355
  store i32 %359, i32* %357, align 8
  br label %360

360:                                              ; preds = %350, %347
  br label %361

361:                                              ; preds = %360, %335
  br label %362

362:                                              ; preds = %361, %297
  %363 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %364 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %363, i32 0, i32 4
  %365 = load %struct.wcbox*, %struct.wcbox** %364, align 8
  store %struct.wcbox* %365, %struct.wcbox** %24, align 8
  br label %289, !llvm.loop !12

366:                                              ; preds = %289
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %7, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %7, align 4
  br label %279, !llvm.loop !13

370:                                              ; preds = %279
  store i32 1, i32* %7, align 4
  br label %371

371:                                              ; preds = %459, %370
  %372 = load i32, i32* %7, align 4
  %373 = load i32, i32* @numYnodes, align 4
  %374 = icmp sle i32 %372, %373
  br i1 %374, label %375, label %462

375:                                              ; preds = %371
  %376 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %377 = load i32, i32* %7, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %376, i64 %378
  %380 = load %struct.wcbox*, %struct.wcbox** %379, align 8
  store %struct.wcbox* %380, %struct.wcbox** %24, align 8
  br label %381

381:                                              ; preds = %454, %375
  %382 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %383 = icmp ne %struct.wcbox* %382, null
  br i1 %383, label %384, label %458

384:                                              ; preds = %381
  %385 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %386 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %390

389:                                              ; preds = %384
  br label %454

390:                                              ; preds = %384
  %391 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %392 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %391, i32 0, i32 3
  store i32 0, i32* %392, align 8
  %393 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %394 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %393, i32 0, i32 2
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  %397 = load i32, i32* %396, align 4
  store i32 %397, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %398

398:                                              ; preds = %419, %390
  %399 = load i32, i32* %10, align 4
  %400 = load i32, i32* %11, align 4
  %401 = icmp sle i32 %399, %400
  br i1 %401, label %402, label %422

402:                                              ; preds = %398
  %403 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %404 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %405 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %404, i32 0, i32 2
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %10, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.ebox, %struct.ebox* %403, i64 %411
  %413 = getelementptr inbounds %struct.ebox, %struct.ebox* %412, i32 0, i32 10
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %416 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 8
  %418 = add nsw i32 %417, %414
  store i32 %418, i32* %416, align 8
  br label %419

419:                                              ; preds = %402
  %420 = load i32, i32* %10, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %10, align 4
  br label %398, !llvm.loop !14

422:                                              ; preds = %398
  %423 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %424 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 8
  %426 = icmp sgt i32 %425, 0
  br i1 %426, label %427, label %439

427:                                              ; preds = %422
  %428 = load i32, i32* @defaultTracks, align 4
  %429 = add nsw i32 %428, 2
  %430 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %431 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 8
  %433 = add nsw i32 %432, %429
  store i32 %433, i32* %431, align 8
  %434 = load i32, i32* @pitch, align 4
  %435 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %436 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 8
  %438 = mul nsw i32 %437, %434
  store i32 %438, i32* %436, align 8
  br label %453

439:                                              ; preds = %422
  %440 = load i32, i32* @defaultTracks, align 4
  %441 = icmp sgt i32 %440, 0
  br i1 %441, label %442, label %452

442:                                              ; preds = %439
  %443 = load i32, i32* @defaultTracks, align 4
  %444 = add nsw i32 %443, 1
  %445 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %446 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %445, i32 0, i32 3
  store i32 %444, i32* %446, align 8
  %447 = load i32, i32* @pitch, align 4
  %448 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %449 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 8
  %451 = mul nsw i32 %450, %447
  store i32 %451, i32* %449, align 8
  br label %452

452:                                              ; preds = %442, %439
  br label %453

453:                                              ; preds = %452, %427
  br label %454

454:                                              ; preds = %453, %389
  %455 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %456 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %455, i32 0, i32 4
  %457 = load %struct.wcbox*, %struct.wcbox** %456, align 8
  store %struct.wcbox* %457, %struct.wcbox** %24, align 8
  br label %381, !llvm.loop !15

458:                                              ; preds = %381
  br label %459

459:                                              ; preds = %458
  %460 = load i32, i32* %7, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %7, align 4
  br label %371, !llvm.loop !16

462:                                              ; preds = %371
  store i32 1, i32* %7, align 4
  br label %463

463:                                              ; preds = %700, %462
  %464 = load i32, i32* %7, align 4
  %465 = load i32, i32* @numXnodes, align 4
  %466 = icmp sle i32 %464, %465
  br i1 %466, label %467, label %703

467:                                              ; preds = %463
  %468 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %469 = load i32, i32* %7, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %468, i64 %470
  %472 = load %struct.wcbox*, %struct.wcbox** %471, align 8
  store %struct.wcbox* %472, %struct.wcbox** %24, align 8
  br label %473

473:                                              ; preds = %695, %467
  %474 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %475 = icmp ne %struct.wcbox* %474, null
  br i1 %475, label %476, label %699

476:                                              ; preds = %473
  %477 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %478 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = icmp eq i32 %479, 1
  br i1 %480, label %481, label %482

481:                                              ; preds = %476
  br label %695

482:                                              ; preds = %476
  store i32 0, i32* %13, align 4
  %483 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %484 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %485 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %484, i32 0, i32 2
  %486 = load i32*, i32** %485, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 1
  %488 = load i32, i32* %487, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.ebox, %struct.ebox* %483, i64 %489
  %491 = getelementptr inbounds %struct.ebox, %struct.ebox* %490, i32 0, i32 8
  %492 = load i32, i32* %491, align 8
  store i32 %492, i32* %16, align 4
  %493 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %494 = load i32, i32* %16, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %493, i64 %495
  %497 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  store i32 %498, i32* %14, align 4
  %499 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %500 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %499, i32 0, i32 2
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 0
  %503 = load i32, i32* %502, align 4
  store i32 %503, i32* %11, align 4
  %504 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %505 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %506 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %505, i32 0, i32 2
  %507 = load i32*, i32** %506, align 8
  %508 = load i32, i32* %11, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.ebox, %struct.ebox* %504, i64 %512
  %514 = getelementptr inbounds %struct.ebox, %struct.ebox* %513, i32 0, i32 9
  %515 = load i32, i32* %514, align 4
  store i32 %515, i32* %17, align 4
  %516 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %517 = load i32, i32* %17, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %516, i64 %518
  %520 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 4
  store i32 %521, i32* %15, align 4
  store i32 1, i32* %10, align 4
  br label %522

522:                                              ; preds = %541, %482
  %523 = load i32, i32* %10, align 4
  %524 = load i32, i32* %11, align 4
  %525 = icmp sle i32 %523, %524
  br i1 %525, label %526, label %544

526:                                              ; preds = %522
  %527 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %528 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %529 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %528, i32 0, i32 2
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* %10, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.ebox, %struct.ebox* %527, i64 %535
  %537 = getelementptr inbounds %struct.ebox, %struct.ebox* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* %13, align 4
  %540 = add nsw i32 %539, %538
  store i32 %540, i32* %13, align 4
  br label %541

541:                                              ; preds = %526
  %542 = load i32, i32* %10, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %10, align 4
  br label %522, !llvm.loop !17

544:                                              ; preds = %522
  %545 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %546 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %545, i32 0, i32 3
  %547 = load i32, i32* %546, align 8
  %548 = sdiv i32 %547, 2
  store i32 %548, i32* %18, align 4
  %549 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %550 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %549, i32 0, i32 3
  %551 = load i32, i32* %550, align 8
  %552 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %553 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %552, i32 0, i32 3
  %554 = load i32, i32* %553, align 8
  %555 = sdiv i32 %554, 2
  %556 = sub nsw i32 %551, %555
  store i32 %556, i32* %19, align 4
  %557 = load i32, i32* %14, align 4
  %558 = icmp sgt i32 %557, 0
  br i1 %558, label %559, label %625

559:                                              ; preds = %544
  %560 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %561 = load i32, i32* %14, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.clbox*, %struct.clbox** %560, i64 %562
  %564 = load %struct.clbox*, %struct.clbox** %563, align 8
  store %struct.clbox* %564, %struct.clbox** %25, align 8
  br label %565

565:                                              ; preds = %573, %559
  %566 = load %struct.clbox*, %struct.clbox** %25, align 8
  %567 = getelementptr inbounds %struct.clbox, %struct.clbox* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = load i32, i32* %16, align 4
  %570 = icmp eq i32 %568, %569
  br i1 %570, label %571, label %572

571:                                              ; preds = %565
  br label %577

572:                                              ; preds = %565
  br label %573

573:                                              ; preds = %572
  %574 = load %struct.clbox*, %struct.clbox** %25, align 8
  %575 = getelementptr inbounds %struct.clbox, %struct.clbox* %574, i32 0, i32 7
  %576 = load %struct.clbox*, %struct.clbox** %575, align 8
  store %struct.clbox* %576, %struct.clbox** %25, align 8
  br label %565

577:                                              ; preds = %571
  %578 = load i32, i32* %13, align 4
  %579 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %580 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %579, i32 0, i32 3
  %581 = load i32, i32* %580, align 8
  %582 = sub nsw i32 %578, %581
  %583 = load %struct.clbox*, %struct.clbox** %25, align 8
  %584 = getelementptr inbounds %struct.clbox, %struct.clbox* %583, i32 0, i32 6
  %585 = load i32, i32* %584, align 8
  %586 = icmp slt i32 %582, %585
  br i1 %586, label %587, label %598

587:                                              ; preds = %577
  %588 = load i32, i32* %13, align 4
  %589 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %590 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %589, i32 0, i32 3
  %591 = load i32, i32* %590, align 8
  %592 = sub nsw i32 %588, %591
  %593 = load %struct.clbox*, %struct.clbox** %25, align 8
  %594 = getelementptr inbounds %struct.clbox, %struct.clbox* %593, i32 0, i32 6
  store i32 %592, i32* %594, align 8
  %595 = load i32, i32* %18, align 4
  %596 = load %struct.clbox*, %struct.clbox** %25, align 8
  %597 = getelementptr inbounds %struct.clbox, %struct.clbox* %596, i32 0, i32 1
  store i32 %595, i32* %597, align 4
  br label %598

598:                                              ; preds = %587, %577
  %599 = load %struct.clbox*, %struct.clbox** %25, align 8
  %600 = getelementptr inbounds %struct.clbox, %struct.clbox* %599, i32 0, i32 2
  store i32 0, i32* %600, align 8
  %601 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %602 = load i32, i32* %16, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %601, i64 %603
  %605 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %604, i32 0, i32 3
  %606 = load i32, i32* %605, align 4
  %607 = load %struct.clbox*, %struct.clbox** %25, align 8
  %608 = getelementptr inbounds %struct.clbox, %struct.clbox* %607, i32 0, i32 3
  store i32 %606, i32* %608, align 4
  %609 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %610 = load i32, i32* %16, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %609, i64 %611
  %613 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %612, i32 0, i32 1
  %614 = load i32, i32* %613, align 4
  %615 = load %struct.clbox*, %struct.clbox** %25, align 8
  %616 = getelementptr inbounds %struct.clbox, %struct.clbox* %615, i32 0, i32 4
  store i32 %614, i32* %616, align 8
  %617 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %618 = load i32, i32* %16, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %617, i64 %619
  %621 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %620, i32 0, i32 2
  %622 = load i32, i32* %621, align 4
  %623 = load %struct.clbox*, %struct.clbox** %25, align 8
  %624 = getelementptr inbounds %struct.clbox, %struct.clbox* %623, i32 0, i32 5
  store i32 %622, i32* %624, align 4
  br label %625

625:                                              ; preds = %598, %544
  %626 = load i32, i32* %15, align 4
  %627 = icmp sgt i32 %626, 0
  br i1 %627, label %628, label %694

628:                                              ; preds = %625
  %629 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %630 = load i32, i32* %15, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.clbox*, %struct.clbox** %629, i64 %631
  %633 = load %struct.clbox*, %struct.clbox** %632, align 8
  store %struct.clbox* %633, %struct.clbox** %25, align 8
  br label %634

634:                                              ; preds = %642, %628
  %635 = load %struct.clbox*, %struct.clbox** %25, align 8
  %636 = getelementptr inbounds %struct.clbox, %struct.clbox* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 8
  %638 = load i32, i32* %17, align 4
  %639 = icmp eq i32 %637, %638
  br i1 %639, label %640, label %641

640:                                              ; preds = %634
  br label %646

641:                                              ; preds = %634
  br label %642

642:                                              ; preds = %641
  %643 = load %struct.clbox*, %struct.clbox** %25, align 8
  %644 = getelementptr inbounds %struct.clbox, %struct.clbox* %643, i32 0, i32 7
  %645 = load %struct.clbox*, %struct.clbox** %644, align 8
  store %struct.clbox* %645, %struct.clbox** %25, align 8
  br label %634

646:                                              ; preds = %640
  %647 = load i32, i32* %13, align 4
  %648 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %649 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %648, i32 0, i32 3
  %650 = load i32, i32* %649, align 8
  %651 = sub nsw i32 %647, %650
  %652 = load %struct.clbox*, %struct.clbox** %25, align 8
  %653 = getelementptr inbounds %struct.clbox, %struct.clbox* %652, i32 0, i32 6
  %654 = load i32, i32* %653, align 8
  %655 = icmp slt i32 %651, %654
  br i1 %655, label %656, label %667

656:                                              ; preds = %646
  %657 = load i32, i32* %13, align 4
  %658 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %659 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %658, i32 0, i32 3
  %660 = load i32, i32* %659, align 8
  %661 = sub nsw i32 %657, %660
  %662 = load %struct.clbox*, %struct.clbox** %25, align 8
  %663 = getelementptr inbounds %struct.clbox, %struct.clbox* %662, i32 0, i32 6
  store i32 %661, i32* %663, align 8
  %664 = load i32, i32* %19, align 4
  %665 = load %struct.clbox*, %struct.clbox** %25, align 8
  %666 = getelementptr inbounds %struct.clbox, %struct.clbox* %665, i32 0, i32 1
  store i32 %664, i32* %666, align 4
  br label %667

667:                                              ; preds = %656, %646
  %668 = load %struct.clbox*, %struct.clbox** %25, align 8
  %669 = getelementptr inbounds %struct.clbox, %struct.clbox* %668, i32 0, i32 2
  store i32 0, i32* %669, align 8
  %670 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %671 = load i32, i32* %17, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %670, i64 %672
  %674 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %673, i32 0, i32 3
  %675 = load i32, i32* %674, align 4
  %676 = load %struct.clbox*, %struct.clbox** %25, align 8
  %677 = getelementptr inbounds %struct.clbox, %struct.clbox* %676, i32 0, i32 3
  store i32 %675, i32* %677, align 4
  %678 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %679 = load i32, i32* %17, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %678, i64 %680
  %682 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %681, i32 0, i32 1
  %683 = load i32, i32* %682, align 4
  %684 = load %struct.clbox*, %struct.clbox** %25, align 8
  %685 = getelementptr inbounds %struct.clbox, %struct.clbox* %684, i32 0, i32 4
  store i32 %683, i32* %685, align 8
  %686 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %687 = load i32, i32* %17, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %686, i64 %688
  %690 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %689, i32 0, i32 2
  %691 = load i32, i32* %690, align 4
  %692 = load %struct.clbox*, %struct.clbox** %25, align 8
  %693 = getelementptr inbounds %struct.clbox, %struct.clbox* %692, i32 0, i32 5
  store i32 %691, i32* %693, align 4
  br label %694

694:                                              ; preds = %667, %625
  br label %695

695:                                              ; preds = %694, %481
  %696 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %697 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %696, i32 0, i32 4
  %698 = load %struct.wcbox*, %struct.wcbox** %697, align 8
  store %struct.wcbox* %698, %struct.wcbox** %24, align 8
  br label %473, !llvm.loop !18

699:                                              ; preds = %473
  br label %700

700:                                              ; preds = %699
  %701 = load i32, i32* %7, align 4
  %702 = add nsw i32 %701, 1
  store i32 %702, i32* %7, align 4
  br label %463, !llvm.loop !19

703:                                              ; preds = %463
  store i32 1, i32* %7, align 4
  br label %704

704:                                              ; preds = %941, %703
  %705 = load i32, i32* %7, align 4
  %706 = load i32, i32* @numYnodes, align 4
  %707 = icmp sle i32 %705, %706
  br i1 %707, label %708, label %944

708:                                              ; preds = %704
  %709 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %710 = load i32, i32* %7, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %709, i64 %711
  %713 = load %struct.wcbox*, %struct.wcbox** %712, align 8
  store %struct.wcbox* %713, %struct.wcbox** %24, align 8
  br label %714

714:                                              ; preds = %936, %708
  %715 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %716 = icmp ne %struct.wcbox* %715, null
  br i1 %716, label %717, label %940

717:                                              ; preds = %714
  %718 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %719 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %718, i32 0, i32 0
  %720 = load i32, i32* %719, align 8
  %721 = icmp eq i32 %720, 1
  br i1 %721, label %722, label %723

722:                                              ; preds = %717
  br label %936

723:                                              ; preds = %717
  store i32 0, i32* %13, align 4
  %724 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %725 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %726 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %725, i32 0, i32 2
  %727 = load i32*, i32** %726, align 8
  %728 = getelementptr inbounds i32, i32* %727, i64 1
  %729 = load i32, i32* %728, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds %struct.ebox, %struct.ebox* %724, i64 %730
  %732 = getelementptr inbounds %struct.ebox, %struct.ebox* %731, i32 0, i32 8
  %733 = load i32, i32* %732, align 8
  store i32 %733, i32* %16, align 4
  %734 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %735 = load i32, i32* %16, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %734, i64 %736
  %738 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 4
  store i32 %739, i32* %14, align 4
  %740 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %741 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %740, i32 0, i32 2
  %742 = load i32*, i32** %741, align 8
  %743 = getelementptr inbounds i32, i32* %742, i64 0
  %744 = load i32, i32* %743, align 4
  store i32 %744, i32* %11, align 4
  %745 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %746 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %747 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %746, i32 0, i32 2
  %748 = load i32*, i32** %747, align 8
  %749 = load i32, i32* %11, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i32, i32* %748, i64 %750
  %752 = load i32, i32* %751, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds %struct.ebox, %struct.ebox* %745, i64 %753
  %755 = getelementptr inbounds %struct.ebox, %struct.ebox* %754, i32 0, i32 9
  %756 = load i32, i32* %755, align 4
  store i32 %756, i32* %17, align 4
  %757 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %758 = load i32, i32* %17, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %757, i64 %759
  %761 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %760, i32 0, i32 0
  %762 = load i32, i32* %761, align 4
  store i32 %762, i32* %15, align 4
  store i32 1, i32* %10, align 4
  br label %763

763:                                              ; preds = %782, %723
  %764 = load i32, i32* %10, align 4
  %765 = load i32, i32* %11, align 4
  %766 = icmp sle i32 %764, %765
  br i1 %766, label %767, label %785

767:                                              ; preds = %763
  %768 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %769 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %770 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %769, i32 0, i32 2
  %771 = load i32*, i32** %770, align 8
  %772 = load i32, i32* %10, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i32, i32* %771, i64 %773
  %775 = load i32, i32* %774, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds %struct.ebox, %struct.ebox* %768, i64 %776
  %778 = getelementptr inbounds %struct.ebox, %struct.ebox* %777, i32 0, i32 2
  %779 = load i32, i32* %778, align 8
  %780 = load i32, i32* %13, align 4
  %781 = add nsw i32 %780, %779
  store i32 %781, i32* %13, align 4
  br label %782

782:                                              ; preds = %767
  %783 = load i32, i32* %10, align 4
  %784 = add nsw i32 %783, 1
  store i32 %784, i32* %10, align 4
  br label %763, !llvm.loop !20

785:                                              ; preds = %763
  %786 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %787 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %786, i32 0, i32 3
  %788 = load i32, i32* %787, align 8
  %789 = sdiv i32 %788, 2
  store i32 %789, i32* %18, align 4
  %790 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %791 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %790, i32 0, i32 3
  %792 = load i32, i32* %791, align 8
  %793 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %794 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %793, i32 0, i32 3
  %795 = load i32, i32* %794, align 8
  %796 = sdiv i32 %795, 2
  %797 = sub nsw i32 %792, %796
  store i32 %797, i32* %19, align 4
  %798 = load i32, i32* %14, align 4
  %799 = icmp sgt i32 %798, 0
  br i1 %799, label %800, label %866

800:                                              ; preds = %785
  %801 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %802 = load i32, i32* %14, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds %struct.clbox*, %struct.clbox** %801, i64 %803
  %805 = load %struct.clbox*, %struct.clbox** %804, align 8
  store %struct.clbox* %805, %struct.clbox** %25, align 8
  br label %806

806:                                              ; preds = %814, %800
  %807 = load %struct.clbox*, %struct.clbox** %25, align 8
  %808 = getelementptr inbounds %struct.clbox, %struct.clbox* %807, i32 0, i32 0
  %809 = load i32, i32* %808, align 8
  %810 = load i32, i32* %16, align 4
  %811 = icmp eq i32 %809, %810
  br i1 %811, label %812, label %813

812:                                              ; preds = %806
  br label %818

813:                                              ; preds = %806
  br label %814

814:                                              ; preds = %813
  %815 = load %struct.clbox*, %struct.clbox** %25, align 8
  %816 = getelementptr inbounds %struct.clbox, %struct.clbox* %815, i32 0, i32 7
  %817 = load %struct.clbox*, %struct.clbox** %816, align 8
  store %struct.clbox* %817, %struct.clbox** %25, align 8
  br label %806

818:                                              ; preds = %812
  %819 = load i32, i32* %13, align 4
  %820 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %821 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %820, i32 0, i32 3
  %822 = load i32, i32* %821, align 8
  %823 = sub nsw i32 %819, %822
  %824 = load %struct.clbox*, %struct.clbox** %25, align 8
  %825 = getelementptr inbounds %struct.clbox, %struct.clbox* %824, i32 0, i32 6
  %826 = load i32, i32* %825, align 8
  %827 = icmp slt i32 %823, %826
  br i1 %827, label %828, label %839

828:                                              ; preds = %818
  %829 = load i32, i32* %13, align 4
  %830 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %831 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %830, i32 0, i32 3
  %832 = load i32, i32* %831, align 8
  %833 = sub nsw i32 %829, %832
  %834 = load %struct.clbox*, %struct.clbox** %25, align 8
  %835 = getelementptr inbounds %struct.clbox, %struct.clbox* %834, i32 0, i32 6
  store i32 %833, i32* %835, align 8
  %836 = load i32, i32* %18, align 4
  %837 = load %struct.clbox*, %struct.clbox** %25, align 8
  %838 = getelementptr inbounds %struct.clbox, %struct.clbox* %837, i32 0, i32 1
  store i32 %836, i32* %838, align 4
  br label %839

839:                                              ; preds = %828, %818
  %840 = load %struct.clbox*, %struct.clbox** %25, align 8
  %841 = getelementptr inbounds %struct.clbox, %struct.clbox* %840, i32 0, i32 2
  store i32 1, i32* %841, align 8
  %842 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %843 = load i32, i32* %16, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %842, i64 %844
  %846 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %845, i32 0, i32 3
  %847 = load i32, i32* %846, align 4
  %848 = load %struct.clbox*, %struct.clbox** %25, align 8
  %849 = getelementptr inbounds %struct.clbox, %struct.clbox* %848, i32 0, i32 3
  store i32 %847, i32* %849, align 4
  %850 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %851 = load i32, i32* %16, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %850, i64 %852
  %854 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %853, i32 0, i32 1
  %855 = load i32, i32* %854, align 4
  %856 = load %struct.clbox*, %struct.clbox** %25, align 8
  %857 = getelementptr inbounds %struct.clbox, %struct.clbox* %856, i32 0, i32 4
  store i32 %855, i32* %857, align 8
  %858 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %859 = load i32, i32* %16, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %858, i64 %860
  %862 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %861, i32 0, i32 2
  %863 = load i32, i32* %862, align 4
  %864 = load %struct.clbox*, %struct.clbox** %25, align 8
  %865 = getelementptr inbounds %struct.clbox, %struct.clbox* %864, i32 0, i32 5
  store i32 %863, i32* %865, align 4
  br label %866

866:                                              ; preds = %839, %785
  %867 = load i32, i32* %15, align 4
  %868 = icmp sgt i32 %867, 0
  br i1 %868, label %869, label %935

869:                                              ; preds = %866
  %870 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %871 = load i32, i32* %15, align 4
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds %struct.clbox*, %struct.clbox** %870, i64 %872
  %874 = load %struct.clbox*, %struct.clbox** %873, align 8
  store %struct.clbox* %874, %struct.clbox** %25, align 8
  br label %875

875:                                              ; preds = %883, %869
  %876 = load %struct.clbox*, %struct.clbox** %25, align 8
  %877 = getelementptr inbounds %struct.clbox, %struct.clbox* %876, i32 0, i32 0
  %878 = load i32, i32* %877, align 8
  %879 = load i32, i32* %17, align 4
  %880 = icmp eq i32 %878, %879
  br i1 %880, label %881, label %882

881:                                              ; preds = %875
  br label %887

882:                                              ; preds = %875
  br label %883

883:                                              ; preds = %882
  %884 = load %struct.clbox*, %struct.clbox** %25, align 8
  %885 = getelementptr inbounds %struct.clbox, %struct.clbox* %884, i32 0, i32 7
  %886 = load %struct.clbox*, %struct.clbox** %885, align 8
  store %struct.clbox* %886, %struct.clbox** %25, align 8
  br label %875

887:                                              ; preds = %881
  %888 = load i32, i32* %13, align 4
  %889 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %890 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %889, i32 0, i32 3
  %891 = load i32, i32* %890, align 8
  %892 = sub nsw i32 %888, %891
  %893 = load %struct.clbox*, %struct.clbox** %25, align 8
  %894 = getelementptr inbounds %struct.clbox, %struct.clbox* %893, i32 0, i32 6
  %895 = load i32, i32* %894, align 8
  %896 = icmp slt i32 %892, %895
  br i1 %896, label %897, label %908

897:                                              ; preds = %887
  %898 = load i32, i32* %13, align 4
  %899 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %900 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %899, i32 0, i32 3
  %901 = load i32, i32* %900, align 8
  %902 = sub nsw i32 %898, %901
  %903 = load %struct.clbox*, %struct.clbox** %25, align 8
  %904 = getelementptr inbounds %struct.clbox, %struct.clbox* %903, i32 0, i32 6
  store i32 %902, i32* %904, align 8
  %905 = load i32, i32* %19, align 4
  %906 = load %struct.clbox*, %struct.clbox** %25, align 8
  %907 = getelementptr inbounds %struct.clbox, %struct.clbox* %906, i32 0, i32 1
  store i32 %905, i32* %907, align 4
  br label %908

908:                                              ; preds = %897, %887
  %909 = load %struct.clbox*, %struct.clbox** %25, align 8
  %910 = getelementptr inbounds %struct.clbox, %struct.clbox* %909, i32 0, i32 2
  store i32 1, i32* %910, align 8
  %911 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %912 = load i32, i32* %17, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %911, i64 %913
  %915 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %914, i32 0, i32 3
  %916 = load i32, i32* %915, align 4
  %917 = load %struct.clbox*, %struct.clbox** %25, align 8
  %918 = getelementptr inbounds %struct.clbox, %struct.clbox* %917, i32 0, i32 3
  store i32 %916, i32* %918, align 4
  %919 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %920 = load i32, i32* %17, align 4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %919, i64 %921
  %923 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %922, i32 0, i32 1
  %924 = load i32, i32* %923, align 4
  %925 = load %struct.clbox*, %struct.clbox** %25, align 8
  %926 = getelementptr inbounds %struct.clbox, %struct.clbox* %925, i32 0, i32 4
  store i32 %924, i32* %926, align 8
  %927 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %928 = load i32, i32* %17, align 4
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %927, i64 %929
  %931 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %930, i32 0, i32 2
  %932 = load i32, i32* %931, align 4
  %933 = load %struct.clbox*, %struct.clbox** %25, align 8
  %934 = getelementptr inbounds %struct.clbox, %struct.clbox* %933, i32 0, i32 5
  store i32 %932, i32* %934, align 4
  br label %935

935:                                              ; preds = %908, %866
  br label %936

936:                                              ; preds = %935, %722
  %937 = load %struct.wcbox*, %struct.wcbox** %24, align 8
  %938 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %937, i32 0, i32 4
  %939 = load %struct.wcbox*, %struct.wcbox** %938, align 8
  store %struct.wcbox* %939, %struct.wcbox** %24, align 8
  br label %714, !llvm.loop !21

940:                                              ; preds = %714
  br label %941

941:                                              ; preds = %940
  %942 = load i32, i32* %7, align 4
  %943 = add nsw i32 %942, 1
  store i32 %943, i32* %7, align 4
  br label %704, !llvm.loop !22

944:                                              ; preds = %704
  store i32 1, i32* %10, align 4
  br label %945

945:                                              ; preds = %991, %944
  %946 = load i32, i32* %10, align 4
  %947 = load i32, i32* @numberCells, align 4
  %948 = icmp sle i32 %946, %947
  br i1 %948, label %949, label %994

949:                                              ; preds = %945
  %950 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %951 = load i32, i32* %10, align 4
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds %struct.clbox*, %struct.clbox** %950, i64 %952
  %954 = load %struct.clbox*, %struct.clbox** %953, align 8
  store %struct.clbox* %954, %struct.clbox** %25, align 8
  %955 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %956 = load i32, i32* %10, align 4
  %957 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %955, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef %956)
  br label %958

958:                                              ; preds = %986, %949
  %959 = load %struct.clbox*, %struct.clbox** %25, align 8
  %960 = icmp ne %struct.clbox* %959, null
  br i1 %960, label %961, label %990

961:                                              ; preds = %958
  %962 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %963 = load %struct.clbox*, %struct.clbox** %25, align 8
  %964 = getelementptr inbounds %struct.clbox, %struct.clbox* %963, i32 0, i32 0
  %965 = load i32, i32* %964, align 8
  %966 = load %struct.clbox*, %struct.clbox** %25, align 8
  %967 = getelementptr inbounds %struct.clbox, %struct.clbox* %966, i32 0, i32 1
  %968 = load i32, i32* %967, align 4
  %969 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %962, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %965, i32 noundef %968)
  %970 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %971 = load %struct.clbox*, %struct.clbox** %25, align 8
  %972 = getelementptr inbounds %struct.clbox, %struct.clbox* %971, i32 0, i32 2
  %973 = load i32, i32* %972, align 8
  %974 = load %struct.clbox*, %struct.clbox** %25, align 8
  %975 = getelementptr inbounds %struct.clbox, %struct.clbox* %974, i32 0, i32 3
  %976 = load i32, i32* %975, align 4
  %977 = load %struct.clbox*, %struct.clbox** %25, align 8
  %978 = getelementptr inbounds %struct.clbox, %struct.clbox* %977, i32 0, i32 4
  %979 = load i32, i32* %978, align 8
  %980 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %970, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 noundef %973, i32 noundef %976, i32 noundef %979)
  %981 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %982 = load %struct.clbox*, %struct.clbox** %25, align 8
  %983 = getelementptr inbounds %struct.clbox, %struct.clbox* %982, i32 0, i32 5
  %984 = load i32, i32* %983, align 4
  %985 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %981, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %984)
  br label %986

986:                                              ; preds = %961
  %987 = load %struct.clbox*, %struct.clbox** %25, align 8
  %988 = getelementptr inbounds %struct.clbox, %struct.clbox* %987, i32 0, i32 7
  %989 = load %struct.clbox*, %struct.clbox** %988, align 8
  store %struct.clbox* %989, %struct.clbox** %25, align 8
  br label %958, !llvm.loop !23

990:                                              ; preds = %958
  br label %991

991:                                              ; preds = %990
  %992 = load i32, i32* %10, align 4
  %993 = add nsw i32 %992, 1
  store i32 %993, i32* %10, align 4
  br label %945, !llvm.loop !24

994:                                              ; preds = %945
  ret void
}

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
