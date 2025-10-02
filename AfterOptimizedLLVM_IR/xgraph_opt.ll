; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/xgraph.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/xgraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodbox = type { %struct.flare*, %struct.flare*, i32 }
%struct.flare = type { i32, i32*, %struct.flare* }
%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.wcbox = type { i32, i32, i32*, i32, %struct.wcbox* }

@numberCells = external dso_local global i32, align 4
@xNodules = external dso_local global %struct.nodbox*, align 8
@Vlist = external dso_local global %struct.dlink1*, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@vChanBeginRoot = external dso_local global %struct.tnode*, align 8
@eArray = external dso_local global %struct.ebox*, align 8
@Vend = external dso_local global %struct.dlink1*, align 8
@vChanEndRoot = external dso_local global %struct.tnode*, align 8
@vFixedList = external dso_local global %struct.dlink1*, align 8
@numXnodes = external dso_local global i32, align 4
@xNodeArray = external dso_local global %struct.wcbox**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @xgraph() #0 {
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
  %17 = alloca %struct.wcbox*, align 8
  %18 = alloca %struct.dlink1*, align 8
  %19 = alloca %struct.plist*, align 8
  %20 = alloca %struct.flare*, align 8
  %21 = alloca %struct.flare*, align 8
  %22 = alloca %struct.flare*, align 8
  %23 = alloca %struct.tnode*, align 8
  %24 = load i32, i32* @numberCells, align 4
  %25 = add nsw i32 2, %24
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 24
  %28 = call noalias i8* @malloc(i64 noundef %27) #3
  %29 = bitcast i8* %28 to %struct.nodbox*
  store %struct.nodbox* %29, %struct.nodbox** @xNodules, align 8
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %51, %0
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @numberCells, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %36, i64 %38
  %40 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %39, i32 0, i32 0
  store %struct.flare* null, %struct.flare** %40, align 8
  %41 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %41, i64 %43
  %45 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %44, i32 0, i32 1
  store %struct.flare* null, %struct.flare** %45, align 8
  %46 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %46, i64 %48
  %50 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %30, !llvm.loop !4

54:                                               ; preds = %30
  %55 = load %struct.dlink1*, %struct.dlink1** @Vlist, align 8
  store %struct.dlink1* %55, %struct.dlink1** %18, align 8
  %56 = load %struct.dlink1*, %struct.dlink1** %18, align 8
  %57 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %2, align 4
  %59 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %59, i64 %61
  %63 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %3, align 4
  %65 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %65, i64 %67
  %69 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %5, align 4
  %71 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %71, i64 %73
  %75 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  %77 = load %struct.tnode*, %struct.tnode** @vChanBeginRoot, align 8
  %78 = load i32, i32* %3, align 4
  %79 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %77, i32 noundef %78)
  store %struct.plist* %79, %struct.plist** %19, align 8
  br label %80

80:                                               ; preds = %154, %54
  %81 = load %struct.plist*, %struct.plist** %19, align 8
  %82 = icmp ne %struct.plist* %81, null
  br i1 %82, label %83, label %158

83:                                               ; preds = %80
  %84 = load %struct.plist*, %struct.plist** %19, align 8
  %85 = getelementptr inbounds %struct.plist, %struct.plist* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %4, align 4
  %87 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ebox, %struct.ebox* %87, i64 %89
  %91 = getelementptr inbounds %struct.ebox, %struct.ebox* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %7, align 4
  %93 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ebox, %struct.ebox* %93, i64 %95
  %97 = getelementptr inbounds %struct.ebox, %struct.ebox* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %83
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %102, %83
  br label %154

107:                                              ; preds = %102
  %108 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %109 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %108, i64 0
  %110 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %109, i32 0, i32 1
  %111 = load %struct.flare*, %struct.flare** %110, align 8
  store %struct.flare* %111, %struct.flare** %20, align 8
  %112 = call noalias i8* @malloc(i64 noundef 24) #3
  %113 = bitcast i8* %112 to %struct.flare*
  %114 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %115 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %114, i64 0
  %116 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %115, i32 0, i32 1
  store %struct.flare* %113, %struct.flare** %116, align 8
  %117 = load %struct.flare*, %struct.flare** %20, align 8
  %118 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %119 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %118, i64 0
  %120 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %119, i32 0, i32 1
  %121 = load %struct.flare*, %struct.flare** %120, align 8
  %122 = getelementptr inbounds %struct.flare, %struct.flare* %121, i32 0, i32 2
  store %struct.flare* %117, %struct.flare** %122, align 8
  %123 = load i32, i32* %2, align 4
  %124 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %125 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %124, i64 0
  %126 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %125, i32 0, i32 1
  %127 = load %struct.flare*, %struct.flare** %126, align 8
  %128 = getelementptr inbounds %struct.flare, %struct.flare* %127, i32 0, i32 0
  store i32 %123, i32* %128, align 8
  %129 = call noalias i8* @malloc(i64 noundef 8) #3
  %130 = bitcast i8* %129 to i32*
  %131 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %132 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %131, i64 0
  %133 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %132, i32 0, i32 1
  %134 = load %struct.flare*, %struct.flare** %133, align 8
  %135 = getelementptr inbounds %struct.flare, %struct.flare* %134, i32 0, i32 1
  store i32* %130, i32** %135, align 8
  %136 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %137 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %136, i64 0
  %138 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %137, i32 0, i32 1
  %139 = load %struct.flare*, %struct.flare** %138, align 8
  %140 = getelementptr inbounds %struct.flare, %struct.flare* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 1, i32* %142, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %145 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %144, i64 0
  %146 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %145, i32 0, i32 1
  %147 = load %struct.flare*, %struct.flare** %146, align 8
  %148 = getelementptr inbounds %struct.flare, %struct.flare* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %143, i32* %150, align 4
  %151 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %152 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %151, i64 0
  %153 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %152, i32 0, i32 2
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %107, %106
  %155 = load %struct.plist*, %struct.plist** %19, align 8
  %156 = getelementptr inbounds %struct.plist, %struct.plist* %155, i32 0, i32 1
  %157 = load %struct.plist*, %struct.plist** %156, align 8
  store %struct.plist* %157, %struct.plist** %19, align 8
  br label %80, !llvm.loop !6

158:                                              ; preds = %80
  %159 = load %struct.dlink1*, %struct.dlink1** @Vend, align 8
  store %struct.dlink1* %159, %struct.dlink1** %18, align 8
  %160 = load %struct.dlink1*, %struct.dlink1** %18, align 8
  %161 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %2, align 4
  %163 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %164 = load i32, i32* %2, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %163, i64 %165
  %167 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %3, align 4
  %169 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %170 = load i32, i32* %2, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %169, i64 %171
  %173 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %5, align 4
  %175 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %176 = load i32, i32* %2, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %175, i64 %177
  %179 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %6, align 4
  %181 = load %struct.tnode*, %struct.tnode** @vChanEndRoot, align 8
  %182 = load i32, i32* %3, align 4
  %183 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %181, i32 noundef %182)
  store %struct.plist* %183, %struct.plist** %19, align 8
  br label %184

