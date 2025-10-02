; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/ygraph.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/ygraph.c"
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
@yNodules = external dso_local global %struct.nodbox*, align 8
@Hlist = external dso_local global %struct.dlink1*, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@hChanBeginRoot = external dso_local global %struct.tnode*, align 8
@eArray = external dso_local global %struct.ebox*, align 8
@Hend = external dso_local global %struct.dlink1*, align 8
@hChanEndRoot = external dso_local global %struct.tnode*, align 8
@hFixedList = external dso_local global %struct.dlink1*, align 8
@numYnodes = external dso_local global i32, align 4
@yNodeArray = external dso_local global %struct.wcbox**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @ygraph() #0 {
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
  store %struct.nodbox* %29, %struct.nodbox** @yNodules, align 8
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %51, %0
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @numberCells, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %36, i64 %38
  %40 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %39, i32 0, i32 0
  store %struct.flare* null, %struct.flare** %40, align 8
  %41 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %41, i64 %43
  %45 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %44, i32 0, i32 1
  store %struct.flare* null, %struct.flare** %45, align 8
  %46 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %55 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
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
  %77 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
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
  %108 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %109 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %108, i64 0
  %110 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %109, i32 0, i32 1
  %111 = load %struct.flare*, %struct.flare** %110, align 8
  store %struct.flare* %111, %struct.flare** %20, align 8
  %112 = call noalias i8* @malloc(i64 noundef 24) #3
  %113 = bitcast i8* %112 to %struct.flare*
  %114 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %115 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %114, i64 0
  %116 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %115, i32 0, i32 1
  store %struct.flare* %113, %struct.flare** %116, align 8
  %117 = load %struct.flare*, %struct.flare** %20, align 8
  %118 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %119 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %118, i64 0
  %120 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %119, i32 0, i32 1
  %121 = load %struct.flare*, %struct.flare** %120, align 8
  %122 = getelementptr inbounds %struct.flare, %struct.flare* %121, i32 0, i32 2
  store %struct.flare* %117, %struct.flare** %122, align 8
  %123 = load i32, i32* %2, align 4
  %124 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %125 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %124, i64 0
  %126 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %125, i32 0, i32 1
  %127 = load %struct.flare*, %struct.flare** %126, align 8
  %128 = getelementptr inbounds %struct.flare, %struct.flare* %127, i32 0, i32 0
  store i32 %123, i32* %128, align 8
  %129 = call noalias i8* @malloc(i64 noundef 8) #3
  %130 = bitcast i8* %129 to i32*
  %131 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %132 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %131, i64 0
  %133 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %132, i32 0, i32 1
  %134 = load %struct.flare*, %struct.flare** %133, align 8
  %135 = getelementptr inbounds %struct.flare, %struct.flare* %134, i32 0, i32 1
  store i32* %130, i32** %135, align 8
  %136 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %137 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %136, i64 0
  %138 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %137, i32 0, i32 1
  %139 = load %struct.flare*, %struct.flare** %138, align 8
  %140 = getelementptr inbounds %struct.flare, %struct.flare* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 1, i32* %142, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %145 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %144, i64 0
  %146 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %145, i32 0, i32 1
  %147 = load %struct.flare*, %struct.flare** %146, align 8
  %148 = getelementptr inbounds %struct.flare, %struct.flare* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %143, i32* %150, align 4
  %151 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %159 = load %struct.dlink1*, %struct.dlink1** @Hend, align 8
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
  %181 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
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
  %212 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %213 = load i32, i32* @numberCells, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %212, i64 %215
  %217 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %216, i32 0, i32 0
  %218 = load %struct.flare*, %struct.flare** %217, align 8
  store %struct.flare* %218, %struct.flare** %20, align 8
  %219 = call noalias i8* @malloc(i64 noundef 24) #3
  %220 = bitcast i8* %219 to %struct.flare*
  %221 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %222 = load i32, i32* @numberCells, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %221, i64 %224
  %226 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %225, i32 0, i32 0
  store %struct.flare* %220, %struct.flare** %226, align 8
  %227 = load %struct.flare*, %struct.flare** %20, align 8
  %228 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %229 = load i32, i32* @numberCells, align 4
  %230 = add nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %228, i64 %231
  %233 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %232, i32 0, i32 0
  %234 = load %struct.flare*, %struct.flare** %233, align 8
  %235 = getelementptr inbounds %struct.flare, %struct.flare* %234, i32 0, i32 2
  store %struct.flare* %227, %struct.flare** %235, align 8
  %236 = load i32, i32* %2, align 4
  %237 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %247 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %248 = load i32, i32* @numberCells, align 4
  %249 = add nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %247, i64 %250
  %252 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %251, i32 0, i32 0
  %253 = load %struct.flare*, %struct.flare** %252, align 8
  %254 = getelementptr inbounds %struct.flare, %struct.flare* %253, i32 0, i32 1
  store i32* %246, i32** %254, align 8
  %255 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %266 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %276 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %287 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
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
  %305 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %314 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %417

