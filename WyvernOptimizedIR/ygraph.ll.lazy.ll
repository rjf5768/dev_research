; ModuleID = './ygraph.ll'
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
  %3 = alloca %struct.tnode*, align 8
  %4 = load i32, i32* @numberCells, align 4
  %5 = add nsw i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 24
  %8 = call noalias i8* @malloc(i64 noundef %7) #3
  store i8* %8, i8** bitcast (%struct.nodbox** @yNodules to i8**), align 8
  br label %9

9:                                                ; preds = %22, %0
  %.0 = phi i32 [ 0, %0 ], [ %23, %22 ]
  %10 = load i32, i32* @numberCells, align 4
  %11 = add nsw i32 %10, 1
  %.not = icmp sgt i32 %.0, %11
  br i1 %.not, label %24, label %12

12:                                               ; preds = %9
  %13 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %13, i64 %14, i32 0
  store %struct.flare* null, %struct.flare** %15, align 8
  %16 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %16, i64 %17, i32 1
  store %struct.flare* null, %struct.flare** %18, align 8
  %19 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %19, i64 %20, i32 2
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %12
  %23 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !4

24:                                               ; preds = %9
  %25 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
  %26 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %25, i64 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %28, i64 %29, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %1, align 4
  %32 = sext i32 %27 to i64
  %33 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %28, i64 %32, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %36 = sext i32 %27 to i64
  %37 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %35, i64 %36, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
  %40 = load i32, i32* %1, align 4
  %41 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %39, i32 noundef %40) #3
  br label %42

42:                                               ; preds = %89, %24
  %.014 = phi %struct.plist* [ %41, %24 ], [ %91, %89 ]
  %.not18 = icmp eq %struct.plist* %.014, null
  br i1 %.not18, label %92, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.plist, %struct.plist* %.014, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %2, align 4
  %46 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.ebox, %struct.ebox* %46, i64 %47, i32 7
  %49 = load i32, i32* %48, align 4
  %.not50 = icmp slt i32 %49, %38
  br i1 %.not50, label %55, label %50

50:                                               ; preds = %43
  %51 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %52 = sext i32 %45 to i64
  %53 = getelementptr inbounds %struct.ebox, %struct.ebox* %51, i64 %52, i32 6
  %54 = load i32, i32* %53, align 8
  %.not51 = icmp sgt i32 %54, %34
  br i1 %.not51, label %55, label %56

55:                                               ; preds = %50, %43
  br label %89

56:                                               ; preds = %50
  %57 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %58 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %57, i64 0, i32 1
  %59 = load %struct.flare*, %struct.flare** %58, align 8
  %60 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  %61 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %57, i64 0, i32 1
  %62 = bitcast %struct.flare** %61 to i8**
  store i8* %60, i8** %62, align 8
  %63 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %64 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %63, i64 0, i32 1
  %65 = load %struct.flare*, %struct.flare** %64, align 8
  %66 = getelementptr inbounds %struct.flare, %struct.flare* %65, i64 0, i32 2
  store %struct.flare* %59, %struct.flare** %66, align 8
  %67 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %63, i64 0, i32 1
  %68 = load %struct.flare*, %struct.flare** %67, align 8
  %69 = getelementptr inbounds %struct.flare, %struct.flare* %68, i64 0, i32 0
  store i32 %27, i32* %69, align 8
  %70 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #3
  %71 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %72 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %71, i64 0, i32 1
  %73 = load %struct.flare*, %struct.flare** %72, align 8
  %74 = getelementptr inbounds %struct.flare, %struct.flare* %73, i64 0, i32 1
  %75 = bitcast i32** %74 to i8**
  store i8* %70, i8** %75, align 8
  %76 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %71, i64 0, i32 1
  %77 = load %struct.flare*, %struct.flare** %76, align 8
  %78 = getelementptr inbounds %struct.flare, %struct.flare* %77, i64 0, i32 1
  %79 = load i32*, i32** %78, align 8
  store i32 1, i32* %79, align 4
  %80 = load i32, i32* %2, align 4
  %81 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %82 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %81, i64 0, i32 1
  %83 = load %struct.flare*, %struct.flare** %82, align 8
  %84 = getelementptr inbounds %struct.flare, %struct.flare* %83, i64 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %80, i32* %86, align 4
  %87 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %88 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %87, i64 0, i32 2
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %56, %55
  %90 = getelementptr inbounds %struct.plist, %struct.plist* %.014, i64 0, i32 1
  %91 = load %struct.plist*, %struct.plist** %90, align 8
  br label %42, !llvm.loop !6

92:                                               ; preds = %42
  %93 = load %struct.dlink1*, %struct.dlink1** @Hend, align 8
  %94 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %93, i64 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %96, i64 %97, i32 3
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %1, align 4
  %100 = sext i32 %95 to i64
  %101 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %96, i64 %100, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %104 = sext i32 %95 to i64
  %105 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %103, i64 %104, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
  %108 = load i32, i32* %1, align 4
  %109 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %107, i32 noundef %108) #3
  br label %110