184:                                              ; preds = %282, %158
  %185 = load %struct.plist*, %struct.plist** %19, align 8
  %186 = icmp ne %struct.plist* %185, null
  br i1 %186, label %187, label %286

187:                                              ; preds = %184
  %188 = load %struct.plist*, %struct.plist** %19, align 8
  %189 = getelementptr inbounds %struct.plist, %struct.plist* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %4, align 4
  %191 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.ebox, %struct.ebox* %191, i64 %193
  %195 = getelementptr inbounds %struct.ebox, %struct.ebox* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %7, align 4
  %197 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %198 = load i32, i32* %4, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ebox, %struct.ebox* %197, i64 %199
  %201 = getelementptr inbounds %struct.ebox, %struct.ebox* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %187
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp sle i32 %207, %208
  br i1 %209, label %211, label %210

210:                                              ; preds = %206, %187
  br label %282

211:                                              ; preds = %206
  %212 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %213 = load i32, i32* @numberCells, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %212, i64 %215
  %217 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %216, i32 0, i32 0
  %218 = load %struct.flare*, %struct.flare** %217, align 8
  store %struct.flare* %218, %struct.flare** %20, align 8
  %219 = call noalias i8* @malloc(i64 noundef 24) #3
  %220 = bitcast i8* %219 to %struct.flare*
  %221 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %222 = load i32, i32* @numberCells, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %221, i64 %224
  %226 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %225, i32 0, i32 0
  store %struct.flare* %220, %struct.flare** %226, align 8
  %227 = load %struct.flare*, %struct.flare** %20, align 8
  %228 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %229 = load i32, i32* @numberCells, align 4
  %230 = add nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %228, i64 %231
  %233 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %232, i32 0, i32 0
  %234 = load %struct.flare*, %struct.flare** %233, align 8
  %235 = getelementptr inbounds %struct.flare, %struct.flare* %234, i32 0, i32 2
  store %struct.flare* %227, %struct.flare** %235, align 8
  %236 = load i32, i32* %2, align 4
  %237 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %238 = load i32, i32* @numberCells, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %237, i64 %240
  %242 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %241, i32 0, i32 0
  %243 = load %struct.flare*, %struct.flare** %242, align 8
  %244 = getelementptr inbounds %struct.flare, %struct.flare* %243, i32 0, i32 0
  store i32 %236, i32* %244, align 8
  %245 = call noalias i8* @malloc(i64 noundef 8) #3
  %246 = bitcast i8* %245 to i32*
  %247 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %248 = load i32, i32* @numberCells, align 4
  %249 = add nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %247, i64 %250
  %252 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %251, i32 0, i32 0
  %253 = load %struct.flare*, %struct.flare** %252, align 8
  %254 = getelementptr inbounds %struct.flare, %struct.flare* %253, i32 0, i32 1
  store i32* %246, i32** %254, align 8
  %255 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %256 = load i32, i32* @numberCells, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %255, i64 %258
  %260 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %259, i32 0, i32 0
  %261 = load %struct.flare*, %struct.flare** %260, align 8
  %262 = getelementptr inbounds %struct.flare, %struct.flare* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  store i32 1, i32* %264, align 4
  %265 = load i32, i32* %4, align 4
  %266 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %267 = load i32, i32* @numberCells, align 4
  %268 = add nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %266, i64 %269
  %271 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %270, i32 0, i32 0
  %272 = load %struct.flare*, %struct.flare** %271, align 8
  %273 = getelementptr inbounds %struct.flare, %struct.flare* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  store i32 %265, i32* %275, align 4
  %276 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %277 = load i32, i32* @numberCells, align 4
  %278 = add nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %276, i64 %279
  %281 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %280, i32 0, i32 2
  store i32 1, i32* %281, align 8
  br label %282

282:                                              ; preds = %211, %210
  %283 = load %struct.plist*, %struct.plist** %19, align 8
  %284 = getelementptr inbounds %struct.plist, %struct.plist* %283, i32 0, i32 1
  %285 = load %struct.plist*, %struct.plist** %284, align 8
  store %struct.plist* %285, %struct.plist** %19, align 8
  br label %184, !llvm.loop !7

286:                                              ; preds = %184
  %287 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %288 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %287, i32 0, i32 2
  %289 = load %struct.dlink1*, %struct.dlink1** %288, align 8
  store %struct.dlink1* %289, %struct.dlink1** %18, align 8
  br label %290

290:                                              ; preds = %524, %286
  %291 = load %struct.dlink1*, %struct.dlink1** %18, align 8
  %292 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %291, i32 0, i32 2
  %293 = load %struct.dlink1*, %struct.dlink1** %292, align 8
  %294 = icmp ne %struct.dlink1* %293, null
  br i1 %294, label %295, label %528

295:                                              ; preds = %290
  %296 = load %struct.dlink1*, %struct.dlink1** %18, align 8
  %297 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  store i32 %298, i32* %2, align 4
  %299 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %300 = load i32, i32* %2, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %299, i64 %301
  %303 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %9, align 4
  %305 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %306 = load i32, i32* %9, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %305, i64 %307
  %309 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %312, label %313

312:                                              ; preds = %295
  br label %524

313:                                              ; preds = %295
  %314 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %314, i64 %316
  %318 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %317, i32 0, i32 2
  store i32 1, i32* %318, align 8
  %319 = load i32, i32* %2, align 4
  store i32 %319, i32* %11, align 4
  br label %320

320:                                              ; preds = %519, %313
  %321 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %322 = load i32, i32* %2, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %321, i64 %323
  %325 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %417

328:                                              ; preds = %320
  %329 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %330 = load i32, i32* %2, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %329, i64 %331
  %333 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %3, align 4
  %335 = load %struct.tnode*, %struct.tnode** @vChanEndRoot, align 8
  %336 = load i32, i32* %3, align 4
  %337 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %335, i32 noundef %336)
  store %struct.plist* %337, %struct.plist** %19, align 8
  br label %338

338:                                              ; preds = %412, %328
  %339 = load %struct.plist*, %struct.plist** %19, align 8
  %340 = icmp ne %struct.plist* %339, null
  br i1 %340, label %341, label %416

341:                                              ; preds = %338
  %342 = load %struct.plist*, %struct.plist** %19, align 8
  %343 = getelementptr inbounds %struct.plist, %struct.plist* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  store i32 %344, i32* %4, align 4
  %345 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %346 = load i32, i32* %4, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.ebox, %struct.ebox* %345, i64 %347
  %349 = getelementptr inbounds %struct.ebox, %struct.ebox* %348, i32 0, i32 9
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %2, align 4
  %352 = icmp ne i32 %350, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %341
  br label %412