328:                                              ; preds = %320
  %329 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %330 = load i32, i32* %2, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %329, i64 %331
  %333 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %3, align 4
  %335 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
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
  %355 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %356 = load i32, i32* %9, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %355, i64 %357
  %359 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %358, i32 0, i32 0
  %360 = load %struct.flare*, %struct.flare** %359, align 8
  store %struct.flare* %360, %struct.flare** %20, align 8
  %361 = call noalias i8* @malloc(i64 noundef 24) #3
  %362 = bitcast i8* %361 to %struct.flare*
  %363 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %364 = load i32, i32* %9, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %363, i64 %365
  %367 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %366, i32 0, i32 0
  store %struct.flare* %362, %struct.flare** %367, align 8
  %368 = load %struct.flare*, %struct.flare** %20, align 8
  %369 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %369, i64 %371
  %373 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %372, i32 0, i32 0
  %374 = load %struct.flare*, %struct.flare** %373, align 8
  %375 = getelementptr inbounds %struct.flare, %struct.flare* %374, i32 0, i32 2
  store %struct.flare* %368, %struct.flare** %375, align 8
  %376 = load i32, i32* %2, align 4
  %377 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %378 = load i32, i32* %9, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %377, i64 %379
  %381 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %380, i32 0, i32 0
  %382 = load %struct.flare*, %struct.flare** %381, align 8
  %383 = getelementptr inbounds %struct.flare, %struct.flare* %382, i32 0, i32 0
  store i32 %376, i32* %383, align 8
  %384 = call noalias i8* @malloc(i64 noundef 8) #3
  %385 = bitcast i8* %384 to i32*
  %386 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %387 = load i32, i32* %9, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %386, i64 %388
  %390 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %389, i32 0, i32 0
  %391 = load %struct.flare*, %struct.flare** %390, align 8
  %392 = getelementptr inbounds %struct.flare, %struct.flare* %391, i32 0, i32 1
  store i32* %385, i32** %392, align 8
  %393 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %403 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %424 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
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
  %444 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %445 = load i32, i32* %9, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %444, i64 %446
  %448 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %447, i32 0, i32 1
  %449 = load %struct.flare*, %struct.flare** %448, align 8
  store %struct.flare* %449, %struct.flare** %20, align 8
  %450 = call noalias i8* @malloc(i64 noundef 24) #3
  %451 = bitcast i8* %450 to %struct.flare*
  %452 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %453 = load i32, i32* %9, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %452, i64 %454
  %456 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %455, i32 0, i32 1
  store %struct.flare* %451, %struct.flare** %456, align 8
  %457 = load %struct.flare*, %struct.flare** %20, align 8
  %458 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %459 = load i32, i32* %9, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %458, i64 %460
  %462 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %461, i32 0, i32 1
  %463 = load %struct.flare*, %struct.flare** %462, align 8
  %464 = getelementptr inbounds %struct.flare, %struct.flare* %463, i32 0, i32 2
  store %struct.flare* %457, %struct.flare** %464, align 8
  %465 = load i32, i32* %2, align 4
  %466 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %467 = load i32, i32* %9, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %466, i64 %468
  %470 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %469, i32 0, i32 1
  %471 = load %struct.flare*, %struct.flare** %470, align 8
  %472 = getelementptr inbounds %struct.flare, %struct.flare* %471, i32 0, i32 0
  store i32 %465, i32* %472, align 8
  %473 = call noalias i8* @malloc(i64 noundef 8) #3
  %474 = bitcast i8* %473 to i32*
  %475 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %476 = load i32, i32* %9, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %475, i64 %477
  %479 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %478, i32 0, i32 1
  %480 = load %struct.flare*, %struct.flare** %479, align 8
  %481 = getelementptr inbounds %struct.flare, %struct.flare* %480, i32 0, i32 1
  store i32* %474, i32** %481, align 8
  %482 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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
  %492 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
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

529:                                              ; preds = %801, %528
  %530 = load i32, i32* %9, align 4
  %531 = load i32, i32* @numberCells, align 4
  %532 = add nsw i32 %531, 1
  %533 = icmp sle i32 %530, %532
  br i1 %533, label %534, label %804

534:                                              ; preds = %529
  %535 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %536 = load i32, i32* %9, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %535, i64 %537
  %539 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %538, i32 0, i32 0
  %540 = load %struct.flare*, %struct.flare** %539, align 8
  store %struct.flare* %540, %struct.flare** %20, align 8
  br label %541

541:                                              ; preds = %663, %534
  %542 = load %struct.flare*, %struct.flare** %20, align 8
  %543 = icmp ne %struct.flare* %542, null
  br i1 %543, label %544, label %667

544:                                              ; preds = %541
  %545 = load %struct.flare*, %struct.flare** %20, align 8
  %546 = getelementptr inbounds %struct.flare, %struct.flare* %545, i32 0, i32 1
  %547 = load i32*, i32** %546, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 0
  %549 = load i32, i32* %548, align 4
  store i32 %549, i32* %10, align 4
  br label %550

550:                                              ; preds = %659, %544
  %551 = load i32, i32* %10, align 4
  %552 = load %struct.flare*, %struct.flare** %20, align 8
  %553 = getelementptr inbounds %struct.flare, %struct.flare* %552, i32 0, i32 1
  %554 = load i32*, i32** %553, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 0
  %556 = load i32, i32* %555, align 4
  %557 = icmp sle i32 %551, %556
  br i1 %557, label %558, label %662

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
  %584 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
  %585 = load i32, i32* %3, align 4
  %586 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %584, i32 noundef %585)
  store %struct.plist* %586, %struct.plist** %19, align 8
  br label %587