110:                                              ; preds = %184, %92
  %.115 = phi %struct.plist* [ %109, %92 ], [ %186, %184 ]
  %.not19 = icmp eq %struct.plist* %.115, null
  br i1 %.not19, label %187, label %111

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.plist, %struct.plist* %.115, i64 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %2, align 4
  %114 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds %struct.ebox, %struct.ebox* %114, i64 %115, i32 7
  %117 = load i32, i32* %116, align 4
  %.not48 = icmp slt i32 %117, %106
  br i1 %.not48, label %123, label %118

118:                                              ; preds = %111
  %119 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %120 = sext i32 %113 to i64
  %121 = getelementptr inbounds %struct.ebox, %struct.ebox* %119, i64 %120, i32 6
  %122 = load i32, i32* %121, align 8
  %.not49 = icmp sgt i32 %122, %102
  br i1 %.not49, label %123, label %124

123:                                              ; preds = %118, %111
  br label %184

124:                                              ; preds = %118
  %125 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %126 = load i32, i32* @numberCells, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %125, i64 %128, i32 0
  %130 = load %struct.flare*, %struct.flare** %129, align 8
  %131 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  %132 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %133 = load i32, i32* @numberCells, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %132, i64 %135, i32 0
  %137 = bitcast %struct.flare** %136 to i8**
  store i8* %131, i8** %137, align 8
  %138 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %139 = load i32, i32* @numberCells, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %138, i64 %141, i32 0
  %143 = load %struct.flare*, %struct.flare** %142, align 8
  %144 = getelementptr inbounds %struct.flare, %struct.flare* %143, i64 0, i32 2
  store %struct.flare* %130, %struct.flare** %144, align 8
  %145 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %146 = load i32, i32* @numberCells, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %145, i64 %148, i32 0
  %150 = load %struct.flare*, %struct.flare** %149, align 8
  %151 = getelementptr inbounds %struct.flare, %struct.flare* %150, i64 0, i32 0
  store i32 %95, i32* %151, align 8
  %152 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #3
  %153 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %154 = load i32, i32* @numberCells, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %153, i64 %156, i32 0
  %158 = load %struct.flare*, %struct.flare** %157, align 8
  %159 = getelementptr inbounds %struct.flare, %struct.flare* %158, i64 0, i32 1
  %160 = bitcast i32** %159 to i8**
  store i8* %152, i8** %160, align 8
  %161 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %162 = load i32, i32* @numberCells, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %161, i64 %164, i32 0
  %166 = load %struct.flare*, %struct.flare** %165, align 8
  %167 = getelementptr inbounds %struct.flare, %struct.flare* %166, i64 0, i32 1
  %168 = load i32*, i32** %167, align 8
  store i32 1, i32* %168, align 4
  %169 = load i32, i32* %2, align 4
  %170 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %171 = load i32, i32* @numberCells, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %170, i64 %173, i32 0
  %175 = load %struct.flare*, %struct.flare** %174, align 8
  %176 = getelementptr inbounds %struct.flare, %struct.flare* %175, i64 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  store i32 %169, i32* %178, align 4
  %179 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %180 = load i32, i32* @numberCells, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %179, i64 %182, i32 2
  store i32 1, i32* %183, align 8
  br label %184

184:                                              ; preds = %124, %123
  %185 = getelementptr inbounds %struct.plist, %struct.plist* %.115, i64 0, i32 1
  %186 = load %struct.plist*, %struct.plist** %185, align 8
  br label %110, !llvm.loop !7

187:                                              ; preds = %110
  %188 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  br label %189

189:                                              ; preds = %343, %187
  %.pn = phi %struct.dlink1* [ %188, %187 ], [ %.012, %343 ]
  %.012.in = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.pn, i64 0, i32 2
  %.012 = load %struct.dlink1*, %struct.dlink1** %.012.in, align 8
  %190 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.012, i64 0, i32 2
  %191 = load %struct.dlink1*, %struct.dlink1** %190, align 8
  %.not20 = icmp eq %struct.dlink1* %191, null
  br i1 %.not20, label %344, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.012, i64 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %195, i64 %196, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %199, i64 %200, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %205

204:                                              ; preds = %192
  br label %343

205:                                              ; preds = %192
  %206 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %207 = sext i32 %198 to i64
  %208 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %206, i64 %207, i32 2
  store i32 1, i32* %208, align 8
  br label %209

209:                                              ; preds = %341, %205
  %.01 = phi i32 [ %194, %205 ], [ %340, %341 ]
  %210 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %211 = sext i32 %.01 to i64
  %212 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %210, i64 %211, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %274

215:                                              ; preds = %209
  %216 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %217 = sext i32 %.01 to i64
  %218 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %216, i64 %217, i32 3
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %1, align 4
  %220 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
  %221 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %220, i32 noundef %219) #3
  br label %222

222:                                              ; preds = %270, %215
  %.216 = phi %struct.plist* [ %221, %215 ], [ %272, %270 ]
  %.not46 = icmp eq %struct.plist* %.216, null
  br i1 %.not46, label %273, label %223

223:                                              ; preds = %222
  %224 = getelementptr inbounds %struct.plist, %struct.plist* %.216, i64 0, i32 0
  %225 = load i32, i32* %224, align 8
  store i32 %225, i32* %2, align 4
  %226 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds %struct.ebox, %struct.ebox* %226, i64 %227, i32 9
  %229 = load i32, i32* %228, align 4
  %.not47 = icmp eq i32 %229, %.01
  br i1 %.not47, label %231, label %230