354:                                              ; preds = %341
  %355 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %356 = load i32, i32* %9, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %355, i64 %357
  %359 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %358, i32 0, i32 0
  %360 = load %struct.flare*, %struct.flare** %359, align 8
  store %struct.flare* %360, %struct.flare** %20, align 8
  %361 = call noalias i8* @malloc(i64 noundef 24) #3
  %362 = bitcast i8* %361 to %struct.flare*
  %363 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %364 = load i32, i32* %9, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %363, i64 %365
  %367 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %366, i32 0, i32 0
  store %struct.flare* %362, %struct.flare** %367, align 8
  %368 = load %struct.flare*, %struct.flare** %20, align 8
  %369 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %369, i64 %371
  %373 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %372, i32 0, i32 0
  %374 = load %struct.flare*, %struct.flare** %373, align 8
  %375 = getelementptr inbounds %struct.flare, %struct.flare* %374, i32 0, i32 2
  store %struct.flare* %368, %struct.flare** %375, align 8
  %376 = load i32, i32* %2, align 4
  %377 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %378 = load i32, i32* %9, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %377, i64 %379
  %381 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %380, i32 0, i32 0
  %382 = load %struct.flare*, %struct.flare** %381, align 8
  %383 = getelementptr inbounds %struct.flare, %struct.flare* %382, i32 0, i32 0
  store i32 %376, i32* %383, align 8
  %384 = call noalias i8* @malloc(i64 noundef 8) #3
  %385 = bitcast i8* %384 to i32*
  %386 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %387 = load i32, i32* %9, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %386, i64 %388
  %390 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %389, i32 0, i32 0
  %391 = load %struct.flare*, %struct.flare** %390, align 8
  %392 = getelementptr inbounds %struct.flare, %struct.flare* %391, i32 0, i32 1
  store i32* %385, i32** %392, align 8
  %393 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %394 = load i32, i32* %9, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %393, i64 %395
  %397 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %396, i32 0, i32 0
  %398 = load %struct.flare*, %struct.flare** %397, align 8
  %399 = getelementptr inbounds %struct.flare, %struct.flare* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 0
  store i32 1, i32* %401, align 4
  %402 = load i32, i32* %4, align 4
  %403 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %404 = load i32, i32* %9, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %403, i64 %405
  %407 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %406, i32 0, i32 0
  %408 = load %struct.flare*, %struct.flare** %407, align 8
  %409 = getelementptr inbounds %struct.flare, %struct.flare* %408, i32 0, i32 1
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 1
  store i32 %402, i32* %411, align 4
  br label %412

412:                                              ; preds = %354, %353
  %413 = load %struct.plist*, %struct.plist** %19, align 8
  %414 = getelementptr inbounds %struct.plist, %struct.plist* %413, i32 0, i32 1
  %415 = load %struct.plist*, %struct.plist** %414, align 8
  store %struct.plist* %415, %struct.plist** %19, align 8
  br label %338, !llvm.loop !8

416:                                              ; preds = %338
  br label %506

417:                                              ; preds = %320
  %418 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %419 = load i32, i32* %2, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %418, i64 %420
  %422 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  store i32 %423, i32* %3, align 4
  %424 = load %struct.tnode*, %struct.tnode** @vChanBeginRoot, align 8
  %425 = load i32, i32* %3, align 4
  %426 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %424, i32 noundef %425)
  store %struct.plist* %426, %struct.plist** %19, align 8
  br label %427

427:                                              ; preds = %501, %417
  %428 = load %struct.plist*, %struct.plist** %19, align 8
  %429 = icmp ne %struct.plist* %428, null
  br i1 %429, label %430, label %505

430:                                              ; preds = %427
  %431 = load %struct.plist*, %struct.plist** %19, align 8
  %432 = getelementptr inbounds %struct.plist, %struct.plist* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  store i32 %433, i32* %4, align 4
  %434 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %435 = load i32, i32* %4, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.ebox, %struct.ebox* %434, i64 %436
  %438 = getelementptr inbounds %struct.ebox, %struct.ebox* %437, i32 0, i32 8
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* %2, align 4
  %441 = icmp ne i32 %439, %440
  br i1 %441, label %442, label %443

442:                                              ; preds = %430
  br label %501

443:                                              ; preds = %430
  %444 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %445 = load i32, i32* %9, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %444, i64 %446
  %448 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %447, i32 0, i32 1
  %449 = load %struct.flare*, %struct.flare** %448, align 8
  store %struct.flare* %449, %struct.flare** %20, align 8
  %450 = call noalias i8* @malloc(i64 noundef 24) #3
  %451 = bitcast i8* %450 to %struct.flare*
  %452 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %453 = load i32, i32* %9, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %452, i64 %454
  %456 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %455, i32 0, i32 1
  store %struct.flare* %451, %struct.flare** %456, align 8
  %457 = load %struct.flare*, %struct.flare** %20, align 8
  %458 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %459 = load i32, i32* %9, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %458, i64 %460
  %462 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %461, i32 0, i32 1
  %463 = load %struct.flare*, %struct.flare** %462, align 8
  %464 = getelementptr inbounds %struct.flare, %struct.flare* %463, i32 0, i32 2
  store %struct.flare* %457, %struct.flare** %464, align 8
  %465 = load i32, i32* %2, align 4
  %466 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %467 = load i32, i32* %9, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %466, i64 %468
  %470 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %469, i32 0, i32 1
  %471 = load %struct.flare*, %struct.flare** %470, align 8
  %472 = getelementptr inbounds %struct.flare, %struct.flare* %471, i32 0, i32 0
  store i32 %465, i32* %472, align 8
  %473 = call noalias i8* @malloc(i64 noundef 8) #3
  %474 = bitcast i8* %473 to i32*
  %475 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %476 = load i32, i32* %9, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %475, i64 %477
  %479 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %478, i32 0, i32 1
  %480 = load %struct.flare*, %struct.flare** %479, align 8
  %481 = getelementptr inbounds %struct.flare, %struct.flare* %480, i32 0, i32 1
  store i32* %474, i32** %481, align 8
  %482 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %483 = load i32, i32* %9, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %482, i64 %484
  %486 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %485, i32 0, i32 1
  %487 = load %struct.flare*, %struct.flare** %486, align 8
  %488 = getelementptr inbounds %struct.flare, %struct.flare* %487, i32 0, i32 1
  %489 = load i32*, i32** %488, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 0
  store i32 1, i32* %490, align 4
  %491 = load i32, i32* %4, align 4
  %492 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %493 = load i32, i32* %9, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %492, i64 %494
  %496 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %495, i32 0, i32 1
  %497 = load %struct.flare*, %struct.flare** %496, align 8
  %498 = getelementptr inbounds %struct.flare, %struct.flare* %497, i32 0, i32 1
  %499 = load i32*, i32** %498, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 1
  store i32 %491, i32* %500, align 4
  br label %501

501:                                              ; preds = %443, %442
  %502 = load %struct.plist*, %struct.plist** %19, align 8
  %503 = getelementptr inbounds %struct.plist, %struct.plist* %502, i32 0, i32 1
  %504 = load %struct.plist*, %struct.plist** %503, align 8
  store %struct.plist* %504, %struct.plist** %19, align 8
  br label %427, !llvm.loop !9

505:                                              ; preds = %427
  br label %506

506:                                              ; preds = %505, %416
  %507 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %508 = load i32, i32* %2, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %507, i64 %509
  %511 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %510, i32 0, i32 8
  %512 = load i32, i32* %511, align 4
  store i32 %512, i32* %2, align 4
  %513 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %514 = load i32, i32* %2, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %513, i64 %515
  %517 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %516, i32 0, i32 8
  %518 = load i32, i32* %517, align 4
  store i32 %518, i32* %2, align 4
  br label %519