587:                                              ; preds = %654, %558
  %588 = load %struct.plist*, %struct.plist** %19, align 8
  %589 = icmp ne %struct.plist* %588, null
  br i1 %589, label %590, label %658

590:                                              ; preds = %587
  %591 = load %struct.plist*, %struct.plist** %19, align 8
  %592 = getelementptr inbounds %struct.plist, %struct.plist* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  store i32 %593, i32* %4, align 4
  %594 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %595 = load i32, i32* %4, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.ebox, %struct.ebox* %594, i64 %596
  %598 = getelementptr inbounds %struct.ebox, %struct.ebox* %597, i32 0, i32 6
  %599 = load i32, i32* %598, align 8
  store i32 %599, i32* %7, align 4
  %600 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %601 = load i32, i32* %4, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.ebox, %struct.ebox* %600, i64 %602
  %604 = getelementptr inbounds %struct.ebox, %struct.ebox* %603, i32 0, i32 7
  %605 = load i32, i32* %604, align 4
  store i32 %605, i32* %8, align 4
  %606 = load i32, i32* %8, align 4
  %607 = load i32, i32* %6, align 4
  %608 = icmp sge i32 %606, %607
  br i1 %608, label %609, label %613

609:                                              ; preds = %590
  %610 = load i32, i32* %7, align 4
  %611 = load i32, i32* %5, align 4
  %612 = icmp sle i32 %610, %611
  br i1 %612, label %614, label %613

613:                                              ; preds = %609, %590
  br label %654

614:                                              ; preds = %609
  %615 = load i32, i32* %3, align 4
  %616 = load i32, i32* %4, align 4
  call void @tdelete(%struct.tnode** noundef @hChanEndRoot, i32 noundef %615, i32 noundef %616)
  %617 = load %struct.flare*, %struct.flare** %20, align 8
  %618 = getelementptr inbounds %struct.flare, %struct.flare* %617, i32 0, i32 1
  %619 = load i32*, i32** %618, align 8
  %620 = getelementptr inbounds i32, i32* %619, i64 0
  %621 = load i32, i32* %620, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %620, align 4
  %623 = srem i32 %622, 2
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %642

625:                                              ; preds = %614
  %626 = load %struct.flare*, %struct.flare** %20, align 8
  %627 = getelementptr inbounds %struct.flare, %struct.flare* %626, i32 0, i32 1
  %628 = load i32*, i32** %627, align 8
  %629 = bitcast i32* %628 to i8*
  %630 = load %struct.flare*, %struct.flare** %20, align 8
  %631 = getelementptr inbounds %struct.flare, %struct.flare* %630, i32 0, i32 1
  %632 = load i32*, i32** %631, align 8
  %633 = getelementptr inbounds i32, i32* %632, i64 0
  %634 = load i32, i32* %633, align 4
  %635 = add nsw i32 2, %634
  %636 = sext i32 %635 to i64
  %637 = mul i64 %636, 4
  %638 = call i8* @realloc(i8* noundef %629, i64 noundef %637) #3
  %639 = bitcast i8* %638 to i32*
  %640 = load %struct.flare*, %struct.flare** %20, align 8
  %641 = getelementptr inbounds %struct.flare, %struct.flare* %640, i32 0, i32 1
  store i32* %639, i32** %641, align 8
  br label %642

642:                                              ; preds = %625, %614
  %643 = load i32, i32* %4, align 4
  %644 = load %struct.flare*, %struct.flare** %20, align 8
  %645 = getelementptr inbounds %struct.flare, %struct.flare* %644, i32 0, i32 1
  %646 = load i32*, i32** %645, align 8
  %647 = load %struct.flare*, %struct.flare** %20, align 8
  %648 = getelementptr inbounds %struct.flare, %struct.flare* %647, i32 0, i32 1
  %649 = load i32*, i32** %648, align 8
  %650 = getelementptr inbounds i32, i32* %649, i64 0
  %651 = load i32, i32* %650, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i32, i32* %646, i64 %652
  store i32 %643, i32* %653, align 4
  br label %658

654:                                              ; preds = %613
  %655 = load %struct.plist*, %struct.plist** %19, align 8
  %656 = getelementptr inbounds %struct.plist, %struct.plist* %655, i32 0, i32 1
  %657 = load %struct.plist*, %struct.plist** %656, align 8
  store %struct.plist* %657, %struct.plist** %19, align 8
  br label %587, !llvm.loop !12

658:                                              ; preds = %642, %587
  br label %659

659:                                              ; preds = %658
  %660 = load i32, i32* %10, align 4
  %661 = add nsw i32 %660, 1
  store i32 %661, i32* %10, align 4
  br label %550, !llvm.loop !13

662:                                              ; preds = %550
  br label %663

663:                                              ; preds = %662
  %664 = load %struct.flare*, %struct.flare** %20, align 8
  %665 = getelementptr inbounds %struct.flare, %struct.flare* %664, i32 0, i32 2
  %666 = load %struct.flare*, %struct.flare** %665, align 8
  store %struct.flare* %666, %struct.flare** %20, align 8
  br label %541, !llvm.loop !14