230:                                              ; preds = %223
  br label %270

231:                                              ; preds = %223
  %232 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %233 = sext i32 %198 to i64
  %234 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %232, i64 %233, i32 0
  %235 = load %struct.flare*, %struct.flare** %234, align 8
  %236 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  %237 = sext i32 %198 to i64
  %238 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %232, i64 %237, i32 0
  %239 = bitcast %struct.flare** %238 to i8**
  store i8* %236, i8** %239, align 8
  %240 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %241 = sext i32 %198 to i64
  %242 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %240, i64 %241, i32 0
  %243 = load %struct.flare*, %struct.flare** %242, align 8
  %244 = getelementptr inbounds %struct.flare, %struct.flare* %243, i64 0, i32 2
  store %struct.flare* %235, %struct.flare** %244, align 8
  %245 = sext i32 %198 to i64
  %246 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %240, i64 %245, i32 0
  %247 = load %struct.flare*, %struct.flare** %246, align 8
  %248 = getelementptr inbounds %struct.flare, %struct.flare* %247, i64 0, i32 0
  store i32 %.01, i32* %248, align 8
  %249 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #3
  %250 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %251 = sext i32 %198 to i64
  %252 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %250, i64 %251, i32 0
  %253 = load %struct.flare*, %struct.flare** %252, align 8
  %254 = getelementptr inbounds %struct.flare, %struct.flare* %253, i64 0, i32 1
  %255 = bitcast i32** %254 to i8**
  store i8* %249, i8** %255, align 8
  %256 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %257 = sext i32 %198 to i64
  %258 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %256, i64 %257, i32 0
  %259 = load %struct.flare*, %struct.flare** %258, align 8
  %260 = getelementptr inbounds %struct.flare, %struct.flare* %259, i64 0, i32 1
  %261 = load i32*, i32** %260, align 8
  store i32 1, i32* %261, align 4
  %262 = load i32, i32* %2, align 4
  %263 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %264 = sext i32 %198 to i64
  %265 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %263, i64 %264, i32 0
  %266 = load %struct.flare*, %struct.flare** %265, align 8
  %267 = getelementptr inbounds %struct.flare, %struct.flare* %266, i64 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  store i32 %262, i32* %269, align 4
  br label %270

270:                                              ; preds = %231, %230
  %271 = getelementptr inbounds %struct.plist, %struct.plist* %.216, i64 0, i32 1
  %272 = load %struct.plist*, %struct.plist** %271, align 8
  br label %222, !llvm.loop !8

273:                                              ; preds = %222
  br label %333

274:                                              ; preds = %209
  %275 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %276 = sext i32 %.01 to i64
  %277 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %275, i64 %276, i32 3
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %1, align 4
  %279 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
  %280 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %279, i32 noundef %278) #3
  br label %281

281:                                              ; preds = %329, %274
  %.3 = phi %struct.plist* [ %280, %274 ], [ %331, %329 ]
  %.not43 = icmp eq %struct.plist* %.3, null
  br i1 %.not43, label %332, label %282

282:                                              ; preds = %281
  %283 = getelementptr inbounds %struct.plist, %struct.plist* %.3, i64 0, i32 0
  %284 = load i32, i32* %283, align 8
  store i32 %284, i32* %2, align 4
  %285 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds %struct.ebox, %struct.ebox* %285, i64 %286, i32 8
  %288 = load i32, i32* %287, align 8
  %.not45 = icmp eq i32 %288, %.01
  br i1 %.not45, label %290, label %289

289:                                              ; preds = %282
  br label %329

290:                                              ; preds = %282
  %291 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %292 = sext i32 %198 to i64
  %293 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %291, i64 %292, i32 1
  %294 = load %struct.flare*, %struct.flare** %293, align 8
  %295 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  %296 = sext i32 %198 to i64
  %297 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %291, i64 %296, i32 1
  %298 = bitcast %struct.flare** %297 to i8**
  store i8* %295, i8** %298, align 8
  %299 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %300 = sext i32 %198 to i64
  %301 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %299, i64 %300, i32 1
  %302 = load %struct.flare*, %struct.flare** %301, align 8
  %303 = getelementptr inbounds %struct.flare, %struct.flare* %302, i64 0, i32 2
  store %struct.flare* %294, %struct.flare** %303, align 8
  %304 = sext i32 %198 to i64
  %305 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %299, i64 %304, i32 1
  %306 = load %struct.flare*, %struct.flare** %305, align 8
  %307 = getelementptr inbounds %struct.flare, %struct.flare* %306, i64 0, i32 0
  store i32 %.01, i32* %307, align 8
  %308 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #3
  %309 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %310 = sext i32 %198 to i64
  %311 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %309, i64 %310, i32 1
  %312 = load %struct.flare*, %struct.flare** %311, align 8
  %313 = getelementptr inbounds %struct.flare, %struct.flare* %312, i64 0, i32 1
  %314 = bitcast i32** %313 to i8**
  store i8* %308, i8** %314, align 8
  %315 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %316 = sext i32 %198 to i64
  %317 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %315, i64 %316, i32 1
  %318 = load %struct.flare*, %struct.flare** %317, align 8
  %319 = getelementptr inbounds %struct.flare, %struct.flare* %318, i64 0, i32 1
  %320 = load i32*, i32** %319, align 8
  store i32 1, i32* %320, align 4
  %321 = load i32, i32* %2, align 4
  %322 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %323 = sext i32 %198 to i64
  %324 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %322, i64 %323, i32 1
  %325 = load %struct.flare*, %struct.flare** %324, align 8
  %326 = getelementptr inbounds %struct.flare, %struct.flare* %325, i64 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  store i32 %321, i32* %328, align 4
  br label %329