519:                                              ; preds = %506
  %520 = load i32, i32* %2, align 4
  %521 = load i32, i32* %11, align 4
  %522 = icmp ne i32 %520, %521
  br i1 %522, label %320, label %523, !llvm.loop !10

523:                                              ; preds = %519
  br label %524

524:                                              ; preds = %523, %312
  %525 = load %struct.dlink1*, %struct.dlink1** %18, align 8
  %526 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %525, i32 0, i32 2
  %527 = load %struct.dlink1*, %struct.dlink1** %526, align 8
  store %struct.dlink1* %527, %struct.dlink1** %18, align 8
  br label %290, !llvm.loop !11

528:                                              ; preds = %290
  store i32 0, i32* %9, align 4
  br label %529

529:                                              ; preds = %807, %528
  %530 = load i32, i32* %9, align 4
  %531 = load i32, i32* @numberCells, align 4
  %532 = add nsw i32 %531, 1
  %533 = icmp sle i32 %530, %532
  br i1 %533, label %534, label %810

534:                                              ; preds = %529
  %535 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %536 = load i32, i32* %9, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %535, i64 %537
  %539 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %538, i32 0, i32 0
  %540 = load %struct.flare*, %struct.flare** %539, align 8
  store %struct.flare* %540, %struct.flare** %20, align 8
  br label %541

541:                                              ; preds = %669, %534
  %542 = load %struct.flare*, %struct.flare** %20, align 8
  %543 = icmp ne %struct.flare* %542, null
  br i1 %543, label %544, label %673

544:                                              ; preds = %541
  %545 = load %struct.flare*, %struct.flare** %20, align 8
  %546 = getelementptr inbounds %struct.flare, %struct.flare* %545, i32 0, i32 1
  %547 = load i32*, i32** %546, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 0
  %549 = load i32, i32* %548, align 4
  store i32 %549, i32* %10, align 4
  br label %550

550:                                              ; preds = %665, %544
  %551 = load i32, i32* %10, align 4
  %552 = load %struct.flare*, %struct.flare** %20, align 8
  %553 = getelementptr inbounds %struct.flare, %struct.flare* %552, i32 0, i32 1
  %554 = load i32*, i32** %553, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 0
  %556 = load i32, i32* %555, align 4
  %557 = icmp sle i32 %551, %556
  br i1 %557, label %558, label %668

558:                                              ; preds = %550
  %559 = load %struct.flare*, %struct.flare** %20, align 8
  %560 = getelementptr inbounds %struct.flare, %struct.flare* %559, i32 0, i32 1
  %561 = load i32*, i32** %560, align 8
  %562 = load i32, i32* %10, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %561, i64 %563
  %565 = load i32, i32* %564, align 4
  store i32 %565, i32* %4, align 4
  %566 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %567 = load i32, i32* %4, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds %struct.ebox, %struct.ebox* %566, i64 %568
  %570 = getelementptr inbounds %struct.ebox, %struct.ebox* %569, i32 0, i32 3
  %571 = load i32, i32* %570, align 4
  store i32 %571, i32* %3, align 4
  %572 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %573 = load i32, i32* %4, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds %struct.ebox, %struct.ebox* %572, i64 %574
  %576 = getelementptr inbounds %struct.ebox, %struct.ebox* %575, i32 0, i32 6
  %577 = load i32, i32* %576, align 8
  store i32 %577, i32* %5, align 4
  %578 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %579 = load i32, i32* %4, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds %struct.ebox, %struct.ebox* %578, i64 %580
  %582 = getelementptr inbounds %struct.ebox, %struct.ebox* %581, i32 0, i32 7
  %583 = load i32, i32* %582, align 4
  store i32 %583, i32* %6, align 4
  %584 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %585 = load i32, i32* %4, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.ebox, %struct.ebox* %584, i64 %586
  %588 = getelementptr inbounds %struct.ebox, %struct.ebox* %587, i32 0, i32 8
  %589 = load i32, i32* %588, align 8
  store i32 %589, i32* %2, align 4
  %590 = load %struct.tnode*, %struct.tnode** @vChanEndRoot, align 8
  %591 = load i32, i32* %3, align 4
  %592 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %590, i32 noundef %591)
  store %struct.plist* %592, %struct.plist** %19, align 8
  br label %593

593:                                              ; preds = %660, %558
  %594 = load %struct.plist*, %struct.plist** %19, align 8
  %595 = icmp ne %struct.plist* %594, null
  br i1 %595, label %596, label %664

596:                                              ; preds = %593
  %597 = load %struct.plist*, %struct.plist** %19, align 8
  %598 = getelementptr inbounds %struct.plist, %struct.plist* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  store i32 %599, i32* %4, align 4
  %600 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %601 = load i32, i32* %4, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.ebox, %struct.ebox* %600, i64 %602
  %604 = getelementptr inbounds %struct.ebox, %struct.ebox* %603, i32 0, i32 6
  %605 = load i32, i32* %604, align 8
  store i32 %605, i32* %7, align 4
  %606 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %607 = load i32, i32* %4, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.ebox, %struct.ebox* %606, i64 %608
  %610 = getelementptr inbounds %struct.ebox, %struct.ebox* %609, i32 0, i32 7
  %611 = load i32, i32* %610, align 4
  store i32 %611, i32* %8, align 4
  %612 = load i32, i32* %8, align 4
  %613 = load i32, i32* %6, align 4
  %614 = icmp sge i32 %612, %613
  br i1 %614, label %615, label %619

615:                                              ; preds = %596
  %616 = load i32, i32* %7, align 4
  %617 = load i32, i32* %5, align 4
  %618 = icmp sle i32 %616, %617
  br i1 %618, label %620, label %619

619:                                              ; preds = %615, %596
  br label %660

620:                                              ; preds = %615
  %621 = load i32, i32* %3, align 4
  %622 = load i32, i32* %4, align 4
  call void @tdelete(%struct.tnode** noundef @vChanEndRoot, i32 noundef %621, i32 noundef %622)
  %623 = load %struct.flare*, %struct.flare** %20, align 8
  %624 = getelementptr inbounds %struct.flare, %struct.flare* %623, i32 0, i32 1
  %625 = load i32*, i32** %624, align 8
  %626 = getelementptr inbounds i32, i32* %625, i64 0
  %627 = load i32, i32* %626, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %626, align 4
  %629 = srem i32 %628, 2
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %648

631:                                              ; preds = %620
  %632 = load %struct.flare*, %struct.flare** %20, align 8
  %633 = getelementptr inbounds %struct.flare, %struct.flare* %632, i32 0, i32 1
  %634 = load i32*, i32** %633, align 8
  %635 = bitcast i32* %634 to i8*
  %636 = load %struct.flare*, %struct.flare** %20, align 8
  %637 = getelementptr inbounds %struct.flare, %struct.flare* %636, i32 0, i32 1
  %638 = load i32*, i32** %637, align 8
  %639 = getelementptr inbounds i32, i32* %638, i64 0
  %640 = load i32, i32* %639, align 4
  %641 = add nsw i32 2, %640
  %642 = sext i32 %641 to i64
  %643 = mul i64 %642, 4
  %644 = call i8* @realloc(i8* noundef %635, i64 noundef %643) #3
  %645 = bitcast i8* %644 to i32*
  %646 = load %struct.flare*, %struct.flare** %20, align 8
  %647 = getelementptr inbounds %struct.flare, %struct.flare* %646, i32 0, i32 1
  store i32* %645, i32** %647, align 8
  br label %648