667:                                              ; preds = %541
  %668 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %669 = load i32, i32* %9, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %668, i64 %670
  %672 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %671, i32 0, i32 1
  %673 = load %struct.flare*, %struct.flare** %672, align 8
  store %struct.flare* %673, %struct.flare** %20, align 8
  br label %674

674:                                              ; preds = %796, %667
  %675 = load %struct.flare*, %struct.flare** %20, align 8
  %676 = icmp ne %struct.flare* %675, null
  br i1 %676, label %677, label %800

677:                                              ; preds = %674
  %678 = load %struct.flare*, %struct.flare** %20, align 8
  %679 = getelementptr inbounds %struct.flare, %struct.flare* %678, i32 0, i32 1
  %680 = load i32*, i32** %679, align 8
  %681 = getelementptr inbounds i32, i32* %680, i64 0
  %682 = load i32, i32* %681, align 4
  store i32 %682, i32* %10, align 4
  br label %683

683:                                              ; preds = %792, %677
  %684 = load i32, i32* %10, align 4
  %685 = load %struct.flare*, %struct.flare** %20, align 8
  %686 = getelementptr inbounds %struct.flare, %struct.flare* %685, i32 0, i32 1
  %687 = load i32*, i32** %686, align 8
  %688 = getelementptr inbounds i32, i32* %687, i64 0
  %689 = load i32, i32* %688, align 4
  %690 = icmp sle i32 %684, %689
  br i1 %690, label %691, label %795

691:                                              ; preds = %683
  %692 = load %struct.flare*, %struct.flare** %20, align 8
  %693 = getelementptr inbounds %struct.flare, %struct.flare* %692, i32 0, i32 1
  %694 = load i32*, i32** %693, align 8
  %695 = load i32, i32* %10, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds i32, i32* %694, i64 %696
  %698 = load i32, i32* %697, align 4
  store i32 %698, i32* %4, align 4
  %699 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %700 = load i32, i32* %4, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct.ebox, %struct.ebox* %699, i64 %701
  %703 = getelementptr inbounds %struct.ebox, %struct.ebox* %702, i32 0, i32 4
  %704 = load i32, i32* %703, align 8
  store i32 %704, i32* %3, align 4
  %705 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %706 = load i32, i32* %4, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.ebox, %struct.ebox* %705, i64 %707
  %709 = getelementptr inbounds %struct.ebox, %struct.ebox* %708, i32 0, i32 6
  %710 = load i32, i32* %709, align 8
  store i32 %710, i32* %5, align 4
  %711 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %712 = load i32, i32* %4, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.ebox, %struct.ebox* %711, i64 %713
  %715 = getelementptr inbounds %struct.ebox, %struct.ebox* %714, i32 0, i32 7
  %716 = load i32, i32* %715, align 4
  store i32 %716, i32* %6, align 4
  %717 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
  %718 = load i32, i32* %3, align 4
  %719 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %717, i32 noundef %718)
  store %struct.plist* %719, %struct.plist** %19, align 8
  br label %720

720:                                              ; preds = %787, %691
  %721 = load %struct.plist*, %struct.plist** %19, align 8
  %722 = icmp ne %struct.plist* %721, null
  br i1 %722, label %723, label %791

723:                                              ; preds = %720
  %724 = load %struct.plist*, %struct.plist** %19, align 8
  %725 = getelementptr inbounds %struct.plist, %struct.plist* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 8
  store i32 %726, i32* %4, align 4
  %727 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %728 = load i32, i32* %4, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds %struct.ebox, %struct.ebox* %727, i64 %729
  %731 = getelementptr inbounds %struct.ebox, %struct.ebox* %730, i32 0, i32 6
  %732 = load i32, i32* %731, align 8
  store i32 %732, i32* %7, align 4
  %733 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %734 = load i32, i32* %4, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds %struct.ebox, %struct.ebox* %733, i64 %735
  %737 = getelementptr inbounds %struct.ebox, %struct.ebox* %736, i32 0, i32 7
  %738 = load i32, i32* %737, align 4
  store i32 %738, i32* %8, align 4
  %739 = load i32, i32* %8, align 4
  %740 = load i32, i32* %6, align 4
  %741 = icmp sge i32 %739, %740
  br i1 %741, label %742, label %746

742:                                              ; preds = %723
  %743 = load i32, i32* %7, align 4
  %744 = load i32, i32* %5, align 4
  %745 = icmp sle i32 %743, %744
  br i1 %745, label %747, label %746

746:                                              ; preds = %742, %723
  br label %787

747:                                              ; preds = %742
  %748 = load i32, i32* %3, align 4
  %749 = load i32, i32* %4, align 4
  call void @tdelete(%struct.tnode** noundef @hChanBeginRoot, i32 noundef %748, i32 noundef %749)
  %750 = load %struct.flare*, %struct.flare** %20, align 8
  %751 = getelementptr inbounds %struct.flare, %struct.flare* %750, i32 0, i32 1
  %752 = load i32*, i32** %751, align 8
  %753 = getelementptr inbounds i32, i32* %752, i64 0
  %754 = load i32, i32* %753, align 4
  %755 = add nsw i32 %754, 1
  store i32 %755, i32* %753, align 4
  %756 = srem i32 %755, 2
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %775