329:                                              ; preds = %290, %289
  %330 = getelementptr inbounds %struct.plist, %struct.plist* %.3, i64 0, i32 1
  %331 = load %struct.plist*, %struct.plist** %330, align 8
  br label %281, !llvm.loop !9

332:                                              ; preds = %281
  br label %333

333:                                              ; preds = %332, %273
  %334 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %335 = sext i32 %.01 to i64
  %336 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %334, i64 %335, i32 8
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %334, i64 %338, i32 8
  %340 = load i32, i32* %339, align 4
  br label %341

341:                                              ; preds = %333
  %.not44 = icmp eq i32 %340, %194
  br i1 %.not44, label %342, label %209, !llvm.loop !10

342:                                              ; preds = %341
  br label %343

343:                                              ; preds = %342, %204
  br label %189, !llvm.loop !11

344:                                              ; preds = %189
  br label %345

345:                                              ; preds = %517, %344
  %.02 = phi i32 [ 0, %344 ], [ %518, %517 ]
  %346 = load i32, i32* @numberCells, align 4
  %347 = add nsw i32 %346, 1
  %.not21 = icmp sgt i32 %.02, %347
  br i1 %.not21, label %519, label %348

348:                                              ; preds = %345
  %349 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %350 = zext i32 %.02 to i64
  %351 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %349, i64 %350, i32 0
  br label %352

352:                                              ; preds = %430, %348
  %.010.in = phi %struct.flare** [ %351, %348 ], [ %431, %430 ]
  %.010 = load %struct.flare*, %struct.flare** %.010.in, align 8
  %.not32 = icmp eq %struct.flare* %.010, null
  br i1 %.not32, label %432, label %353

353:                                              ; preds = %352
  %354 = getelementptr inbounds %struct.flare, %struct.flare* %.010, i64 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %355, align 4
  br label %357

357:                                              ; preds = %427, %353
  %.04 = phi i32 [ %356, %353 ], [ %428, %427 ]
  %358 = getelementptr inbounds %struct.flare, %struct.flare* %.010, i64 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %359, align 4
  %.not38 = icmp sgt i32 %.04, %360
  br i1 %.not38, label %429, label %361

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.flare, %struct.flare* %.010, i64 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = sext i32 %.04 to i64
  %365 = getelementptr inbounds i32, i32* %363, i64 %364
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %2, align 4
  %367 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %368 = sext i32 %366 to i64
  %369 = getelementptr inbounds %struct.ebox, %struct.ebox* %367, i64 %368, i32 3
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* %1, align 4
  %371 = sext i32 %366 to i64
  %372 = getelementptr inbounds %struct.ebox, %struct.ebox* %367, i64 %371, i32 6
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %375 = load i32, i32* %2, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.ebox, %struct.ebox* %374, i64 %376, i32 7
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
  %380 = load i32, i32* %1, align 4
  %381 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %379, i32 noundef %380) #3
  br label %382

382:                                              ; preds = %423, %361
  %.4 = phi %struct.plist* [ %381, %361 ], [ %425, %423 ]
  %.not39 = icmp eq %struct.plist* %.4, null
  br i1 %.not39, label %.loopexit17, label %383

383:                                              ; preds = %382
  %384 = getelementptr inbounds %struct.plist, %struct.plist* %.4, i64 0, i32 0
  %385 = load i32, i32* %384, align 8
  store i32 %385, i32* %2, align 4
  %386 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds %struct.ebox, %struct.ebox* %386, i64 %387, i32 7
  %389 = load i32, i32* %388, align 4
  %.not40 = icmp slt i32 %389, %378
  br i1 %.not40, label %395, label %390

390:                                              ; preds = %383
  %391 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %392 = sext i32 %385 to i64
  %393 = getelementptr inbounds %struct.ebox, %struct.ebox* %391, i64 %392, i32 6
  %394 = load i32, i32* %393, align 8
  %.not41 = icmp sgt i32 %394, %373
  br i1 %.not41, label %395, label %396

395:                                              ; preds = %390, %383
  br label %423

396:                                              ; preds = %390
  %397 = load i32, i32* %1, align 4
  %398 = load i32, i32* %2, align 4
  call void @tdelete(%struct.tnode** noundef nonnull @hChanEndRoot, i32 noundef %397, i32 noundef %398) #3
  %399 = getelementptr inbounds %struct.flare, %struct.flare* %.010, i64 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %400, align 4
  %403 = and i32 %402, 1
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %416