648:                                              ; preds = %631, %620
  %649 = load i32, i32* %4, align 4
  %650 = load %struct.flare*, %struct.flare** %20, align 8
  %651 = getelementptr inbounds %struct.flare, %struct.flare* %650, i32 0, i32 1
  %652 = load i32*, i32** %651, align 8
  %653 = load %struct.flare*, %struct.flare** %20, align 8
  %654 = getelementptr inbounds %struct.flare, %struct.flare* %653, i32 0, i32 1
  %655 = load i32*, i32** %654, align 8
  %656 = getelementptr inbounds i32, i32* %655, i64 0
  %657 = load i32, i32* %656, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i32, i32* %652, i64 %658
  store i32 %649, i32* %659, align 4
  br label %664

660:                                              ; preds = %619
  %661 = load %struct.plist*, %struct.plist** %19, align 8
  %662 = getelementptr inbounds %struct.plist, %struct.plist* %661, i32 0, i32 1
  %663 = load %struct.plist*, %struct.plist** %662, align 8
  store %struct.plist* %663, %struct.plist** %19, align 8
  br label %593, !llvm.loop !12

664:                                              ; preds = %648, %593
  br label %665

665:                                              ; preds = %664
  %666 = load i32, i32* %10, align 4
  %667 = add nsw i32 %666, 1
  store i32 %667, i32* %10, align 4
  br label %550, !llvm.loop !13

668:                                              ; preds = %550
  br label %669

669:                                              ; preds = %668
  %670 = load %struct.flare*, %struct.flare** %20, align 8
  %671 = getelementptr inbounds %struct.flare, %struct.flare* %670, i32 0, i32 2
  %672 = load %struct.flare*, %struct.flare** %671, align 8
  store %struct.flare* %672, %struct.flare** %20, align 8
  br label %541, !llvm.loop !14

673:                                              ; preds = %541
  %674 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %675 = load i32, i32* %9, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %674, i64 %676
  %678 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %677, i32 0, i32 1
  %679 = load %struct.flare*, %struct.flare** %678, align 8
  store %struct.flare* %679, %struct.flare** %20, align 8
  br label %680

680:                                              ; preds = %802, %673
  %681 = load %struct.flare*, %struct.flare** %20, align 8
  %682 = icmp ne %struct.flare* %681, null
  br i1 %682, label %683, label %806

683:                                              ; preds = %680
  %684 = load %struct.flare*, %struct.flare** %20, align 8
  %685 = getelementptr inbounds %struct.flare, %struct.flare* %684, i32 0, i32 1
  %686 = load i32*, i32** %685, align 8
  %687 = getelementptr inbounds i32, i32* %686, i64 0
  %688 = load i32, i32* %687, align 4
  store i32 %688, i32* %10, align 4
  br label %689

689:                                              ; preds = %798, %683
  %690 = load i32, i32* %10, align 4
  %691 = load %struct.flare*, %struct.flare** %20, align 8
  %692 = getelementptr inbounds %struct.flare, %struct.flare* %691, i32 0, i32 1
  %693 = load i32*, i32** %692, align 8
  %694 = getelementptr inbounds i32, i32* %693, i64 0
  %695 = load i32, i32* %694, align 4
  %696 = icmp sle i32 %690, %695
  br i1 %696, label %697, label %801

697:                                              ; preds = %689
  %698 = load %struct.flare*, %struct.flare** %20, align 8
  %699 = getelementptr inbounds %struct.flare, %struct.flare* %698, i32 0, i32 1
  %700 = load i32*, i32** %699, align 8
  %701 = load i32, i32* %10, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i32, i32* %700, i64 %702
  %704 = load i32, i32* %703, align 4
  store i32 %704, i32* %4, align 4
  %705 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %706 = load i32, i32* %4, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.ebox, %struct.ebox* %705, i64 %707
  %709 = getelementptr inbounds %struct.ebox, %struct.ebox* %708, i32 0, i32 4
  %710 = load i32, i32* %709, align 8
  store i32 %710, i32* %3, align 4
  %711 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %712 = load i32, i32* %4, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.ebox, %struct.ebox* %711, i64 %713
  %715 = getelementptr inbounds %struct.ebox, %struct.ebox* %714, i32 0, i32 6
  %716 = load i32, i32* %715, align 8
  store i32 %716, i32* %5, align 4
  %717 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %718 = load i32, i32* %4, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds %struct.ebox, %struct.ebox* %717, i64 %719
  %721 = getelementptr inbounds %struct.ebox, %struct.ebox* %720, i32 0, i32 7
  %722 = load i32, i32* %721, align 4
  store i32 %722, i32* %6, align 4
  %723 = load %struct.tnode*, %struct.tnode** @vChanBeginRoot, align 8
  %724 = load i32, i32* %3, align 4
  %725 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %723, i32 noundef %724)
  store %struct.plist* %725, %struct.plist** %19, align 8
  br label %726

726:                                              ; preds = %793, %697
  %727 = load %struct.plist*, %struct.plist** %19, align 8
  %728 = icmp ne %struct.plist* %727, null
  br i1 %728, label %729, label %797

729:                                              ; preds = %726
  %730 = load %struct.plist*, %struct.plist** %19, align 8
  %731 = getelementptr inbounds %struct.plist, %struct.plist* %730, i32 0, i32 0
  %732 = load i32, i32* %731, align 8
  store i32 %732, i32* %4, align 4
  %733 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %734 = load i32, i32* %4, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds %struct.ebox, %struct.ebox* %733, i64 %735
  %737 = getelementptr inbounds %struct.ebox, %struct.ebox* %736, i32 0, i32 6
  %738 = load i32, i32* %737, align 8
  store i32 %738, i32* %7, align 4
  %739 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %740 = load i32, i32* %4, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.ebox, %struct.ebox* %739, i64 %741
  %743 = getelementptr inbounds %struct.ebox, %struct.ebox* %742, i32 0, i32 7
  %744 = load i32, i32* %743, align 4
  store i32 %744, i32* %8, align 4
  %745 = load i32, i32* %8, align 4
  %746 = load i32, i32* %6, align 4
  %747 = icmp sge i32 %745, %746
  br i1 %747, label %748, label %752

748:                                              ; preds = %729
  %749 = load i32, i32* %7, align 4
  %750 = load i32, i32* %5, align 4
  %751 = icmp sle i32 %749, %750
  br i1 %751, label %753, label %752

752:                                              ; preds = %748, %729
  br label %793