758:                                              ; preds = %747
  %759 = load %struct.flare*, %struct.flare** %20, align 8
  %760 = getelementptr inbounds %struct.flare, %struct.flare* %759, i32 0, i32 1
  %761 = load i32*, i32** %760, align 8
  %762 = bitcast i32* %761 to i8*
  %763 = load %struct.flare*, %struct.flare** %20, align 8
  %764 = getelementptr inbounds %struct.flare, %struct.flare* %763, i32 0, i32 1
  %765 = load i32*, i32** %764, align 8
  %766 = getelementptr inbounds i32, i32* %765, i64 0
  %767 = load i32, i32* %766, align 4
  %768 = add nsw i32 2, %767
  %769 = sext i32 %768 to i64
  %770 = mul i64 %769, 4
  %771 = call i8* @realloc(i8* noundef %762, i64 noundef %770) #3
  %772 = bitcast i8* %771 to i32*
  %773 = load %struct.flare*, %struct.flare** %20, align 8
  %774 = getelementptr inbounds %struct.flare, %struct.flare* %773, i32 0, i32 1
  store i32* %772, i32** %774, align 8
  br label %775

775:                                              ; preds = %758, %747
  %776 = load i32, i32* %4, align 4
  %777 = load %struct.flare*, %struct.flare** %20, align 8
  %778 = getelementptr inbounds %struct.flare, %struct.flare* %777, i32 0, i32 1
  %779 = load i32*, i32** %778, align 8
  %780 = load %struct.flare*, %struct.flare** %20, align 8
  %781 = getelementptr inbounds %struct.flare, %struct.flare* %780, i32 0, i32 1
  %782 = load i32*, i32** %781, align 8
  %783 = getelementptr inbounds i32, i32* %782, i64 0
  %784 = load i32, i32* %783, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds i32, i32* %779, i64 %785
  store i32 %776, i32* %786, align 4
  br label %791

787:                                              ; preds = %746
  %788 = load %struct.plist*, %struct.plist** %19, align 8
  %789 = getelementptr inbounds %struct.plist, %struct.plist* %788, i32 0, i32 1
  %790 = load %struct.plist*, %struct.plist** %789, align 8
  store %struct.plist* %790, %struct.plist** %19, align 8
  br label %720, !llvm.loop !15

791:                                              ; preds = %775, %720
  br label %792

792:                                              ; preds = %791
  %793 = load i32, i32* %10, align 4
  %794 = add nsw i32 %793, 1
  store i32 %794, i32* %10, align 4
  br label %683, !llvm.loop !16

795:                                              ; preds = %683
  br label %796

796:                                              ; preds = %795
  %797 = load %struct.flare*, %struct.flare** %20, align 8
  %798 = getelementptr inbounds %struct.flare, %struct.flare* %797, i32 0, i32 2
  %799 = load %struct.flare*, %struct.flare** %798, align 8
  store %struct.flare* %799, %struct.flare** %20, align 8
  br label %674, !llvm.loop !17

800:                                              ; preds = %674
  br label %801

801:                                              ; preds = %800
  %802 = load i32, i32* %9, align 4
  %803 = add nsw i32 %802, 1
  store i32 %803, i32* %9, align 4
  br label %529, !llvm.loop !18

804:                                              ; preds = %529
  store i32 0, i32* @numYnodes, align 4
  %805 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  store %struct.dlink1* %805, %struct.dlink1** %18, align 8
  br label %806

806:                                              ; preds = %819, %804
  %807 = load %struct.dlink1*, %struct.dlink1** %18, align 8
  %808 = icmp ne %struct.dlink1* %807, null
  br i1 %808, label %809, label %823

809:                                              ; preds = %806
  %810 = load i32, i32* @numYnodes, align 4
  %811 = add nsw i32 %810, 1
  store i32 %811, i32* @numYnodes, align 4
  %812 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %813 = load %struct.dlink1*, %struct.dlink1** %18, align 8
  %814 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %813, i32 0, i32 0
  %815 = load i32, i32* %814, align 8
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %812, i64 %816
  %818 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %817, i32 0, i32 9
  store i32 %811, i32* %818, align 4
  br label %819

819:                                              ; preds = %809
  %820 = load %struct.dlink1*, %struct.dlink1** %18, align 8
  %821 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %820, i32 0, i32 2
  %822 = load %struct.dlink1*, %struct.dlink1** %821, align 8
  store %struct.dlink1* %822, %struct.dlink1** %18, align 8
  br label %806, !llvm.loop !19

823:                                              ; preds = %806
  %824 = load i32, i32* @numYnodes, align 4
  %825 = add nsw i32 1, %824
  %826 = sext i32 %825 to i64
  %827 = mul i64 %826, 8
  %828 = call noalias i8* @malloc(i64 noundef %827) #3
  %829 = bitcast i8* %828 to %struct.wcbox**
  store %struct.wcbox** %829, %struct.wcbox*** @yNodeArray, align 8
  store i32 1, i32* %1, align 4
  br label %830

