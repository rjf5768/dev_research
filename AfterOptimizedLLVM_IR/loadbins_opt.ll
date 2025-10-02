; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/loadbins.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/loadbins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numBinsX = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@numcells = external dso_local global i32, align 4
@blockarray = external dso_local global i32***, align 8
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@numpads = external dso_local global i32, align 4
@finalShot = external dso_local global i32, align 4
@binOffsetX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@bucket = external dso_local global i32*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @loadbins(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cellbox*, align 8
  %4 = alloca %struct.tilebox*, align 8
  %5 = alloca %struct.tilebox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
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
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %62, %1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @numBinsX, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @numBinsY, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %54, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @numcells, align 4
  %39 = add nsw i32 4, %38
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load i32***, i32**** @blockarray, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32**, i32*** %42, i64 %44
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %36, !llvm.loop !4

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %31, !llvm.loop !6

61:                                               ; preds = %31
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %26, !llvm.loop !7

65:                                               ; preds = %26
  %66 = load i32, i32* @blockl, align 4
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* @blockr, align 4
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* @blockb, align 4
  store i32 %68, i32* %21, align 4
  %69 = load i32, i32* @blockt, align 4
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %19, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %21, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sdiv i32 %76, 2
  store i32 %77, i32* %24, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %19, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* %22, align 4
  %82 = load i32, i32* %21, align 4
  %83 = sub nsw i32 %81, %82
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %65
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %19, align 4
  %88 = sub nsw i32 %86, %87
  br label %93

89:                                               ; preds = %65
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %21, align 4
  %92 = sub nsw i32 %90, %91
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i32 [ %88, %85 ], [ %92, %89 ]
  store i32 %94, i32* %25, align 4
  %95 = load i32, i32* %2, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %526

97:                                               ; preds = %93
  store i32 0, i32* %6, align 4
  %98 = call noalias i8* @malloc(i64 noundef 224) #3
  %99 = bitcast i8* %98 to %struct.cellbox*
  %100 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %101 = load i32, i32* @numcells, align 4
  %102 = load i32, i32* @numpads, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = add nsw i32 %103, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %100, i64 %107
  store %struct.cellbox* %99, %struct.cellbox** %108, align 8
  store %struct.cellbox* %99, %struct.cellbox** %3, align 8
  %109 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %110 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %109, i32 0, i32 6
  store i32 1, i32* %110, align 4
  %111 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %112 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %111, i32 0, i32 8
  store i32 0, i32* %112, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %25, align 4
  %115 = sdiv i32 %114, 2
  %116 = sub nsw i32 %113, %115
  %117 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %118 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %21, align 4
  %121 = add nsw i32 %119, %120
  %122 = sdiv i32 %121, 2
  %123 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %124 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 8
  %125 = call noalias i8* @malloc(i64 noundef 104) #3
  %126 = bitcast i8* %125 to %struct.tilebox*
  %127 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %128 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %127, i32 0, i32 21
  %129 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %128, i64 0, i64 0
  store %struct.tilebox* %126, %struct.tilebox** %129, align 8
  store %struct.tilebox* %126, %struct.tilebox** %5, align 8
  %130 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %131 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %130, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %131, align 8
  %132 = call noalias i8* @malloc(i64 noundef 104) #3
  %133 = bitcast i8* %132 to %struct.tilebox*
  %134 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %135 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %134, i32 0, i32 0
  store %struct.tilebox* %133, %struct.tilebox** %135, align 8
  %136 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %137 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %136, i32 0, i32 0
  %138 = load %struct.tilebox*, %struct.tilebox** %137, align 8
  %139 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %138, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %139, align 8
  %140 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %141 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %140, i32 0, i32 0
  %142 = load %struct.tilebox*, %struct.tilebox** %141, align 8
  %143 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %142, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %143, align 8
  store i32 1, i32* %7, align 4
  br label %144

144:                                              ; preds = %153, %97
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %145, 8
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %149 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %148, i32 0, i32 21
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %149, i64 0, i64 %151
  store %struct.tilebox* null, %struct.tilebox** %152, align 8
  br label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %144, !llvm.loop !8

156:                                              ; preds = %144
  %157 = load i32, i32* %25, align 4
  %158 = sub nsw i32 0, %157
  %159 = sdiv i32 %158, 2
  %160 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %161 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %160, i32 0, i32 9
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %25, align 4
  %163 = sub nsw i32 0, %162
  %164 = sdiv i32 %163, 2
  %165 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %166 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %165, i32 0, i32 0
  %167 = load %struct.tilebox*, %struct.tilebox** %166, align 8
  %168 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %167, i32 0, i32 9
  store i32 %164, i32* %168, align 8
  %169 = load i32, i32* %25, align 4
  %170 = sdiv i32 %169, 2
  %171 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %172 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %171, i32 0, i32 10
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %25, align 4
  %174 = sdiv i32 %173, 2
  %175 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %176 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i32 0, i32 0
  %177 = load %struct.tilebox*, %struct.tilebox** %176, align 8
  %178 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %177, i32 0, i32 10
  store i32 %174, i32* %178, align 4
  %179 = load i32, i32* %24, align 4
  %180 = sub nsw i32 0, %179
  %181 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %182 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %181, i32 0, i32 11
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* %24, align 4
  %184 = sub nsw i32 0, %183
  %185 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %186 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %185, i32 0, i32 0
  %187 = load %struct.tilebox*, %struct.tilebox** %186, align 8
  %188 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %187, i32 0, i32 11
  store i32 %184, i32* %188, align 8
  %189 = load i32, i32* %22, align 4
  %190 = load i32, i32* %21, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load i32, i32* %24, align 4
  %193 = sub nsw i32 %191, %192
  %194 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %195 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %194, i32 0, i32 12
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %21, align 4
  %198 = sub nsw i32 %196, %197
  %199 = load i32, i32* %24, align 4
  %200 = sub nsw i32 %198, %199
  %201 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %202 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %201, i32 0, i32 0
  %203 = load %struct.tilebox*, %struct.tilebox** %202, align 8
  %204 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %203, i32 0, i32 12
  store i32 %200, i32* %204, align 4
  %205 = call noalias i8* @malloc(i64 noundef 224) #3
  %206 = bitcast i8* %205 to %struct.cellbox*
  %207 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %208 = load i32, i32* @numcells, align 4
  %209 = load i32, i32* @numpads, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  %213 = add nsw i32 %210, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %207, i64 %214
  store %struct.cellbox* %206, %struct.cellbox** %215, align 8
  store %struct.cellbox* %206, %struct.cellbox** %3, align 8
  %216 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %217 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %216, i32 0, i32 6
  store i32 1, i32* %217, align 4
  %218 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %219 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %218, i32 0, i32 8
  store i32 0, i32* %219, align 4
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* %25, align 4
  %222 = sdiv i32 %221, 2
  %223 = add nsw i32 %220, %222
  %224 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %225 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* %22, align 4
  %227 = load i32, i32* %21, align 4
  %228 = add nsw i32 %226, %227
  %229 = sdiv i32 %228, 2
  %230 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %231 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 8
  %232 = call noalias i8* @malloc(i64 noundef 104) #3
  %233 = bitcast i8* %232 to %struct.tilebox*
  %234 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %235 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %234, i32 0, i32 21
  %236 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %235, i64 0, i64 0
  store %struct.tilebox* %233, %struct.tilebox** %236, align 8
  store %struct.tilebox* %233, %struct.tilebox** %5, align 8
  %237 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %238 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %237, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %238, align 8
  %239 = call noalias i8* @malloc(i64 noundef 104) #3
  %240 = bitcast i8* %239 to %struct.tilebox*
  %241 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %242 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %241, i32 0, i32 0
  store %struct.tilebox* %240, %struct.tilebox** %242, align 8
  %243 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %244 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %243, i32 0, i32 0
  %245 = load %struct.tilebox*, %struct.tilebox** %244, align 8
  %246 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %245, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %246, align 8
  %247 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %248 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i32 0, i32 0
  %249 = load %struct.tilebox*, %struct.tilebox** %248, align 8
  %250 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %249, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %250, align 8
  store i32 1, i32* %7, align 4
  br label %251

251:                                              ; preds = %260, %156
  %252 = load i32, i32* %7, align 4
  %253 = icmp slt i32 %252, 8
  br i1 %253, label %254, label %263

254:                                              ; preds = %251
  %255 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %256 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %255, i32 0, i32 21
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %256, i64 0, i64 %258
  store %struct.tilebox* null, %struct.tilebox** %259, align 8
  br label %260

260:                                              ; preds = %254
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %7, align 4
  br label %251, !llvm.loop !9

263:                                              ; preds = %251
  %264 = load i32, i32* %25, align 4
  %265 = sub nsw i32 0, %264
  %266 = sdiv i32 %265, 2
  %267 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %268 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %267, i32 0, i32 9
  store i32 %266, i32* %268, align 8
  %269 = load i32, i32* %25, align 4
  %270 = sub nsw i32 0, %269
  %271 = sdiv i32 %270, 2
  %272 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %273 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %272, i32 0, i32 0
  %274 = load %struct.tilebox*, %struct.tilebox** %273, align 8
  %275 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %274, i32 0, i32 9
  store i32 %271, i32* %275, align 8
  %276 = load i32, i32* %25, align 4
  %277 = sdiv i32 %276, 2
  %278 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %279 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %278, i32 0, i32 10
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* %25, align 4
  %281 = sdiv i32 %280, 2
  %282 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %283 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %282, i32 0, i32 0
  %284 = load %struct.tilebox*, %struct.tilebox** %283, align 8
  %285 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %284, i32 0, i32 10
  store i32 %281, i32* %285, align 4
  %286 = load i32, i32* %24, align 4
  %287 = sub nsw i32 0, %286
  %288 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %289 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %288, i32 0, i32 11
  store i32 %287, i32* %289, align 8
  %290 = load i32, i32* %24, align 4
  %291 = sub nsw i32 0, %290
  %292 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %293 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %292, i32 0, i32 0
  %294 = load %struct.tilebox*, %struct.tilebox** %293, align 8
  %295 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %294, i32 0, i32 11
  store i32 %291, i32* %295, align 8
  %296 = load i32, i32* %22, align 4
  %297 = load i32, i32* %21, align 4
  %298 = sub nsw i32 %296, %297
  %299 = load i32, i32* %24, align 4
  %300 = sub nsw i32 %298, %299
  %301 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %302 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %301, i32 0, i32 12
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* %22, align 4
  %304 = load i32, i32* %21, align 4
  %305 = sub nsw i32 %303, %304
  %306 = load i32, i32* %24, align 4
  %307 = sub nsw i32 %305, %306
  %308 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %309 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %308, i32 0, i32 0
  %310 = load %struct.tilebox*, %struct.tilebox** %309, align 8
  %311 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %310, i32 0, i32 12
  store i32 %307, i32* %311, align 4
  %312 = call noalias i8* @malloc(i64 noundef 224) #3
  %313 = bitcast i8* %312 to %struct.cellbox*
  %314 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %315 = load i32, i32* @numcells, align 4
  %316 = load i32, i32* @numpads, align 4
  %317 = add nsw i32 %315, %316
  %318 = load i32, i32* %6, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %6, align 4
  %320 = add nsw i32 %317, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %314, i64 %321
  store %struct.cellbox* %313, %struct.cellbox** %322, align 8
  store %struct.cellbox* %313, %struct.cellbox** %3, align 8
  %323 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %324 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %323, i32 0, i32 6
  store i32 1, i32* %324, align 4
  %325 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %326 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %325, i32 0, i32 8
  store i32 0, i32* %326, align 4
  %327 = load i32, i32* %19, align 4
  %328 = load i32, i32* %20, align 4
  %329 = add nsw i32 %327, %328
  %330 = sdiv i32 %329, 2
  %331 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %332 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %331, i32 0, i32 2
  store i32 %330, i32* %332, align 4
  %333 = load i32, i32* %21, align 4
  %334 = load i32, i32* %25, align 4
  %335 = sdiv i32 %334, 2
  %336 = sub nsw i32 %333, %335
  %337 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %338 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %337, i32 0, i32 3
  store i32 %336, i32* %338, align 8
  %339 = call noalias i8* @malloc(i64 noundef 104) #3
  %340 = bitcast i8* %339 to %struct.tilebox*
  %341 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %342 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %341, i32 0, i32 21
  %343 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %342, i64 0, i64 0
  store %struct.tilebox* %340, %struct.tilebox** %343, align 8
  store %struct.tilebox* %340, %struct.tilebox** %5, align 8
  %344 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %345 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %344, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %345, align 8
  %346 = call noalias i8* @malloc(i64 noundef 104) #3
  %347 = bitcast i8* %346 to %struct.tilebox*
  %348 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %349 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %348, i32 0, i32 0
  store %struct.tilebox* %347, %struct.tilebox** %349, align 8
  %350 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %351 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %350, i32 0, i32 0
  %352 = load %struct.tilebox*, %struct.tilebox** %351, align 8
  %353 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %352, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %353, align 8
  %354 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %355 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %354, i32 0, i32 0
  %356 = load %struct.tilebox*, %struct.tilebox** %355, align 8
  %357 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %356, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %357, align 8
  store i32 1, i32* %7, align 4
  br label %358

358:                                              ; preds = %367, %263
  %359 = load i32, i32* %7, align 4
  %360 = icmp slt i32 %359, 8
  br i1 %360, label %361, label %370

361:                                              ; preds = %358
  %362 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %363 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %362, i32 0, i32 21
  %364 = load i32, i32* %7, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %363, i64 0, i64 %365
  store %struct.tilebox* null, %struct.tilebox** %366, align 8
  br label %367

367:                                              ; preds = %361
  %368 = load i32, i32* %7, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %7, align 4
  br label %358, !llvm.loop !10

370:                                              ; preds = %358
  %371 = load i32, i32* %25, align 4
  %372 = sub nsw i32 0, %371
  %373 = sdiv i32 %372, 2
  %374 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %375 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %374, i32 0, i32 11
  store i32 %373, i32* %375, align 8
  %376 = load i32, i32* %25, align 4
  %377 = sub nsw i32 0, %376
  %378 = sdiv i32 %377, 2
  %379 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %380 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %379, i32 0, i32 0
  %381 = load %struct.tilebox*, %struct.tilebox** %380, align 8
  %382 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %381, i32 0, i32 11
  store i32 %378, i32* %382, align 8
  %383 = load i32, i32* %25, align 4
  %384 = sdiv i32 %383, 2
  %385 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %386 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %385, i32 0, i32 12
  store i32 %384, i32* %386, align 4
  %387 = load i32, i32* %25, align 4
  %388 = sdiv i32 %387, 2
  %389 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %390 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %389, i32 0, i32 0
  %391 = load %struct.tilebox*, %struct.tilebox** %390, align 8
  %392 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %391, i32 0, i32 12
  store i32 %388, i32* %392, align 4
  %393 = load i32, i32* %23, align 4
  %394 = sub nsw i32 0, %393
  %395 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %396 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %395, i32 0, i32 9
  store i32 %394, i32* %396, align 8
  %397 = load i32, i32* %23, align 4
  %398 = sub nsw i32 0, %397
  %399 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %400 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %399, i32 0, i32 0
  %401 = load %struct.tilebox*, %struct.tilebox** %400, align 8
  %402 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %401, i32 0, i32 9
  store i32 %398, i32* %402, align 8
  %403 = load i32, i32* %20, align 4
  %404 = load i32, i32* %19, align 4
  %405 = sub nsw i32 %403, %404
  %406 = load i32, i32* %23, align 4
  %407 = sub nsw i32 %405, %406
  %408 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %409 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %408, i32 0, i32 10
  store i32 %407, i32* %409, align 4
  %410 = load i32, i32* %20, align 4
  %411 = load i32, i32* %19, align 4
  %412 = sub nsw i32 %410, %411
  %413 = load i32, i32* %23, align 4
  %414 = sub nsw i32 %412, %413
  %415 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %416 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %415, i32 0, i32 0
  %417 = load %struct.tilebox*, %struct.tilebox** %416, align 8
  %418 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %417, i32 0, i32 10
  store i32 %414, i32* %418, align 4
  %419 = call noalias i8* @malloc(i64 noundef 224) #3
  %420 = bitcast i8* %419 to %struct.cellbox*
  %421 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %422 = load i32, i32* @numcells, align 4
  %423 = load i32, i32* @numpads, align 4
  %424 = add nsw i32 %422, %423
  %425 = load i32, i32* %6, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %6, align 4
  %427 = add nsw i32 %424, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %421, i64 %428
  store %struct.cellbox* %420, %struct.cellbox** %429, align 8
  store %struct.cellbox* %420, %struct.cellbox** %3, align 8
  %430 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %431 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %430, i32 0, i32 6
  store i32 1, i32* %431, align 4
  %432 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %433 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %432, i32 0, i32 8
  store i32 0, i32* %433, align 4
  %434 = load i32, i32* %19, align 4
  %435 = load i32, i32* %20, align 4
  %436 = add nsw i32 %434, %435
  %437 = sdiv i32 %436, 2
  %438 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %439 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %438, i32 0, i32 2
  store i32 %437, i32* %439, align 4
  %440 = load i32, i32* %22, align 4
  %441 = load i32, i32* %25, align 4
  %442 = sdiv i32 %441, 2
  %443 = add nsw i32 %440, %442
  %444 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %445 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %444, i32 0, i32 3
  store i32 %443, i32* %445, align 8
  %446 = call noalias i8* @malloc(i64 noundef 104) #3
  %447 = bitcast i8* %446 to %struct.tilebox*
  %448 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %449 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %448, i32 0, i32 21
  %450 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %449, i64 0, i64 0
  store %struct.tilebox* %447, %struct.tilebox** %450, align 8
  store %struct.tilebox* %447, %struct.tilebox** %5, align 8
  %451 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %452 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %451, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %452, align 8
  %453 = call noalias i8* @malloc(i64 noundef 104) #3
  %454 = bitcast i8* %453 to %struct.tilebox*
  %455 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %456 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %455, i32 0, i32 0
  store %struct.tilebox* %454, %struct.tilebox** %456, align 8
  %457 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %458 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %457, i32 0, i32 0
  %459 = load %struct.tilebox*, %struct.tilebox** %458, align 8
  %460 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %459, i32 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %460, align 8
  %461 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %462 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %461, i32 0, i32 0
  %463 = load %struct.tilebox*, %struct.tilebox** %462, align 8
  %464 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %463, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %464, align 8
  store i32 1, i32* %7, align 4
  br label %465

465:                                              ; preds = %474, %370
  %466 = load i32, i32* %7, align 4
  %467 = icmp slt i32 %466, 8
  br i1 %467, label %468, label %477

468:                                              ; preds = %465
  %469 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %470 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %469, i32 0, i32 21
  %471 = load i32, i32* %7, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %470, i64 0, i64 %472
  store %struct.tilebox* null, %struct.tilebox** %473, align 8
  br label %474

474:                                              ; preds = %468
  %475 = load i32, i32* %7, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %7, align 4
  br label %465, !llvm.loop !11

477:                                              ; preds = %465
  %478 = load i32, i32* %25, align 4
  %479 = sub nsw i32 0, %478
  %480 = sdiv i32 %479, 2
  %481 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %482 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %481, i32 0, i32 11
  store i32 %480, i32* %482, align 8
  %483 = load i32, i32* %25, align 4
  %484 = sub nsw i32 0, %483
  %485 = sdiv i32 %484, 2
  %486 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %487 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %486, i32 0, i32 0
  %488 = load %struct.tilebox*, %struct.tilebox** %487, align 8
  %489 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %488, i32 0, i32 11
  store i32 %485, i32* %489, align 8
  %490 = load i32, i32* %25, align 4
  %491 = sdiv i32 %490, 2
  %492 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %493 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %492, i32 0, i32 12
  store i32 %491, i32* %493, align 4
  %494 = load i32, i32* %25, align 4
  %495 = sdiv i32 %494, 2
  %496 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %497 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %496, i32 0, i32 0
  %498 = load %struct.tilebox*, %struct.tilebox** %497, align 8
  %499 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %498, i32 0, i32 12
  store i32 %495, i32* %499, align 4
  %500 = load i32, i32* %23, align 4
  %501 = sub nsw i32 0, %500
  %502 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %503 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %502, i32 0, i32 9
  store i32 %501, i32* %503, align 8
  %504 = load i32, i32* %23, align 4
  %505 = sub nsw i32 0, %504
  %506 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %507 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %506, i32 0, i32 0
  %508 = load %struct.tilebox*, %struct.tilebox** %507, align 8
  %509 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %508, i32 0, i32 9
  store i32 %505, i32* %509, align 8
  %510 = load i32, i32* %20, align 4
  %511 = load i32, i32* %19, align 4
  %512 = sub nsw i32 %510, %511
  %513 = load i32, i32* %23, align 4
  %514 = sub nsw i32 %512, %513
  %515 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %516 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %515, i32 0, i32 10
  store i32 %514, i32* %516, align 4
  %517 = load i32, i32* %20, align 4
  %518 = load i32, i32* %19, align 4
  %519 = sub nsw i32 %517, %518
  %520 = load i32, i32* %23, align 4
  %521 = sub nsw i32 %519, %520
  %522 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %523 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %522, i32 0, i32 0
  %524 = load %struct.tilebox*, %struct.tilebox** %523, align 8
  %525 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %524, i32 0, i32 10
  store i32 %521, i32* %525, align 4
  br label %823

526:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  %527 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %528 = load i32, i32* @numcells, align 4
  %529 = load i32, i32* @numpads, align 4
  %530 = add nsw i32 %528, %529
  %531 = load i32, i32* %6, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %6, align 4
  %533 = add nsw i32 %530, %532
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %527, i64 %534
  %536 = load %struct.cellbox*, %struct.cellbox** %535, align 8
  store %struct.cellbox* %536, %struct.cellbox** %3, align 8
  %537 = load i32, i32* %19, align 4
  %538 = load i32, i32* %25, align 4
  %539 = sdiv i32 %538, 2
  %540 = sub nsw i32 %537, %539
  %541 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %542 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %541, i32 0, i32 2
  store i32 %540, i32* %542, align 4
  %543 = load i32, i32* %22, align 4
  %544 = load i32, i32* %21, align 4
  %545 = add nsw i32 %543, %544
  %546 = sdiv i32 %545, 2
  %547 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %548 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %547, i32 0, i32 3
  store i32 %546, i32* %548, align 8
  %549 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %550 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %549, i32 0, i32 21
  %551 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %550, i64 0, i64 0
  %552 = load %struct.tilebox*, %struct.tilebox** %551, align 8
  store %struct.tilebox* %552, %struct.tilebox** %5, align 8
  %553 = load i32, i32* %25, align 4
  %554 = sub nsw i32 0, %553
  %555 = sdiv i32 %554, 2
  %556 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %557 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %556, i32 0, i32 9
  store i32 %555, i32* %557, align 8
  %558 = load i32, i32* %25, align 4
  %559 = sub nsw i32 0, %558
  %560 = sdiv i32 %559, 2
  %561 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %562 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %561, i32 0, i32 0
  %563 = load %struct.tilebox*, %struct.tilebox** %562, align 8
  %564 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %563, i32 0, i32 9
  store i32 %560, i32* %564, align 8
  %565 = load i32, i32* %25, align 4
  %566 = sdiv i32 %565, 2
  %567 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %568 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %567, i32 0, i32 10
  store i32 %566, i32* %568, align 4
  %569 = load i32, i32* %25, align 4
  %570 = sdiv i32 %569, 2
  %571 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %572 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %571, i32 0, i32 0
  %573 = load %struct.tilebox*, %struct.tilebox** %572, align 8
  %574 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %573, i32 0, i32 10
  store i32 %570, i32* %574, align 4
  %575 = load i32, i32* %24, align 4
  %576 = sub nsw i32 0, %575
  %577 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %578 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %577, i32 0, i32 11
  store i32 %576, i32* %578, align 8
  %579 = load i32, i32* %24, align 4
  %580 = sub nsw i32 0, %579
  %581 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %582 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %581, i32 0, i32 0
  %583 = load %struct.tilebox*, %struct.tilebox** %582, align 8
  %584 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %583, i32 0, i32 11
  store i32 %580, i32* %584, align 8
  %585 = load i32, i32* %22, align 4
  %586 = load i32, i32* %21, align 4
  %587 = sub nsw i32 %585, %586
  %588 = load i32, i32* %24, align 4
  %589 = sub nsw i32 %587, %588
  %590 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %591 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %590, i32 0, i32 12
  store i32 %589, i32* %591, align 4
  %592 = load i32, i32* %22, align 4
  %593 = load i32, i32* %21, align 4
  %594 = sub nsw i32 %592, %593
  %595 = load i32, i32* %24, align 4
  %596 = sub nsw i32 %594, %595
  %597 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %598 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %597, i32 0, i32 0
  %599 = load %struct.tilebox*, %struct.tilebox** %598, align 8
  %600 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %599, i32 0, i32 12
  store i32 %596, i32* %600, align 4
  %601 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %602 = load i32, i32* @numcells, align 4
  %603 = load i32, i32* @numpads, align 4
  %604 = add nsw i32 %602, %603
  %605 = load i32, i32* %6, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %6, align 4
  %607 = add nsw i32 %604, %606
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %601, i64 %608
  %610 = load %struct.cellbox*, %struct.cellbox** %609, align 8
  store %struct.cellbox* %610, %struct.cellbox** %3, align 8
  %611 = load i32, i32* %20, align 4
  %612 = load i32, i32* %25, align 4
  %613 = sdiv i32 %612, 2
  %614 = add nsw i32 %611, %613
  %615 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %616 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %615, i32 0, i32 2
  store i32 %614, i32* %616, align 4
  %617 = load i32, i32* %22, align 4
  %618 = load i32, i32* %21, align 4
  %619 = add nsw i32 %617, %618
  %620 = sdiv i32 %619, 2
  %621 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %622 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %621, i32 0, i32 3
  store i32 %620, i32* %622, align 8
  %623 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %624 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %623, i32 0, i32 21
  %625 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %624, i64 0, i64 0
  %626 = load %struct.tilebox*, %struct.tilebox** %625, align 8
  store %struct.tilebox* %626, %struct.tilebox** %5, align 8
  %627 = load i32, i32* %25, align 4
  %628 = sub nsw i32 0, %627
  %629 = sdiv i32 %628, 2
  %630 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %631 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %630, i32 0, i32 9
  store i32 %629, i32* %631, align 8
  %632 = load i32, i32* %25, align 4
  %633 = sub nsw i32 0, %632
  %634 = sdiv i32 %633, 2
  %635 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %636 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %635, i32 0, i32 0
  %637 = load %struct.tilebox*, %struct.tilebox** %636, align 8
  %638 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %637, i32 0, i32 9
  store i32 %634, i32* %638, align 8
  %639 = load i32, i32* %25, align 4
  %640 = sdiv i32 %639, 2
  %641 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %642 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %641, i32 0, i32 10
  store i32 %640, i32* %642, align 4
  %643 = load i32, i32* %25, align 4
  %644 = sdiv i32 %643, 2
  %645 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %646 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %645, i32 0, i32 0
  %647 = load %struct.tilebox*, %struct.tilebox** %646, align 8
  %648 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %647, i32 0, i32 10
  store i32 %644, i32* %648, align 4
  %649 = load i32, i32* %24, align 4
  %650 = sub nsw i32 0, %649
  %651 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %652 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %651, i32 0, i32 11
  store i32 %650, i32* %652, align 8
  %653 = load i32, i32* %24, align 4
  %654 = sub nsw i32 0, %653
  %655 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %656 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %655, i32 0, i32 0
  %657 = load %struct.tilebox*, %struct.tilebox** %656, align 8
  %658 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %657, i32 0, i32 11
  store i32 %654, i32* %658, align 8
  %659 = load i32, i32* %22, align 4
  %660 = load i32, i32* %21, align 4
  %661 = sub nsw i32 %659, %660
  %662 = load i32, i32* %24, align 4
  %663 = sub nsw i32 %661, %662
  %664 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %665 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %664, i32 0, i32 12
  store i32 %663, i32* %665, align 4
  %666 = load i32, i32* %22, align 4
  %667 = load i32, i32* %21, align 4
  %668 = sub nsw i32 %666, %667
  %669 = load i32, i32* %24, align 4
  %670 = sub nsw i32 %668, %669
  %671 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %672 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %671, i32 0, i32 0
  %673 = load %struct.tilebox*, %struct.tilebox** %672, align 8
  %674 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %673, i32 0, i32 12
  store i32 %670, i32* %674, align 4
  %675 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %676 = load i32, i32* @numcells, align 4
  %677 = load i32, i32* @numpads, align 4
  %678 = add nsw i32 %676, %677
  %679 = load i32, i32* %6, align 4
  %680 = add nsw i32 %679, 1
  store i32 %680, i32* %6, align 4
  %681 = add nsw i32 %678, %680
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %675, i64 %682
  %684 = load %struct.cellbox*, %struct.cellbox** %683, align 8
  store %struct.cellbox* %684, %struct.cellbox** %3, align 8
  %685 = load i32, i32* %19, align 4
  %686 = load i32, i32* %20, align 4
  %687 = add nsw i32 %685, %686
  %688 = sdiv i32 %687, 2
  %689 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %690 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %689, i32 0, i32 2
  store i32 %688, i32* %690, align 4
  %691 = load i32, i32* %21, align 4
  %692 = load i32, i32* %25, align 4
  %693 = sdiv i32 %692, 2
  %694 = sub nsw i32 %691, %693
  %695 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %696 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %695, i32 0, i32 3
  store i32 %694, i32* %696, align 8
  %697 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %698 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %697, i32 0, i32 21
  %699 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %698, i64 0, i64 0
  %700 = load %struct.tilebox*, %struct.tilebox** %699, align 8
  store %struct.tilebox* %700, %struct.tilebox** %5, align 8
  %701 = load i32, i32* %25, align 4
  %702 = sub nsw i32 0, %701
  %703 = sdiv i32 %702, 2
  %704 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %705 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %704, i32 0, i32 11
  store i32 %703, i32* %705, align 8
  %706 = load i32, i32* %25, align 4
  %707 = sub nsw i32 0, %706
  %708 = sdiv i32 %707, 2
  %709 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %710 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %709, i32 0, i32 0
  %711 = load %struct.tilebox*, %struct.tilebox** %710, align 8
  %712 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %711, i32 0, i32 11
  store i32 %708, i32* %712, align 8
  %713 = load i32, i32* %25, align 4
  %714 = sdiv i32 %713, 2
  %715 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %716 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %715, i32 0, i32 12
  store i32 %714, i32* %716, align 4
  %717 = load i32, i32* %25, align 4
  %718 = sdiv i32 %717, 2
  %719 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %720 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %719, i32 0, i32 0
  %721 = load %struct.tilebox*, %struct.tilebox** %720, align 8
  %722 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %721, i32 0, i32 12
  store i32 %718, i32* %722, align 4
  %723 = load i32, i32* %23, align 4
  %724 = sub nsw i32 0, %723
  %725 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %726 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %725, i32 0, i32 9
  store i32 %724, i32* %726, align 8
  %727 = load i32, i32* %23, align 4
  %728 = sub nsw i32 0, %727
  %729 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %730 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %729, i32 0, i32 0
  %731 = load %struct.tilebox*, %struct.tilebox** %730, align 8
  %732 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %731, i32 0, i32 9
  store i32 %728, i32* %732, align 8
  %733 = load i32, i32* %20, align 4
  %734 = load i32, i32* %19, align 4
  %735 = sub nsw i32 %733, %734
  %736 = load i32, i32* %23, align 4
  %737 = sub nsw i32 %735, %736
  %738 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %739 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %738, i32 0, i32 10
  store i32 %737, i32* %739, align 4
  %740 = load i32, i32* %20, align 4
  %741 = load i32, i32* %19, align 4
  %742 = sub nsw i32 %740, %741
  %743 = load i32, i32* %23, align 4
  %744 = sub nsw i32 %742, %743
  %745 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %746 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %745, i32 0, i32 0
  %747 = load %struct.tilebox*, %struct.tilebox** %746, align 8
  %748 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %747, i32 0, i32 10
  store i32 %744, i32* %748, align 4
  %749 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %750 = load i32, i32* @numcells, align 4
  %751 = load i32, i32* @numpads, align 4
  %752 = add nsw i32 %750, %751
  %753 = load i32, i32* %6, align 4
  %754 = add nsw i32 %753, 1
  store i32 %754, i32* %6, align 4
  %755 = add nsw i32 %752, %754
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %749, i64 %756
  %758 = load %struct.cellbox*, %struct.cellbox** %757, align 8
  store %struct.cellbox* %758, %struct.cellbox** %3, align 8
  %759 = load i32, i32* %19, align 4
  %760 = load i32, i32* %20, align 4
  %761 = add nsw i32 %759, %760
  %762 = sdiv i32 %761, 2
  %763 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %764 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %763, i32 0, i32 2
  store i32 %762, i32* %764, align 4
  %765 = load i32, i32* %22, align 4
  %766 = load i32, i32* %25, align 4
  %767 = sdiv i32 %766, 2
  %768 = add nsw i32 %765, %767
  %769 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %770 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %769, i32 0, i32 3
  store i32 %768, i32* %770, align 8
  %771 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %772 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %771, i32 0, i32 21
  %773 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %772, i64 0, i64 0
  %774 = load %struct.tilebox*, %struct.tilebox** %773, align 8
  store %struct.tilebox* %774, %struct.tilebox** %5, align 8
  %775 = load i32, i32* %25, align 4
  %776 = sub nsw i32 0, %775
  %777 = sdiv i32 %776, 2
  %778 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %779 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %778, i32 0, i32 11
  store i32 %777, i32* %779, align 8
  %780 = load i32, i32* %25, align 4
  %781 = sub nsw i32 0, %780
  %782 = sdiv i32 %781, 2
  %783 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %784 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %783, i32 0, i32 0
  %785 = load %struct.tilebox*, %struct.tilebox** %784, align 8
  %786 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %785, i32 0, i32 11
  store i32 %782, i32* %786, align 8
  %787 = load i32, i32* %25, align 4
  %788 = sdiv i32 %787, 2
  %789 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %790 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %789, i32 0, i32 12
  store i32 %788, i32* %790, align 4
  %791 = load i32, i32* %25, align 4
  %792 = sdiv i32 %791, 2
  %793 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %794 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %793, i32 0, i32 0
  %795 = load %struct.tilebox*, %struct.tilebox** %794, align 8
  %796 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %795, i32 0, i32 12
  store i32 %792, i32* %796, align 4
  %797 = load i32, i32* %23, align 4
  %798 = sub nsw i32 0, %797
  %799 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %800 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %799, i32 0, i32 9
  store i32 %798, i32* %800, align 8
  %801 = load i32, i32* %23, align 4
  %802 = sub nsw i32 0, %801
  %803 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %804 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %803, i32 0, i32 0
  %805 = load %struct.tilebox*, %struct.tilebox** %804, align 8
  %806 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %805, i32 0, i32 9
  store i32 %802, i32* %806, align 8
  %807 = load i32, i32* %20, align 4
  %808 = load i32, i32* %19, align 4
  %809 = sub nsw i32 %807, %808
  %810 = load i32, i32* %23, align 4
  %811 = sub nsw i32 %809, %810
  %812 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %813 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %812, i32 0, i32 10
  store i32 %811, i32* %813, align 4
  %814 = load i32, i32* %20, align 4
  %815 = load i32, i32* %19, align 4
  %816 = sub nsw i32 %814, %815
  %817 = load i32, i32* %23, align 4
  %818 = sub nsw i32 %816, %817
  %819 = load %struct.tilebox*, %struct.tilebox** %5, align 8
  %820 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %819, i32 0, i32 0
  %821 = load %struct.tilebox*, %struct.tilebox** %820, align 8
  %822 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %821, i32 0, i32 10
  store i32 %818, i32* %822, align 4
  br label %823

823:                                              ; preds = %526, %477
  store i32 1, i32* %18, align 4
  br label %824

824:                                              ; preds = %1045, %823
  %825 = load i32, i32* %18, align 4
  %826 = load i32, i32* @numcells, align 4
  %827 = load i32, i32* @numpads, align 4
  %828 = add nsw i32 %826, %827
  %829 = add nsw i32 %828, 4
  %830 = icmp sle i32 %825, %829
  br i1 %830, label %831, label %1048

831:                                              ; preds = %824
  %832 = load i32, i32* %18, align 4
  %833 = load i32, i32* @numcells, align 4
  %834 = icmp sgt i32 %832, %833
  br i1 %834, label %835, label %842

835:                                              ; preds = %831
  %836 = load i32, i32* %18, align 4
  %837 = load i32, i32* @numcells, align 4
  %838 = load i32, i32* @numpads, align 4
  %839 = add nsw i32 %837, %838
  %840 = icmp sle i32 %836, %839
  br i1 %840, label %841, label %842

841:                                              ; preds = %835
  br label %1045

842:                                              ; preds = %835, %831
  %843 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %844 = load i32, i32* %18, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %843, i64 %845
  %847 = load %struct.cellbox*, %struct.cellbox** %846, align 8
  store %struct.cellbox* %847, %struct.cellbox** %3, align 8
  %848 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %849 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %848, i32 0, i32 21
  %850 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %851 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %850, i32 0, i32 5
  %852 = load i32, i32* %851, align 8
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %849, i64 0, i64 %853
  %855 = load %struct.tilebox*, %struct.tilebox** %854, align 8
  store %struct.tilebox* %855, %struct.tilebox** %4, align 8
  %856 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %857 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %856, i32 0, i32 2
  %858 = load i32, i32* %857, align 4
  %859 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %860 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %859, i32 0, i32 9
  %861 = load i32, i32* %860, align 8
  %862 = add nsw i32 %858, %861
  store i32 %862, i32* %9, align 4
  %863 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %864 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %863, i32 0, i32 2
  %865 = load i32, i32* %864, align 4
  %866 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %867 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %866, i32 0, i32 10
  %868 = load i32, i32* %867, align 4
  %869 = add nsw i32 %865, %868
  store i32 %869, i32* %10, align 4
  %870 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %871 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %870, i32 0, i32 3
  %872 = load i32, i32* %871, align 8
  %873 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %874 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %873, i32 0, i32 11
  %875 = load i32, i32* %874, align 8
  %876 = add nsw i32 %872, %875
  store i32 %876, i32* %11, align 4
  %877 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %878 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %877, i32 0, i32 3
  %879 = load i32, i32* %878, align 8
  %880 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %881 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %880, i32 0, i32 12
  %882 = load i32, i32* %881, align 4
  %883 = add nsw i32 %879, %882
  store i32 %883, i32* %12, align 4
  %884 = load i32, i32* %18, align 4
  %885 = load i32, i32* @numcells, align 4
  %886 = icmp sle i32 %884, %885
  br i1 %886, label %887, label %949

887:                                              ; preds = %842
  %888 = load i32, i32* @finalShot, align 4
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %890, label %927

890:                                              ; preds = %887
  %891 = load i32, i32* %9, align 4
  %892 = load i32, i32* %11, align 4
  %893 = load i32, i32* %12, align 4
  %894 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %895 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %894, i32 0, i32 1
  %896 = load double, double* %895, align 8
  %897 = call i32 @wireestx(i32 noundef %891, i32 noundef %892, i32 noundef %893, double noundef %896)
  %898 = load i32, i32* %9, align 4
  %899 = sub nsw i32 %898, %897
  store i32 %899, i32* %9, align 4
  %900 = load i32, i32* %10, align 4
  %901 = load i32, i32* %11, align 4
  %902 = load i32, i32* %12, align 4
  %903 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %904 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %903, i32 0, i32 2
  %905 = load double, double* %904, align 8
  %906 = call i32 @wireestx(i32 noundef %900, i32 noundef %901, i32 noundef %902, double noundef %905)
  %907 = load i32, i32* %10, align 4
  %908 = add nsw i32 %907, %906
  store i32 %908, i32* %10, align 4
  %909 = load i32, i32* %11, align 4
  %910 = load i32, i32* %9, align 4
  %911 = load i32, i32* %10, align 4
  %912 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %913 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %912, i32 0, i32 3
  %914 = load double, double* %913, align 8
  %915 = call i32 @wireesty(i32 noundef %909, i32 noundef %910, i32 noundef %911, double noundef %914)
  %916 = load i32, i32* %11, align 4
  %917 = sub nsw i32 %916, %915
  store i32 %917, i32* %11, align 4
  %918 = load i32, i32* %12, align 4
  %919 = load i32, i32* %9, align 4
  %920 = load i32, i32* %10, align 4
  %921 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %922 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %921, i32 0, i32 4
  %923 = load double, double* %922, align 8
  %924 = call i32 @wireesty(i32 noundef %918, i32 noundef %919, i32 noundef %920, double noundef %923)
  %925 = load i32, i32* %12, align 4
  %926 = add nsw i32 %925, %924
  store i32 %926, i32* %12, align 4
  br label %948

927:                                              ; preds = %887
  %928 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %929 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %928, i32 0, i32 5
  %930 = load i32, i32* %929, align 8
  %931 = load i32, i32* %9, align 4
  %932 = sub nsw i32 %931, %930
  store i32 %932, i32* %9, align 4
  %933 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %934 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %933, i32 0, i32 6
  %935 = load i32, i32* %934, align 4
  %936 = load i32, i32* %10, align 4
  %937 = add nsw i32 %936, %935
  store i32 %937, i32* %10, align 4
  %938 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %939 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %938, i32 0, i32 7
  %940 = load i32, i32* %939, align 8
  %941 = load i32, i32* %11, align 4
  %942 = sub nsw i32 %941, %940
  store i32 %942, i32* %11, align 4
  %943 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %944 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %943, i32 0, i32 8
  %945 = load i32, i32* %944, align 4
  %946 = load i32, i32* %12, align 4
  %947 = add nsw i32 %946, %945
  store i32 %947, i32* %12, align 4
  br label %948

948:                                              ; preds = %927, %890
  br label %949

949:                                              ; preds = %948, %842
  %950 = load i32, i32* %9, align 4
  %951 = load i32, i32* @binOffsetX, align 4
  %952 = sub nsw i32 %950, %951
  %953 = load i32, i32* @binWidthX, align 4
  %954 = sdiv i32 %952, %953
  store i32 %954, i32* %14, align 4
  %955 = load i32, i32* %14, align 4
  %956 = icmp slt i32 %955, 1
  br i1 %956, label %957, label %958

957:                                              ; preds = %949
  store i32 1, i32* %14, align 4
  br label %965

958:                                              ; preds = %949
  %959 = load i32, i32* %14, align 4
  %960 = load i32, i32* @numBinsX, align 4
  %961 = icmp sgt i32 %959, %960
  br i1 %961, label %962, label %964

962:                                              ; preds = %958
  %963 = load i32, i32* @numBinsX, align 4
  store i32 %963, i32* %14, align 4
  br label %964

964:                                              ; preds = %962, %958
  br label %965

965:                                              ; preds = %964, %957
  %966 = load i32, i32* %10, align 4
  %967 = load i32, i32* @binOffsetX, align 4
  %968 = sub nsw i32 %966, %967
  %969 = load i32, i32* @binWidthX, align 4
  %970 = sdiv i32 %968, %969
  store i32 %970, i32* %15, align 4
  %971 = load i32, i32* %15, align 4
  %972 = load i32, i32* @numBinsX, align 4
  %973 = icmp sgt i32 %971, %972
  br i1 %973, label %974, label %976

974:                                              ; preds = %965
  %975 = load i32, i32* @numBinsX, align 4
  store i32 %975, i32* %15, align 4
  br label %981

976:                                              ; preds = %965
  %977 = load i32, i32* %15, align 4
  %978 = icmp slt i32 %977, 1
  br i1 %978, label %979, label %980

979:                                              ; preds = %976
  store i32 1, i32* %15, align 4
  br label %980

980:                                              ; preds = %979, %976
  br label %981

981:                                              ; preds = %980, %974
  %982 = load i32, i32* %14, align 4
  %983 = load i32, i32* %15, align 4
  %984 = icmp eq i32 %982, %983
  br i1 %984, label %985, label %1034

985:                                              ; preds = %981
  %986 = load i32, i32* %11, align 4
  %987 = load i32, i32* @binOffsetY, align 4
  %988 = sub nsw i32 %986, %987
  %989 = load i32, i32* @binWidthY, align 4
  %990 = sdiv i32 %988, %989
  store i32 %990, i32* %16, align 4
  %991 = load i32, i32* %16, align 4
  %992 = icmp slt i32 %991, 1
  br i1 %992, label %993, label %994

993:                                              ; preds = %985
  store i32 1, i32* %16, align 4
  br label %1001

994:                                              ; preds = %985
  %995 = load i32, i32* %16, align 4
  %996 = load i32, i32* @numBinsY, align 4
  %997 = icmp sgt i32 %995, %996
  br i1 %997, label %998, label %1000

998:                                              ; preds = %994
  %999 = load i32, i32* @numBinsY, align 4
  store i32 %999, i32* %16, align 4
  br label %1000

1000:                                             ; preds = %998, %994
  br label %1001

1001:                                             ; preds = %1000, %993
  %1002 = load i32, i32* %12, align 4
  %1003 = load i32, i32* @binOffsetY, align 4
  %1004 = sub nsw i32 %1002, %1003
  %1005 = load i32, i32* @binWidthY, align 4
  %1006 = sdiv i32 %1004, %1005
  store i32 %1006, i32* %17, align 4
  %1007 = load i32, i32* %17, align 4
  %1008 = load i32, i32* @numBinsY, align 4
  %1009 = icmp sgt i32 %1007, %1008
  br i1 %1009, label %1010, label %1012

1010:                                             ; preds = %1001
  %1011 = load i32, i32* @numBinsY, align 4
  store i32 %1011, i32* %17, align 4
  br label %1017

1012:                                             ; preds = %1001
  %1013 = load i32, i32* %17, align 4
  %1014 = icmp slt i32 %1013, 1
  br i1 %1014, label %1015, label %1016

1015:                                             ; preds = %1012
  store i32 1, i32* %17, align 4
  br label %1016

1016:                                             ; preds = %1015, %1012
  br label %1017

1017:                                             ; preds = %1016, %1010
  %1018 = load i32, i32* %16, align 4
  %1019 = load i32, i32* %17, align 4
  %1020 = icmp eq i32 %1018, %1019
  br i1 %1020, label %1021, label %1031

1021:                                             ; preds = %1017
  %1022 = load i32***, i32**** @blockarray, align 8
  %1023 = load i32, i32* %14, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds i32**, i32*** %1022, i64 %1024
  %1026 = load i32**, i32*** %1025, align 8
  %1027 = load i32, i32* %16, align 4
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds i32*, i32** %1026, i64 %1028
  %1030 = load i32*, i32** %1029, align 8
  store i32* %1030, i32** %13, align 8
  br label %1033

1031:                                             ; preds = %1017
  %1032 = load i32*, i32** @bucket, align 8
  store i32* %1032, i32** %13, align 8
  br label %1033

1033:                                             ; preds = %1031, %1021
  br label %1036

1034:                                             ; preds = %981
  %1035 = load i32*, i32** @bucket, align 8
  store i32* %1035, i32** %13, align 8
  br label %1036

1036:                                             ; preds = %1034, %1033
  %1037 = load i32, i32* %18, align 4
  %1038 = load i32*, i32** %13, align 8
  %1039 = load i32*, i32** %13, align 8
  %1040 = getelementptr inbounds i32, i32* %1039, i64 0
  %1041 = load i32, i32* %1040, align 4
  %1042 = add nsw i32 %1041, 1
  store i32 %1042, i32* %1040, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds i32, i32* %1038, i64 %1043
  store i32 %1037, i32* %1044, align 4
  br label %1045

1045:                                             ; preds = %1036, %841
  %1046 = load i32, i32* %18, align 4
  %1047 = add nsw i32 %1046, 1
  store i32 %1047, i32* %18, align 4
  br label %824, !llvm.loop !12

1048:                                             ; preds = %824
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @wireestx(i32 noundef, i32 noundef, i32 noundef, double noundef) #2

declare dso_local i32 @wireesty(i32 noundef, i32 noundef, i32 noundef, double noundef) #2

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