753:                                              ; preds = %748
  %754 = load i32, i32* %3, align 4
  %755 = load i32, i32* %4, align 4
  call void @tdelete(%struct.tnode** noundef @vChanBeginRoot, i32 noundef %754, i32 noundef %755)
  %756 = load %struct.flare*, %struct.flare** %20, align 8
  %757 = getelementptr inbounds %struct.flare, %struct.flare* %756, i32 0, i32 1
  %758 = load i32*, i32** %757, align 8
  %759 = getelementptr inbounds i32, i32* %758, i64 0
  %760 = load i32, i32* %759, align 4
  %761 = add nsw i32 %760, 1
  store i32 %761, i32* %759, align 4
  %762 = srem i32 %761, 2
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %764, label %781

764:                                              ; preds = %753
  %765 = load %struct.flare*, %struct.flare** %20, align 8
  %766 = getelementptr inbounds %struct.flare, %struct.flare* %765, i32 0, i32 1
  %767 = load i32*, i32** %766, align 8
  %768 = bitcast i32* %767 to i8*
  %769 = load %struct.flare*, %struct.flare** %20, align 8
  %770 = getelementptr inbounds %struct.flare, %struct.flare* %769, i32 0, i32 1
  %771 = load i32*, i32** %770, align 8
  %772 = getelementptr inbounds i32, i32* %771, i64 0
  %773 = load i32, i32* %772, align 4
  %774 = add nsw i32 2, %773
  %775 = sext i32 %774 to i64
  %776 = mul i64 %775, 4
  %777 = call i8* @realloc(i8* noundef %768, i64 noundef %776) #3
  %778 = bitcast i8* %777 to i32*
  %779 = load %struct.flare*, %struct.flare** %20, align 8
  %780 = getelementptr inbounds %struct.flare, %struct.flare* %779, i32 0, i32 1
  store i32* %778, i32** %780, align 8
  br label %781

781:                                              ; preds = %764, %753
  %782 = load i32, i32* %4, align 4
  %783 = load %struct.flare*, %struct.flare** %20, align 8
  %784 = getelementptr inbounds %struct.flare, %struct.flare* %783, i32 0, i32 1
  %785 = load i32*, i32** %784, align 8
  %786 = load %struct.flare*, %struct.flare** %20, align 8
  %787 = getelementptr inbounds %struct.flare, %struct.flare* %786, i32 0, i32 1
  %788 = load i32*, i32** %787, align 8
  %789 = getelementptr inbounds i32, i32* %788, i64 0
  %790 = load i32, i32* %789, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds i32, i32* %785, i64 %791
  store i32 %782, i32* %792, align 4
  br label %797

793:                                              ; preds = %752
  %794 = load %struct.plist*, %struct.plist** %19, align 8
  %795 = getelementptr inbounds %struct.plist, %struct.plist* %794, i32 0, i32 1
  %796 = load %struct.plist*, %struct.plist** %795, align 8
  store %struct.plist* %796, %struct.plist** %19, align 8
  br label %726, !llvm.loop !15

797:                                              ; preds = %781, %726
  br label %798

798:                                              ; preds = %797
  %799 = load i32, i32* %10, align 4
  %800 = add nsw i32 %799, 1
  store i32 %800, i32* %10, align 4
  br label %689, !llvm.loop !16

801:                                              ; preds = %689
  br label %802

802:                                              ; preds = %801
  %803 = load %struct.flare*, %struct.flare** %20, align 8
  %804 = getelementptr inbounds %struct.flare, %struct.flare* %803, i32 0, i32 2
  %805 = load %struct.flare*, %struct.flare** %804, align 8
  store %struct.flare* %805, %struct.flare** %20, align 8
  br label %680, !llvm.loop !17

806:                                              ; preds = %680
  br label %807

807:                                              ; preds = %806
  %808 = load i32, i32* %9, align 4
  %809 = add nsw i32 %808, 1
  store i32 %809, i32* %9, align 4
  br label %529, !llvm.loop !18

810:                                              ; preds = %529
  store i32 0, i32* @numXnodes, align 4
  %811 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  store %struct.dlink1* %811, %struct.dlink1** %18, align 8
  br label %812

812:                                              ; preds = %825, %810
  %813 = load %struct.dlink1*, %struct.dlink1** %18, align 8
  %814 = icmp ne %struct.dlink1* %813, null
  br i1 %814, label %815, label %829

815:                                              ; preds = %812
  %816 = load i32, i32* @numXnodes, align 4
  %817 = add nsw i32 %816, 1
  store i32 %817, i32* @numXnodes, align 4
  %818 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %819 = load %struct.dlink1*, %struct.dlink1** %18, align 8
  %820 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %819, i32 0, i32 0
  %821 = load i32, i32* %820, align 8
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %818, i64 %822
  %824 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %823, i32 0, i32 9
  store i32 %817, i32* %824, align 4
  br label %825

825:                                              ; preds = %815
  %826 = load %struct.dlink1*, %struct.dlink1** %18, align 8
  %827 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %826, i32 0, i32 2
  %828 = load %struct.dlink1*, %struct.dlink1** %827, align 8
  store %struct.dlink1* %828, %struct.dlink1** %18, align 8
  br label %812, !llvm.loop !19

829:                                              ; preds = %812
  %830 = load i32, i32* @numXnodes, align 4
  %831 = add nsw i32 1, %830
  %832 = sext i32 %831 to i64
  %833 = mul i64 %832, 8
  %834 = call noalias i8* @malloc(i64 noundef %833) #3
  %835 = bitcast i8* %834 to %struct.wcbox**
  store %struct.wcbox** %835, %struct.wcbox*** @xNodeArray, align 8
  store i32 1, i32* %1, align 4
  br label %836

836:                                              ; preds = %845, %829
  %837 = load i32, i32* %1, align 4
  %838 = load i32, i32* @numXnodes, align 4
  %839 = icmp sle i32 %837, %838
  br i1 %839, label %840, label %848

840:                                              ; preds = %836
  %841 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %842 = load i32, i32* %1, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %841, i64 %843
  store %struct.wcbox* null, %struct.wcbox** %844, align 8
  br label %845

845:                                              ; preds = %840
  %846 = load i32, i32* %1, align 4
  %847 = add nsw i32 %846, 1
  store i32 %847, i32* %1, align 4
  br label %836, !llvm.loop !20

848:                                              ; preds = %836
  store i32 1, i32* %9, align 4
  br label %849

849:                                              ; preds = %958, %848
  %850 = load i32, i32* %9, align 4
  %851 = load i32, i32* @numberCells, align 4
  %852 = icmp sle i32 %850, %851
  br i1 %852, label %853, label %961

853:                                              ; preds = %849
  %854 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %855 = load i32, i32* %9, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %854, i64 %856
  %858 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %857, i32 0, i32 0
  %859 = load %struct.flare*, %struct.flare** %858, align 8
  store %struct.flare* %859, %struct.flare** %21, align 8
  br label %860

860:                                              ; preds = %953, %853
  %861 = load %struct.flare*, %struct.flare** %21, align 8
  %862 = icmp ne %struct.flare* %861, null
  br i1 %862, label %863, label %957