830:                                              ; preds = %839, %823
  %831 = load i32, i32* %1, align 4
  %832 = load i32, i32* @numYnodes, align 4
  %833 = icmp sle i32 %831, %832
  br i1 %833, label %834, label %842

834:                                              ; preds = %830
  %835 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %836 = load i32, i32* %1, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %835, i64 %837
  store %struct.wcbox* null, %struct.wcbox** %838, align 8
  br label %839

839:                                              ; preds = %834
  %840 = load i32, i32* %1, align 4
  %841 = add nsw i32 %840, 1
  store i32 %841, i32* %1, align 4
  br label %830, !llvm.loop !20

842:                                              ; preds = %830
  store i32 1, i32* %9, align 4
  br label %843

843:                                              ; preds = %952, %842
  %844 = load i32, i32* %9, align 4
  %845 = load i32, i32* @numberCells, align 4
  %846 = icmp sle i32 %844, %845
  br i1 %846, label %847, label %955

847:                                              ; preds = %843
  %848 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %849 = load i32, i32* %9, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %848, i64 %850
  %852 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %851, i32 0, i32 0
  %853 = load %struct.flare*, %struct.flare** %852, align 8
  store %struct.flare* %853, %struct.flare** %21, align 8
  br label %854

854:                                              ; preds = %947, %847
  %855 = load %struct.flare*, %struct.flare** %21, align 8
  %856 = icmp ne %struct.flare* %855, null
  br i1 %856, label %857, label %951

857:                                              ; preds = %854
  %858 = load %struct.flare*, %struct.flare** %21, align 8
  %859 = getelementptr inbounds %struct.flare, %struct.flare* %858, i32 0, i32 0
  %860 = load i32, i32* %859, align 8
  store i32 %860, i32* %12, align 4
  %861 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %862 = load i32, i32* %12, align 4
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %861, i64 %863
  %865 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %864, i32 0, i32 9
  %866 = load i32, i32* %865, align 4
  store i32 %866, i32* %13, align 4
  %867 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %868 = load i32, i32* %9, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %867, i64 %869
  %871 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %870, i32 0, i32 1
  %872 = load %struct.flare*, %struct.flare** %871, align 8
  store %struct.flare* %872, %struct.flare** %22, align 8
  br label %873

873:                                              ; preds = %942, %857
  %874 = load %struct.flare*, %struct.flare** %22, align 8
  %875 = icmp ne %struct.flare* %874, null
  br i1 %875, label %876, label %946

876:                                              ; preds = %873
  %877 = load %struct.flare*, %struct.flare** %22, align 8
  %878 = getelementptr inbounds %struct.flare, %struct.flare* %877, i32 0, i32 0
  %879 = load i32, i32* %878, align 8
  store i32 %879, i32* %14, align 4
  %880 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %881 = load i32, i32* %14, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %880, i64 %882
  %884 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %883, i32 0, i32 9
  %885 = load i32, i32* %884, align 4
  store i32 %885, i32* %15, align 4
  %886 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %887 = load i32, i32* %13, align 4
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %886, i64 %888
  %890 = load %struct.wcbox*, %struct.wcbox** %889, align 8
  store %struct.wcbox* %890, %struct.wcbox** %17, align 8
  %891 = call noalias i8* @malloc(i64 noundef 32) #3
  %892 = bitcast i8* %891 to %struct.wcbox*
  %893 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %894 = load i32, i32* %13, align 4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %893, i64 %895
  store %struct.wcbox* %892, %struct.wcbox** %896, align 8
  %897 = load %struct.wcbox*, %struct.wcbox** %17, align 8
  %898 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %899 = load i32, i32* %13, align 4
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %898, i64 %900
  %902 = load %struct.wcbox*, %struct.wcbox** %901, align 8
  %903 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %902, i32 0, i32 4
  store %struct.wcbox* %897, %struct.wcbox** %903, align 8
  %904 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %905 = load i32, i32* %13, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %904, i64 %906
  %908 = load %struct.wcbox*, %struct.wcbox** %907, align 8
  %909 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %908, i32 0, i32 0
  store i32 1, i32* %909, align 8
  %910 = load i32, i32* %15, align 4
  %911 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %912 = load i32, i32* %13, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %911, i64 %913
  %915 = load %struct.wcbox*, %struct.wcbox** %914, align 8
  %916 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %915, i32 0, i32 1
  store i32 %910, i32* %916, align 4
  %917 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %918 = load i32, i32* %13, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %917, i64 %919
  %921 = load %struct.wcbox*, %struct.wcbox** %920, align 8
  %922 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %921, i32 0, i32 2
  store i32* null, i32** %922, align 8
  %923 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %924 = load i32, i32* %14, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %923, i64 %925
  %927 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %926, i32 0, i32 3
  %928 = load i32, i32* %927, align 4
  %929 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %930 = load i32, i32* %12, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %929, i64 %931
  %933 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %932, i32 0, i32 3
  %934 = load i32, i32* %933, align 4
  %935 = sub nsw i32 %928, %934
  %936 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %937 = load i32, i32* %13, align 4
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %936, i64 %938
  %940 = load %struct.wcbox*, %struct.wcbox** %939, align 8
  %941 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %940, i32 0, i32 3
  store i32 %935, i32* %941, align 8
  br label %942