405:                                              ; preds = %396
  %406 = getelementptr inbounds %struct.flare, %struct.flare* %.010, i64 0, i32 1
  %407 = bitcast i32** %406 to i8**
  %408 = load i8*, i8** %407, align 8
  %.cast42 = bitcast i8* %408 to i32*
  %409 = load i32, i32* %.cast42, align 4
  %410 = add nsw i32 %409, 2
  %411 = sext i32 %410 to i64
  %412 = shl nsw i64 %411, 2
  %413 = call i8* @realloc(i8* noundef %408, i64 noundef %412) #3
  %414 = getelementptr inbounds %struct.flare, %struct.flare* %.010, i64 0, i32 1
  %415 = bitcast i32** %414 to i8**
  store i8* %413, i8** %415, align 8
  br label %416

416:                                              ; preds = %405, %396
  %417 = load i32, i32* %2, align 4
  %418 = getelementptr inbounds %struct.flare, %struct.flare* %.010, i64 0, i32 1
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %419, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  store i32 %417, i32* %422, align 4
  br label %426

423:                                              ; preds = %395
  %424 = getelementptr inbounds %struct.plist, %struct.plist* %.4, i64 0, i32 1
  %425 = load %struct.plist*, %struct.plist** %424, align 8
  br label %382, !llvm.loop !12

.loopexit17:                                      ; preds = %382
  br label %426

426:                                              ; preds = %.loopexit17, %416
  br label %427

427:                                              ; preds = %426
  %428 = add nsw i32 %.04, 1
  br label %357, !llvm.loop !13

429:                                              ; preds = %357
  br label %430

430:                                              ; preds = %429
  %431 = getelementptr inbounds %struct.flare, %struct.flare* %.010, i64 0, i32 2
  br label %352, !llvm.loop !14

432:                                              ; preds = %352
  %433 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %434 = zext i32 %.02 to i64
  %435 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %433, i64 %434, i32 1
  br label %436

436:                                              ; preds = %514, %432
  %.111.in = phi %struct.flare** [ %435, %432 ], [ %515, %514 ]
  %.111 = load %struct.flare*, %struct.flare** %.111.in, align 8
  %.not33 = icmp eq %struct.flare* %.111, null
  br i1 %.not33, label %516, label %437

437:                                              ; preds = %436
  %438 = getelementptr inbounds %struct.flare, %struct.flare* %.111, i64 0, i32 1
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %439, align 4
  br label %441

441:                                              ; preds = %511, %437
  %.15 = phi i32 [ %440, %437 ], [ %512, %511 ]
  %442 = getelementptr inbounds %struct.flare, %struct.flare* %.111, i64 0, i32 1
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %443, align 4
  %.not34 = icmp sgt i32 %.15, %444
  br i1 %.not34, label %513, label %445

445:                                              ; preds = %441
  %446 = getelementptr inbounds %struct.flare, %struct.flare* %.111, i64 0, i32 1
  %447 = load i32*, i32** %446, align 8
  %448 = sext i32 %.15 to i64
  %449 = getelementptr inbounds i32, i32* %447, i64 %448
  %450 = load i32, i32* %449, align 4
  store i32 %450, i32* %2, align 4
  %451 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %452 = sext i32 %450 to i64
  %453 = getelementptr inbounds %struct.ebox, %struct.ebox* %451, i64 %452, i32 4
  %454 = load i32, i32* %453, align 8
  store i32 %454, i32* %1, align 4
  %455 = sext i32 %450 to i64
  %456 = getelementptr inbounds %struct.ebox, %struct.ebox* %451, i64 %455, i32 6
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %459 = load i32, i32* %2, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.ebox, %struct.ebox* %458, i64 %460, i32 7
  %462 = load i32, i32* %461, align 4
  %463 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
  %464 = load i32, i32* %1, align 4
  %465 = call %struct.plist* (%struct.tnode*, i32, ...) bitcast (%struct.plist* (...)* @tplist to %struct.plist* (%struct.tnode*, i32, ...)*)(%struct.tnode* noundef %463, i32 noundef %464) #3
  br label %466

466:                                              ; preds = %507, %445
  %.5 = phi %struct.plist* [ %465, %445 ], [ %509, %507 ]
  %.not35 = icmp eq %struct.plist* %.5, null
  br i1 %.not35, label %.loopexit, label %467

467:                                              ; preds = %466
  %468 = getelementptr inbounds %struct.plist, %struct.plist* %.5, i64 0, i32 0
  %469 = load i32, i32* %468, align 8
  store i32 %469, i32* %2, align 4
  %470 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %471 = sext i32 %469 to i64
  %472 = getelementptr inbounds %struct.ebox, %struct.ebox* %470, i64 %471, i32 7
  %473 = load i32, i32* %472, align 4
  %.not36 = icmp slt i32 %473, %462
  br i1 %.not36, label %479, label %474

474:                                              ; preds = %467
  %475 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %476 = sext i32 %469 to i64
  %477 = getelementptr inbounds %struct.ebox, %struct.ebox* %475, i64 %476, i32 6
  %478 = load i32, i32* %477, align 8
  %.not37 = icmp sgt i32 %478, %457
  br i1 %.not37, label %479, label %480

479:                                              ; preds = %474, %467
  br label %507

480:                                              ; preds = %474
  %481 = load i32, i32* %1, align 4
  %482 = load i32, i32* %2, align 4
  call void @tdelete(%struct.tnode** noundef nonnull @hChanBeginRoot, i32 noundef %481, i32 noundef %482) #3
  %483 = getelementptr inbounds %struct.flare, %struct.flare* %.111, i64 0, i32 1
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %484, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %484, align 4
  %487 = and i32 %486, 1
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %500