863:                                              ; preds = %860
  %864 = load %struct.flare*, %struct.flare** %21, align 8
  %865 = getelementptr inbounds %struct.flare, %struct.flare* %864, i32 0, i32 0
  %866 = load i32, i32* %865, align 8
  store i32 %866, i32* %12, align 4
  %867 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %868 = load i32, i32* %12, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %867, i64 %869
  %871 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %870, i32 0, i32 9
  %872 = load i32, i32* %871, align 4
  store i32 %872, i32* %13, align 4
  %873 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %874 = load i32, i32* %9, align 4
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %873, i64 %875
  %877 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %876, i32 0, i32 1
  %878 = load %struct.flare*, %struct.flare** %877, align 8
  store %struct.flare* %878, %struct.flare** %22, align 8
  br label %879

879:                                              ; preds = %948, %863
  %880 = load %struct.flare*, %struct.flare** %22, align 8
  %881 = icmp ne %struct.flare* %880, null
  br i1 %881, label %882, label %952

882:                                              ; preds = %879
  %883 = load %struct.flare*, %struct.flare** %22, align 8
  %884 = getelementptr inbounds %struct.flare, %struct.flare* %883, i32 0, i32 0
  %885 = load i32, i32* %884, align 8
  store i32 %885, i32* %14, align 4
  %886 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %887 = load i32, i32* %14, align 4
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %886, i64 %888
  %890 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %889, i32 0, i32 9
  %891 = load i32, i32* %890, align 4
  store i32 %891, i32* %15, align 4
  %892 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %893 = load i32, i32* %13, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %892, i64 %894
  %896 = load %struct.wcbox*, %struct.wcbox** %895, align 8
  store %struct.wcbox* %896, %struct.wcbox** %17, align 8
  %897 = call noalias i8* @malloc(i64 noundef 32) #3
  %898 = bitcast i8* %897 to %struct.wcbox*
  %899 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %900 = load i32, i32* %13, align 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %899, i64 %901
  store %struct.wcbox* %898, %struct.wcbox** %902, align 8
  %903 = load %struct.wcbox*, %struct.wcbox** %17, align 8
  %904 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %905 = load i32, i32* %13, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %904, i64 %906
  %908 = load %struct.wcbox*, %struct.wcbox** %907, align 8
  %909 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %908, i32 0, i32 4
  store %struct.wcbox* %903, %struct.wcbox** %909, align 8
  %910 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %911 = load i32, i32* %13, align 4
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %910, i64 %912
  %914 = load %struct.wcbox*, %struct.wcbox** %913, align 8
  %915 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %914, i32 0, i32 0
  store i32 1, i32* %915, align 8
  %916 = load i32, i32* %15, align 4
  %917 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %918 = load i32, i32* %13, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %917, i64 %919
  %921 = load %struct.wcbox*, %struct.wcbox** %920, align 8
  %922 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %921, i32 0, i32 1
  store i32 %916, i32* %922, align 4
  %923 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %924 = load i32, i32* %13, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %923, i64 %925
  %927 = load %struct.wcbox*, %struct.wcbox** %926, align 8
  %928 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %927, i32 0, i32 2
  store i32* null, i32** %928, align 8
  %929 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %930 = load i32, i32* %14, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %929, i64 %931
  %933 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %932, i32 0, i32 3
  %934 = load i32, i32* %933, align 4
  %935 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %936 = load i32, i32* %12, align 4
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %935, i64 %937
  %939 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %938, i32 0, i32 3
  %940 = load i32, i32* %939, align 4
  %941 = sub nsw i32 %934, %940
  %942 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %943 = load i32, i32* %13, align 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %942, i64 %944
  %946 = load %struct.wcbox*, %struct.wcbox** %945, align 8
  %947 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %946, i32 0, i32 3
  store i32 %941, i32* %947, align 8
  br label %948

948:                                              ; preds = %882
  %949 = load %struct.flare*, %struct.flare** %22, align 8
  %950 = getelementptr inbounds %struct.flare, %struct.flare* %949, i32 0, i32 2
  %951 = load %struct.flare*, %struct.flare** %950, align 8
  store %struct.flare* %951, %struct.flare** %22, align 8
  br label %879, !llvm.loop !21

952:                                              ; preds = %879
  br label %953

953:                                              ; preds = %952
  %954 = load %struct.flare*, %struct.flare** %21, align 8
  %955 = getelementptr inbounds %struct.flare, %struct.flare* %954, i32 0, i32 2
  %956 = load %struct.flare*, %struct.flare** %955, align 8
  store %struct.flare* %956, %struct.flare** %21, align 8
  br label %860, !llvm.loop !22

957:                                              ; preds = %860
  br label %958

958:                                              ; preds = %957
  %959 = load i32, i32* %9, align 4
  %960 = add nsw i32 %959, 1
  store i32 %960, i32* %9, align 4
  br label %849, !llvm.loop !23

961:                                              ; preds = %849
  store i32 0, i32* %9, align 4
  br label %962

962:                                              ; preds = %1097, %961
  %963 = load i32, i32* %9, align 4
  %964 = load i32, i32* @numberCells, align 4
  %965 = add nsw i32 %964, 1
  %966 = icmp sle i32 %963, %965
  br i1 %966, label %967, label %1100

967:                                              ; preds = %962
  %968 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %969 = load i32, i32* %9, align 4
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %968, i64 %970
  %972 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %971, i32 0, i32 1
  %973 = load %struct.flare*, %struct.flare** %972, align 8
  store %struct.flare* %973, %struct.flare** %22, align 8
  br label %974

974:                                              ; preds = %1092, %967
  %975 = load %struct.flare*, %struct.flare** %22, align 8
  %976 = icmp ne %struct.flare* %975, null
  br i1 %976, label %977, label %1096