942:                                              ; preds = %876
  %943 = load %struct.flare*, %struct.flare** %22, align 8
  %944 = getelementptr inbounds %struct.flare, %struct.flare* %943, i32 0, i32 2
  %945 = load %struct.flare*, %struct.flare** %944, align 8
  store %struct.flare* %945, %struct.flare** %22, align 8
  br label %873, !llvm.loop !21

946:                                              ; preds = %873
  br label %947

947:                                              ; preds = %946
  %948 = load %struct.flare*, %struct.flare** %21, align 8
  %949 = getelementptr inbounds %struct.flare, %struct.flare* %948, i32 0, i32 2
  %950 = load %struct.flare*, %struct.flare** %949, align 8
  store %struct.flare* %950, %struct.flare** %21, align 8
  br label %854, !llvm.loop !22

951:                                              ; preds = %854
  br label %952

952:                                              ; preds = %951
  %953 = load i32, i32* %9, align 4
  %954 = add nsw i32 %953, 1
  store i32 %954, i32* %9, align 4
  br label %843, !llvm.loop !23

955:                                              ; preds = %843
  store i32 0, i32* %9, align 4
  br label %956

956:                                              ; preds = %1091, %955
  %957 = load i32, i32* %9, align 4
  %958 = load i32, i32* @numberCells, align 4
  %959 = add nsw i32 %958, 1
  %960 = icmp sle i32 %957, %959
  br i1 %960, label %961, label %1094

961:                                              ; preds = %956
  %962 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %963 = load i32, i32* %9, align 4
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %962, i64 %964
  %966 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %965, i32 0, i32 1
  %967 = load %struct.flare*, %struct.flare** %966, align 8
  store %struct.flare* %967, %struct.flare** %22, align 8
  br label %968

968:                                              ; preds = %1086, %961
  %969 = load %struct.flare*, %struct.flare** %22, align 8
  %970 = icmp ne %struct.flare* %969, null
  br i1 %970, label %971, label %1090

971:                                              ; preds = %968
  %972 = load %struct.flare*, %struct.flare** %22, align 8
  %973 = getelementptr inbounds %struct.flare, %struct.flare* %972, i32 0, i32 0
  %974 = load i32, i32* %973, align 8
  store i32 %974, i32* %12, align 4
  %975 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %976 = load i32, i32* %12, align 4
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %975, i64 %977
  %979 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %978, i32 0, i32 9
  %980 = load i32, i32* %979, align 4
  store i32 %980, i32* %13, align 4
  %981 = load %struct.flare*, %struct.flare** %22, align 8
  %982 = getelementptr inbounds %struct.flare, %struct.flare* %981, i32 0, i32 1
  %983 = load i32*, i32** %982, align 8
  %984 = load %struct.flare*, %struct.flare** %22, align 8
  %985 = getelementptr inbounds %struct.flare, %struct.flare* %984, i32 0, i32 1
  %986 = load i32*, i32** %985, align 8
  %987 = getelementptr inbounds i32, i32* %986, i64 0
  %988 = load i32, i32* %987, align 4
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds i32, i32* %983, i64 %989
  %991 = load i32, i32* %990, align 4
  store i32 %991, i32* %16, align 4
  %992 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %993 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %994 = load i32, i32* %16, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds %struct.ebox, %struct.ebox* %993, i64 %995
  %997 = getelementptr inbounds %struct.ebox, %struct.ebox* %996, i32 0, i32 9
  %998 = load i32, i32* %997, align 4
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %992, i64 %999
  %1001 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %1000, i32 0, i32 9
  %1002 = load i32, i32* %1001, align 4
  store i32 %1002, i32* %15, align 4
  %1003 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %1004 = load i32, i32* %13, align 4
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1003, i64 %1005
  %1007 = load %struct.wcbox*, %struct.wcbox** %1006, align 8
  store %struct.wcbox* %1007, %struct.wcbox** %17, align 8
  %1008 = call noalias i8* @malloc(i64 noundef 32) #3
  %1009 = bitcast i8* %1008 to %struct.wcbox*
  %1010 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %1011 = load i32, i32* %13, align 4
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1010, i64 %1012
  store %struct.wcbox* %1009, %struct.wcbox** %1013, align 8
  %1014 = load %struct.wcbox*, %struct.wcbox** %17, align 8
  %1015 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %1016 = load i32, i32* %13, align 4
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1015, i64 %1017
  %1019 = load %struct.wcbox*, %struct.wcbox** %1018, align 8
  %1020 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1019, i32 0, i32 4
  store %struct.wcbox* %1014, %struct.wcbox** %1020, align 8
  %1021 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %1022 = load i32, i32* %13, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1021, i64 %1023
  %1025 = load %struct.wcbox*, %struct.wcbox** %1024, align 8
  %1026 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1025, i32 0, i32 0
  store i32 0, i32* %1026, align 8
  %1027 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %1028 = load i32, i32* %13, align 4
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1027, i64 %1029
  %1031 = load %struct.wcbox*, %struct.wcbox** %1030, align 8
  %1032 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1031, i32 0, i32 3
  store i32 0, i32* %1032, align 8
  %1033 = load i32, i32* %15, align 4
  %1034 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %1035 = load i32, i32* %13, align 4
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1034, i64 %1036
  %1038 = load %struct.wcbox*, %struct.wcbox** %1037, align 8
  %1039 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1038, i32 0, i32 1
  store i32 %1033, i32* %1039, align 4
  %1040 = load %struct.flare*, %struct.flare** %22, align 8
  %1041 = getelementptr inbounds %struct.flare, %struct.flare* %1040, i32 0, i32 1
  %1042 = load i32*, i32** %1041, align 8
  %1043 = getelementptr inbounds i32, i32* %1042, i64 0
  %1044 = load i32, i32* %1043, align 4
  %1045 = add nsw i32 1, %1044
  %1046 = sext i32 %1045 to i64
  %1047 = mul i64 %1046, 4
  %1048 = call noalias i8* @malloc(i64 noundef %1047) #3
  %1049 = bitcast i8* %1048 to i32*
  %1050 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %1051 = load i32, i32* %13, align 4
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1050, i64 %1052
  %1054 = load %struct.wcbox*, %struct.wcbox** %1053, align 8
  %1055 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1054, i32 0, i32 2
  store i32* %1049, i32** %1055, align 8
  store i32 0, i32* %10, align 4
  br label %1056