489:                                              ; preds = %480
  %490 = getelementptr inbounds %struct.flare, %struct.flare* %.111, i64 0, i32 1
  %491 = bitcast i32** %490 to i8**
  %492 = load i8*, i8** %491, align 8
  %.cast = bitcast i8* %492 to i32*
  %493 = load i32, i32* %.cast, align 4
  %494 = add nsw i32 %493, 2
  %495 = sext i32 %494 to i64
  %496 = shl nsw i64 %495, 2
  %497 = call i8* @realloc(i8* noundef %492, i64 noundef %496) #3
  %498 = getelementptr inbounds %struct.flare, %struct.flare* %.111, i64 0, i32 1
  %499 = bitcast i32** %498 to i8**
  store i8* %497, i8** %499, align 8
  br label %500

500:                                              ; preds = %489, %480
  %501 = load i32, i32* %2, align 4
  %502 = getelementptr inbounds %struct.flare, %struct.flare* %.111, i64 0, i32 1
  %503 = load i32*, i32** %502, align 8
  %504 = load i32, i32* %503, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %503, i64 %505
  store i32 %501, i32* %506, align 4
  br label %510

507:                                              ; preds = %479
  %508 = getelementptr inbounds %struct.plist, %struct.plist* %.5, i64 0, i32 1
  %509 = load %struct.plist*, %struct.plist** %508, align 8
  br label %466, !llvm.loop !15

.loopexit:                                        ; preds = %466
  br label %510

510:                                              ; preds = %.loopexit, %500
  br label %511

511:                                              ; preds = %510
  %512 = add nsw i32 %.15, 1
  br label %441, !llvm.loop !16

513:                                              ; preds = %441
  br label %514

514:                                              ; preds = %513
  %515 = getelementptr inbounds %struct.flare, %struct.flare* %.111, i64 0, i32 2
  br label %436, !llvm.loop !17

516:                                              ; preds = %436
  br label %517

517:                                              ; preds = %516
  %518 = add nuw nsw i32 %.02, 1
  br label %345, !llvm.loop !18

519:                                              ; preds = %345
  store i32 0, i32* @numYnodes, align 4
  br label %520

520:                                              ; preds = %529, %519
  %.113.in = phi %struct.dlink1** [ @hFixedList, %519 ], [ %530, %529 ]
  %.113 = load %struct.dlink1*, %struct.dlink1** %.113.in, align 8
  %.not22 = icmp eq %struct.dlink1* %.113, null
  br i1 %.not22, label %531, label %521

521:                                              ; preds = %520
  %522 = load i32, i32* @numYnodes, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* @numYnodes, align 4
  %524 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %525 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.113, i64 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %524, i64 %527, i32 9
  store i32 %523, i32* %528, align 4
  br label %529

529:                                              ; preds = %521
  %530 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.113, i64 0, i32 2
  br label %520, !llvm.loop !19

531:                                              ; preds = %520
  %532 = load i32, i32* @numYnodes, align 4
  %533 = add nsw i32 %532, 1
  %534 = sext i32 %533 to i64
  %535 = shl nsw i64 %534, 3
  %536 = call noalias i8* @malloc(i64 noundef %535) #3
  store i8* %536, i8** bitcast (%struct.wcbox*** @yNodeArray to i8**), align 8
  br label %537

537:                                              ; preds = %543, %531
  %.1 = phi i32 [ 1, %531 ], [ %544, %543 ]
  %538 = load i32, i32* @numYnodes, align 4
  %.not23 = icmp sgt i32 %.1, %538
  br i1 %.not23, label %545, label %539

539:                                              ; preds = %537
  %540 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %541 = zext i32 %.1 to i64
  %542 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %540, i64 %541
  store %struct.wcbox* null, %struct.wcbox** %542, align 8
  br label %543

543:                                              ; preds = %539
  %544 = add nuw nsw i32 %.1, 1
  br label %537, !llvm.loop !20

545:                                              ; preds = %537
  br label %546

546:                                              ; preds = %617, %545
  %.13 = phi i32 [ 1, %545 ], [ %618, %617 ]
  %547 = load i32, i32* @numberCells, align 4
  %.not24 = icmp sgt i32 %.13, %547
  br i1 %.not24, label %619, label %548

548:                                              ; preds = %546
  %549 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %550 = zext i32 %.13 to i64
  %551 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %549, i64 %550, i32 0
  br label %552

552:                                              ; preds = %614, %548
  %.09.in = phi %struct.flare** [ %551, %548 ], [ %615, %614 ]
  %.09 = load %struct.flare*, %struct.flare** %.09.in, align 8
  %.not30 = icmp eq %struct.flare* %.09, null
  br i1 %.not30, label %616, label %553

553:                                              ; preds = %552
  %554 = getelementptr inbounds %struct.flare, %struct.flare* %.09, i64 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %557 = sext i32 %555 to i64
  %558 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %556, i64 %557, i32 9
  %559 = load i32, i32* %558, align 4
  %560 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %561 = zext i32 %.13 to i64
  %562 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %560, i64 %561, i32 1
  br label %563