977:                                              ; preds = %974
  %978 = load %struct.flare*, %struct.flare** %22, align 8
  %979 = getelementptr inbounds %struct.flare, %struct.flare* %978, i32 0, i32 0
  %980 = load i32, i32* %979, align 8
  store i32 %980, i32* %12, align 4
  %981 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %982 = load i32, i32* %12, align 4
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %981, i64 %983
  %985 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %984, i32 0, i32 9
  %986 = load i32, i32* %985, align 4
  store i32 %986, i32* %13, align 4
  %987 = load %struct.flare*, %struct.flare** %22, align 8
  %988 = getelementptr inbounds %struct.flare, %struct.flare* %987, i32 0, i32 1
  %989 = load i32*, i32** %988, align 8
  %990 = load %struct.flare*, %struct.flare** %22, align 8
  %991 = getelementptr inbounds %struct.flare, %struct.flare* %990, i32 0, i32 1
  %992 = load i32*, i32** %991, align 8
  %993 = getelementptr inbounds i32, i32* %992, i64 0
  %994 = load i32, i32* %993, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds i32, i32* %989, i64 %995
  %997 = load i32, i32* %996, align 4
  store i32 %997, i32* %16, align 4
  %998 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %999 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %1000 = load i32, i32* %16, align 4
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds %struct.ebox, %struct.ebox* %999, i64 %1001
  %1003 = getelementptr inbounds %struct.ebox, %struct.ebox* %1002, i32 0, i32 9
  %1004 = load i32, i32* %1003, align 4
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %998, i64 %1005
  %1007 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %1006, i32 0, i32 9
  %1008 = load i32, i32* %1007, align 4
  store i32 %1008, i32* %15, align 4
  %1009 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %1010 = load i32, i32* %13, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1009, i64 %1011
  %1013 = load %struct.wcbox*, %struct.wcbox** %1012, align 8
  store %struct.wcbox* %1013, %struct.wcbox** %17, align 8
  %1014 = call noalias i8* @malloc(i64 noundef 32) #3
  %1015 = bitcast i8* %1014 to %struct.wcbox*
  %1016 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %1017 = load i32, i32* %13, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1016, i64 %1018
  store %struct.wcbox* %1015, %struct.wcbox** %1019, align 8
  %1020 = load %struct.wcbox*, %struct.wcbox** %17, align 8
  %1021 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %1022 = load i32, i32* %13, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1021, i64 %1023
  %1025 = load %struct.wcbox*, %struct.wcbox** %1024, align 8
  %1026 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1025, i32 0, i32 4
  store %struct.wcbox* %1020, %struct.wcbox** %1026, align 8
  %1027 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %1028 = load i32, i32* %13, align 4
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1027, i64 %1029
  %1031 = load %struct.wcbox*, %struct.wcbox** %1030, align 8
  %1032 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1031, i32 0, i32 0
  store i32 0, i32* %1032, align 8
  %1033 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %1034 = load i32, i32* %13, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1033, i64 %1035
  %1037 = load %struct.wcbox*, %struct.wcbox** %1036, align 8
  %1038 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1037, i32 0, i32 3
  store i32 0, i32* %1038, align 8
  %1039 = load i32, i32* %15, align 4
  %1040 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %1041 = load i32, i32* %13, align 4
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1040, i64 %1042
  %1044 = load %struct.wcbox*, %struct.wcbox** %1043, align 8
  %1045 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1044, i32 0, i32 1
  store i32 %1039, i32* %1045, align 4
  %1046 = load %struct.flare*, %struct.flare** %22, align 8
  %1047 = getelementptr inbounds %struct.flare, %struct.flare* %1046, i32 0, i32 1
  %1048 = load i32*, i32** %1047, align 8
  %1049 = getelementptr inbounds i32, i32* %1048, i64 0
  %1050 = load i32, i32* %1049, align 4
  %1051 = add nsw i32 1, %1050
  %1052 = sext i32 %1051 to i64
  %1053 = mul i64 %1052, 4
  %1054 = call noalias i8* @malloc(i64 noundef %1053) #3
  %1055 = bitcast i8* %1054 to i32*
  %1056 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %1057 = load i32, i32* %13, align 4
  %1058 = sext i32 %1057 to i64
  %1059 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1056, i64 %1058
  %1060 = load %struct.wcbox*, %struct.wcbox** %1059, align 8
  %1061 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1060, i32 0, i32 2
  store i32* %1055, i32** %1061, align 8
  store i32 0, i32* %10, align 4
  br label %1062

1062:                                             ; preds = %1088, %977
  %1063 = load i32, i32* %10, align 4
  %1064 = load %struct.flare*, %struct.flare** %22, align 8
  %1065 = getelementptr inbounds %struct.flare, %struct.flare* %1064, i32 0, i32 1
  %1066 = load i32*, i32** %1065, align 8
  %1067 = getelementptr inbounds i32, i32* %1066, i64 0
  %1068 = load i32, i32* %1067, align 4
  %1069 = icmp sle i32 %1063, %1068
  br i1 %1069, label %1070, label %1091

1070:                                             ; preds = %1062
  %1071 = load %struct.flare*, %struct.flare** %22, align 8
  %1072 = getelementptr inbounds %struct.flare, %struct.flare* %1071, i32 0, i32 1
  %1073 = load i32*, i32** %1072, align 8
  %1074 = load i32, i32* %10, align 4
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds i32, i32* %1073, i64 %1075
  %1077 = load i32, i32* %1076, align 4
  %1078 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %1079 = load i32, i32* %13, align 4
  %1080 = sext i32 %1079 to i64
  %1081 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1078, i64 %1080
  %1082 = load %struct.wcbox*, %struct.wcbox** %1081, align 8
  %1083 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1082, i32 0, i32 2
  %1084 = load i32*, i32** %1083, align 8
  %1085 = load i32, i32* %10, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds i32, i32* %1084, i64 %1086
  store i32 %1077, i32* %1087, align 4
  br label %1088

1088:                                             ; preds = %1070
  %1089 = load i32, i32* %10, align 4
  %1090 = add nsw i32 %1089, 1
  store i32 %1090, i32* %10, align 4
  br label %1062, !llvm.loop !24

1091:                                             ; preds = %1062
  br label %1092

1092:                                             ; preds = %1091
  %1093 = load %struct.flare*, %struct.flare** %22, align 8
  %1094 = getelementptr inbounds %struct.flare, %struct.flare* %1093, i32 0, i32 2
  %1095 = load %struct.flare*, %struct.flare** %1094, align 8
  store %struct.flare* %1095, %struct.flare** %22, align 8
  br label %974, !llvm.loop !25

1096:                                             ; preds = %974
  br label %1097

1097:                                             ; preds = %1096
  %1098 = load i32, i32* %9, align 4
  %1099 = add nsw i32 %1098, 1
  store i32 %1099, i32* %9, align 4
  br label %962, !llvm.loop !26

1100:                                             ; preds = %962
  %1101 = load %struct.tnode*, %struct.tnode** @vChanBeginRoot, align 8
  %1102 = icmp ne %struct.tnode* %1101, null
  br i1 %1102, label %1103, label %1110

1103:                                             ; preds = %1100
  br label %1104

1104:                                             ; preds = %1108, %1103
  call void @tpop(%struct.tnode** noundef @vChanBeginRoot, %struct.tnode** noundef %23, i32* noundef %3, i32* noundef %4)
  %1105 = load %struct.tnode*, %struct.tnode** %23, align 8
  %1106 = icmp eq %struct.tnode* %1105, null
  br i1 %1106, label %1107, label %1108

1107:                                             ; preds = %1104
  br label %1109

1108:                                             ; preds = %1104
  br label %1104

1109:                                             ; preds = %1107
  br label %1110

1110:                                             ; preds = %1109, %1100
  %1111 = load %struct.tnode*, %struct.tnode** @vChanEndRoot, align 8
  %1112 = icmp ne %struct.tnode* %1111, null
  br i1 %1112, label %1113, label %1120

1113:                                             ; preds = %1110
  br label %1114

1114:                                             ; preds = %1118, %1113
  call void @tpop(%struct.tnode** noundef @vChanEndRoot, %struct.tnode** noundef %23, i32* noundef %3, i32* noundef %4)
  %1115 = load %struct.tnode*, %struct.tnode** %23, align 8
  %1116 = icmp eq %struct.tnode* %1115, null
  br i1 %1116, label %1117, label %1118

1117:                                             ; preds = %1114
  br label %1119

1118:                                             ; preds = %1114
  br label %1114

1119:                                             ; preds = %1117
  br label %1120

1120:                                             ; preds = %1119, %1110
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local %struct.plist* @tplist(...) #2

declare dso_local void @tdelete(%struct.tnode** noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

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