1056:                                             ; preds = %1082, %971
  %1057 = load i32, i32* %10, align 4
  %1058 = load %struct.flare*, %struct.flare** %22, align 8
  %1059 = getelementptr inbounds %struct.flare, %struct.flare* %1058, i32 0, i32 1
  %1060 = load i32*, i32** %1059, align 8
  %1061 = getelementptr inbounds i32, i32* %1060, i64 0
  %1062 = load i32, i32* %1061, align 4
  %1063 = icmp sle i32 %1057, %1062
  br i1 %1063, label %1064, label %1085

1064:                                             ; preds = %1056
  %1065 = load %struct.flare*, %struct.flare** %22, align 8
  %1066 = getelementptr inbounds %struct.flare, %struct.flare* %1065, i32 0, i32 1
  %1067 = load i32*, i32** %1066, align 8
  %1068 = load i32, i32* %10, align 4
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds i32, i32* %1067, i64 %1069
  %1071 = load i32, i32* %1070, align 4
  %1072 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %1073 = load i32, i32* %13, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %1072, i64 %1074
  %1076 = load %struct.wcbox*, %struct.wcbox** %1075, align 8
  %1077 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %1076, i32 0, i32 2
  %1078 = load i32*, i32** %1077, align 8
  %1079 = load i32, i32* %10, align 4
  %1080 = sext i32 %1079 to i64
  %1081 = getelementptr inbounds i32, i32* %1078, i64 %1080
  store i32 %1071, i32* %1081, align 4
  br label %1082

1082:                                             ; preds = %1064
  %1083 = load i32, i32* %10, align 4
  %1084 = add nsw i32 %1083, 1
  store i32 %1084, i32* %10, align 4
  br label %1056, !llvm.loop !24

1085:                                             ; preds = %1056
  br label %1086

1086:                                             ; preds = %1085
  %1087 = load %struct.flare*, %struct.flare** %22, align 8
  %1088 = getelementptr inbounds %struct.flare, %struct.flare* %1087, i32 0, i32 2
  %1089 = load %struct.flare*, %struct.flare** %1088, align 8
  store %struct.flare* %1089, %struct.flare** %22, align 8
  br label %968, !llvm.loop !25

1090:                                             ; preds = %968
  br label %1091

1091:                                             ; preds = %1090
  %1092 = load i32, i32* %9, align 4
  %1093 = add nsw i32 %1092, 1
  store i32 %1093, i32* %9, align 4
  br label %956, !llvm.loop !26

1094:                                             ; preds = %956
  %1095 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
  %1096 = icmp ne %struct.tnode* %1095, null
  br i1 %1096, label %1097, label %1104

1097:                                             ; preds = %1094
  br label %1098

1098:                                             ; preds = %1102, %1097
  call void @tpop(%struct.tnode** noundef @hChanBeginRoot, %struct.tnode** noundef %23, i32* noundef %3, i32* noundef %4)
  %1099 = load %struct.tnode*, %struct.tnode** %23, align 8
  %1100 = icmp eq %struct.tnode* %1099, null
  br i1 %1100, label %1101, label %1102

1101:                                             ; preds = %1098
  br label %1103

1102:                                             ; preds = %1098
  br label %1098

1103:                                             ; preds = %1101
  br label %1104

1104:                                             ; preds = %1103, %1094
  %1105 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
  %1106 = icmp ne %struct.tnode* %1105, null
  br i1 %1106, label %1107, label %1114

1107:                                             ; preds = %1104
  br label %1108

1108:                                             ; preds = %1112, %1107
  call void @tpop(%struct.tnode** noundef @hChanEndRoot, %struct.tnode** noundef %23, i32* noundef %3, i32* noundef %4)
  %1109 = load %struct.tnode*, %struct.tnode** %23, align 8
  %1110 = icmp eq %struct.tnode* %1109, null
  br i1 %1110, label %1111, label %1112

1111:                                             ; preds = %1108
  br label %1113

1112:                                             ; preds = %1108
  br label %1108

1113:                                             ; preds = %1111
  br label %1114

1114:                                             ; preds = %1113, %1104
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