563:                                              ; preds = %611, %553
  %.07.in = phi %struct.flare** [ %562, %553 ], [ %612, %611 ]
  %.07 = load %struct.flare*, %struct.flare** %.07.in, align 8
  %.not31 = icmp eq %struct.flare* %.07, null
  br i1 %.not31, label %613, label %564

564:                                              ; preds = %563
  %565 = getelementptr inbounds %struct.flare, %struct.flare* %.07, i64 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %568 = sext i32 %566 to i64
  %569 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %567, i64 %568, i32 9
  %570 = load i32, i32* %569, align 4
  %571 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %572 = sext i32 %559 to i64
  %573 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %571, i64 %572
  %574 = load %struct.wcbox*, %struct.wcbox** %573, align 8
  %575 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #3
  %576 = sext i32 %559 to i64
  %577 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %571, i64 %576
  %578 = bitcast %struct.wcbox** %577 to i8**
  store i8* %575, i8** %578, align 8
  %579 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %580 = sext i32 %559 to i64
  %581 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %579, i64 %580
  %582 = load %struct.wcbox*, %struct.wcbox** %581, align 8
  %583 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %582, i64 0, i32 4
  store %struct.wcbox* %574, %struct.wcbox** %583, align 8
  %584 = sext i32 %559 to i64
  %585 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %579, i64 %584
  %586 = load %struct.wcbox*, %struct.wcbox** %585, align 8
  %587 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %586, i64 0, i32 0
  store i32 1, i32* %587, align 8
  %588 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %589 = sext i32 %559 to i64
  %590 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %588, i64 %589
  %591 = load %struct.wcbox*, %struct.wcbox** %590, align 8
  %592 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %591, i64 0, i32 1
  store i32 %570, i32* %592, align 4
  %593 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %594 = sext i32 %559 to i64
  %595 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %593, i64 %594
  %596 = load %struct.wcbox*, %struct.wcbox** %595, align 8
  %597 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %596, i64 0, i32 2
  store i32* null, i32** %597, align 8
  %598 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %599 = sext i32 %566 to i64
  %600 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %598, i64 %599, i32 3
  %601 = load i32, i32* %600, align 4
  %602 = sext i32 %555 to i64
  %603 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %598, i64 %602, i32 3
  %604 = load i32, i32* %603, align 4
  %605 = sub nsw i32 %601, %604
  %606 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %607 = sext i32 %559 to i64
  %608 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %606, i64 %607
  %609 = load %struct.wcbox*, %struct.wcbox** %608, align 8
  %610 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %609, i64 0, i32 3
  store i32 %605, i32* %610, align 8
  br label %611

611:                                              ; preds = %564
  %612 = getelementptr inbounds %struct.flare, %struct.flare* %.07, i64 0, i32 2
  br label %563, !llvm.loop !21

613:                                              ; preds = %563
  br label %614

614:                                              ; preds = %613
  %615 = getelementptr inbounds %struct.flare, %struct.flare* %.09, i64 0, i32 2
  br label %552, !llvm.loop !22

616:                                              ; preds = %552
  br label %617

617:                                              ; preds = %616
  %618 = add nuw nsw i32 %.13, 1
  br label %546, !llvm.loop !23

619:                                              ; preds = %546
  br label %620

620:                                              ; preds = %712, %619
  %.2 = phi i32 [ 0, %619 ], [ %713, %712 ]
  %621 = load i32, i32* @numberCells, align 4
  %622 = add nsw i32 %621, 1
  %.not25 = icmp sgt i32 %.2, %622
  br i1 %.not25, label %714, label %623

623:                                              ; preds = %620
  %624 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %625 = zext i32 %.2 to i64
  %626 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %624, i64 %625, i32 1
  br label %627

627:                                              ; preds = %709, %623
  %.18.in = phi %struct.flare** [ %626, %623 ], [ %710, %709 ]
  %.18 = load %struct.flare*, %struct.flare** %.18.in, align 8
  %.not28 = icmp eq %struct.flare* %.18, null
  br i1 %.not28, label %711, label %628

628:                                              ; preds = %627
  %629 = getelementptr inbounds %struct.flare, %struct.flare* %.18, i64 0, i32 0
  %630 = load i32, i32* %629, align 8
  %631 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %632 = sext i32 %630 to i64
  %633 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %631, i64 %632, i32 9
  %634 = load i32, i32* %633, align 4
  %635 = getelementptr inbounds %struct.flare, %struct.flare* %.18, i64 0, i32 1
  %636 = load i32*, i32** %635, align 8
  %637 = load i32, i32* %636, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i32, i32* %636, i64 %638
  %640 = load i32, i32* %639, align 4
  %641 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %642 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %643 = sext i32 %640 to i64
  %644 = getelementptr inbounds %struct.ebox, %struct.ebox* %642, i64 %643, i32 9
  %645 = load i32, i32* %644, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %641, i64 %646, i32 9
  %648 = load i32, i32* %647, align 4
  %649 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %650 = sext i32 %634 to i64
  %651 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %649, i64 %650
  %652 = load %struct.wcbox*, %struct.wcbox** %651, align 8
  %653 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #3
  %654 = sext i32 %634 to i64
  %655 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %649, i64 %654
  %656 = bitcast %struct.wcbox** %655 to i8**
  store i8* %653, i8** %656, align 8
  %657 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %658 = sext i32 %634 to i64
  %659 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %657, i64 %658
  %660 = load %struct.wcbox*, %struct.wcbox** %659, align 8
  %661 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %660, i64 0, i32 4
  store %struct.wcbox* %652, %struct.wcbox** %661, align 8
  %662 = sext i32 %634 to i64
  %663 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %657, i64 %662
  %664 = load %struct.wcbox*, %struct.wcbox** %663, align 8
  %665 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %664, i64 0, i32 0
  store i32 0, i32* %665, align 8
  %666 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %667 = sext i32 %634 to i64
  %668 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %666, i64 %667
  %669 = load %struct.wcbox*, %struct.wcbox** %668, align 8
  %670 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %669, i64 0, i32 3
  store i32 0, i32* %670, align 8
  %671 = sext i32 %634 to i64
  %672 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %666, i64 %671
  %673 = load %struct.wcbox*, %struct.wcbox** %672, align 8
  %674 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %673, i64 0, i32 1
  store i32 %648, i32* %674, align 4
  %675 = getelementptr inbounds %struct.flare, %struct.flare* %.18, i64 0, i32 1
  %676 = load i32*, i32** %675, align 8
  %677 = load i32, i32* %676, align 4
  %678 = add nsw i32 %677, 1
  %679 = sext i32 %678 to i64
  %680 = shl nsw i64 %679, 2
  %681 = call noalias i8* @malloc(i64 noundef %680) #3
  %682 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %683 = sext i32 %634 to i64
  %684 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %682, i64 %683
  %685 = load %struct.wcbox*, %struct.wcbox** %684, align 8
  %686 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %685, i64 0, i32 2
  %687 = bitcast i32** %686 to i8**
  store i8* %681, i8** %687, align 8
  br label %688

688:                                              ; preds = %706, %628
  %.26 = phi i32 [ 0, %628 ], [ %707, %706 ]
  %689 = getelementptr inbounds %struct.flare, %struct.flare* %.18, i64 0, i32 1
  %690 = load i32*, i32** %689, align 8
  %691 = load i32, i32* %690, align 4
  %.not29 = icmp sgt i32 %.26, %691
  br i1 %.not29, label %708, label %692

692:                                              ; preds = %688
  %693 = getelementptr inbounds %struct.flare, %struct.flare* %.18, i64 0, i32 1
  %694 = load i32*, i32** %693, align 8
  %695 = zext i32 %.26 to i64
  %696 = getelementptr inbounds i32, i32* %694, i64 %695
  %697 = load i32, i32* %696, align 4
  %698 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %699 = sext i32 %634 to i64
  %700 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %698, i64 %699
  %701 = load %struct.wcbox*, %struct.wcbox** %700, align 8
  %702 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %701, i64 0, i32 2
  %703 = load i32*, i32** %702, align 8
  %704 = zext i32 %.26 to i64
  %705 = getelementptr inbounds i32, i32* %703, i64 %704
  store i32 %697, i32* %705, align 4
  br label %706

706:                                              ; preds = %692
  %707 = add nuw nsw i32 %.26, 1
  br label %688, !llvm.loop !24

708:                                              ; preds = %688
  br label %709

709:                                              ; preds = %708
  %710 = getelementptr inbounds %struct.flare, %struct.flare* %.18, i64 0, i32 2
  br label %627, !llvm.loop !25

711:                                              ; preds = %627
  br label %712

712:                                              ; preds = %711
  %713 = add nuw nsw i32 %.2, 1
  br label %620, !llvm.loop !26

714:                                              ; preds = %620
  %715 = load %struct.tnode*, %struct.tnode** @hChanBeginRoot, align 8
  %.not26 = icmp eq %struct.tnode* %715, null
  br i1 %.not26, label %723, label %716

716:                                              ; preds = %714
  br label %717

717:                                              ; preds = %721, %716
  call void @tpop(%struct.tnode** noundef nonnull @hChanBeginRoot, %struct.tnode** noundef nonnull %3, i32* noundef nonnull %1, i32* noundef nonnull %2) #3
  %718 = load %struct.tnode*, %struct.tnode** %3, align 8
  %719 = icmp eq %struct.tnode* %718, null
  br i1 %719, label %720, label %721

720:                                              ; preds = %717
  br label %722

721:                                              ; preds = %717
  br label %717

722:                                              ; preds = %720
  br label %723

723:                                              ; preds = %722, %714
  %724 = load %struct.tnode*, %struct.tnode** @hChanEndRoot, align 8
  %.not27 = icmp eq %struct.tnode* %724, null
  br i1 %.not27, label %732, label %725

725:                                              ; preds = %723
  br label %726

726:                                              ; preds = %730, %725
  call void @tpop(%struct.tnode** noundef nonnull @hChanEndRoot, %struct.tnode** noundef nonnull %3, i32* noundef nonnull %1, i32* noundef nonnull %2) #3
  %727 = load %struct.tnode*, %struct.tnode** %3, align 8
  %728 = icmp eq %struct.tnode* %727, null
  br i1 %728, label %729, label %730

729:                                              ; preds = %726
  br label %731

730:                                              ; preds = %726
  br label %726

731:                                              ; preds = %729
  br label %732

732:                                              ; preds = %731, %723
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
