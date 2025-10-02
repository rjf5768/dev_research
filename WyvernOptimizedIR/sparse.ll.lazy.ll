; ModuleID = './sparse.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@force_irredundant = external dso_local global i32, align 4
@cube = external dso_local global %struct.cube_struct, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @make_sparse(%struct.set_family* noundef %0, %struct.set_family* nocapture noundef readonly %1, %struct.set_family* noundef %2) #0 {
  %4 = alloca %struct.cost_struct, align 4
  %5 = alloca %struct.cost_struct, align 4
  call void (%struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @cover_cost to void (%struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* noundef %0, %struct.cost_struct* noundef nonnull %5) #2
  br label %6

6:                                                ; preds = %25, %3
  %.0 = phi %struct.set_family* [ %0, %3 ], [ %17, %25 ]
  %7 = call i64 (...) @util_cpu_time() #2
  %8 = call %struct.set_family* @mv_reduce(%struct.set_family* noundef %.0, %struct.set_family* noundef %1)
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %7, i32 noundef 12, %struct.set_family* noundef %8, %struct.cost_struct* noundef nonnull %4) #2
  %9 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %4, i64 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %5, i64 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %27

15:                                               ; preds = %6
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* noundef nonnull %4, %struct.cost_struct* noundef nonnull %5) #2
  %16 = call i64 (...) @util_cpu_time() #2
  %17 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* noundef %8, %struct.set_family* noundef %2, i32 noundef 1) #2
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %16, i32 noundef 13, %struct.set_family* noundef %17, %struct.cost_struct* noundef nonnull %4) #2
  %18 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %4, i64 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %5, i64 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %27

24:                                               ; preds = %15
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* noundef nonnull %4, %struct.cost_struct* noundef nonnull %5) #2
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* @force_irredundant, align 4
  %.not = icmp eq i32 %26, 0
  br i1 %.not, label %.loopexit, label %6, !llvm.loop !4

.loopexit:                                        ; preds = %25
  br label %27

27:                                               ; preds = %.loopexit, %23, %14
  %.1 = phi %struct.set_family* [ %8, %14 ], [ %17, %23 ], [ %17, %.loopexit ]
  ret %struct.set_family* %.1
}

declare dso_local void @cover_cost(...) #1

declare dso_local i64 @util_cpu_time(...) #1

declare dso_local void @totals(...) #1

declare dso_local void @copy_cost(...) #1

declare dso_local %struct.set_family* @expand(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @mv_reduce(%struct.set_family* noundef %0, %struct.set_family* nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %196, %2
  %.02 = phi i32 [ 0, %2 ], [ %197, %196 ]
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %5 = icmp slt i32 %.02, %4
  br i1 %5, label %6, label %198

6:                                                ; preds = %3
  %7 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 16), align 8
  %8 = zext i32 %.02 to i64
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %.not10 = icmp eq i32 %10, 0
  br i1 %.not10, label %195, label %11

11:                                               ; preds = %6
  %12 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3), align 8
  %13 = zext i32 %.02 to i64
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  br label %16

16:                                               ; preds = %192, %11
  %.01 = phi i32 [ %15, %11 ], [ %193, %192 ]
  %17 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 4), align 8
  %18 = zext i32 %.02 to i64
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %.not11 = icmp sgt i32 %.01, %20
  br i1 %.not11, label %194, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 3
  %26 = call i8* @malloc(i64 noundef %25) #2
  %27 = bitcast i8* %26 to i32**
  %28 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %31 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %29, i32 noundef %30) #2
  %32 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %33, i64 %39
  br label %41

41:                                               ; preds = %81, %21
  %.03 = phi i32* [ %33, %21 ], [ %85, %81 ]
  %42 = icmp ult i32* %.03, %40
  br i1 %42, label %43, label %86

43:                                               ; preds = %41
  %44 = ashr i32 %.01, 5
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %.03, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %.01, 31
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %.not16 = icmp eq i32 %51, 0
  br i1 %.not16, label %80, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i64 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %27, i64 %55
  store i32* %.03, i32** %56, align 8
  %57 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i64 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i64 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i64 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = mul nsw i32 %60, %62
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %58, i64 %65
  %67 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %68 = zext i32 %.02 to i64
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %66, i32* noundef %.03, i32* noundef %70) #2
  %72 = and i32 %.01, 31
  %73 = shl i32 1, %72
  %74 = ashr i32 %.01, 5
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %66, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %52, %43
  br label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %.03, i64 %84
  br label %41, !llvm.loop !6

86:                                               ; preds = %41
  %87 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %90 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %88, i32 noundef %89) #2
  %91 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %94, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %92, i64 %98
  br label %100

100:                                              ; preds = %136, %86
  %.14 = phi i32* [ %92, %86 ], [ %140, %136 ]
  %101 = icmp ult i32* %.14, %99
  br i1 %101, label %102, label %141

102:                                              ; preds = %100
  %103 = ashr i32 %.01, 5
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %.14, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %.01, 31
  %109 = shl i32 1, %108
  %110 = and i32 %107, %109
  %.not15 = icmp eq i32 %110, 0
  br i1 %.not15, label %135, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i64 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i64 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i64 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = mul nsw i32 %115, %117
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %113, i64 %120
  %122 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %123 = zext i32 %.02 to i64
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %121, i32* noundef %.14, i32* noundef %125) #2
  %127 = and i32 %.01, 31
  %128 = shl i32 1, %127
  %129 = ashr i32 %.01, 5
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %121, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %111, %102
  br label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %.14, i64 %139
  br label %100, !llvm.loop !7

141:                                              ; preds = %100
  call void (%struct.set_family*, %struct.set_family*, ...) bitcast (void (...)* @mark_irredundant to void (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %31, %struct.set_family* noundef %90) #2
  %142 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i64 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i64 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i64 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %145, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %143, i64 %149
  br label %151

151:                                              ; preds = %183, %141
  %.06 = phi i32 [ 0, %141 ], [ %184, %183 ]
  %.05 = phi i32* [ %143, %141 ], [ %188, %183 ]
  %152 = icmp ult i32* %.05, %150
  br i1 %152, label %153, label %189

153:                                              ; preds = %151
  %154 = load i32, i32* %.05, align 4
  %155 = and i32 %154, 8192
  %.not13 = icmp eq i32 %155, 0
  br i1 %.not13, label %156, label %182

156:                                              ; preds = %153
  %157 = zext i32 %.06 to i64
  %158 = getelementptr inbounds i32*, i32** %27, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %161 = add nsw i32 %160, -1
  %162 = icmp eq i32 %.02, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %156
  %164 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %165 = zext i32 %.02 to i64
  %166 = getelementptr inbounds i32*, i32** %164, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* noundef %167, i32* noundef %159) #2
  %.not14 = icmp eq i32 %168, 0
  br i1 %.not14, label %169, label %179

169:                                              ; preds = %163, %156
  %170 = and i32 %.01, 31
  %171 = shl i32 1, %170
  %172 = xor i32 %171, -1
  %173 = ashr i32 %.01, 5
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %159, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %172
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %169, %163
  %180 = load i32, i32* %159, align 4
  %181 = and i32 %180, -32769
  store i32 %181, i32* %159, align 4
  br label %182

182:                                              ; preds = %179, %153
  br label %183

183:                                              ; preds = %182
  %184 = add nuw nsw i32 %.06, 1
  %185 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i64 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %.05, i64 %187
  br label %151, !llvm.loop !8

189:                                              ; preds = %151
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %31) #2
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %90) #2
  %.not12 = icmp eq i8* %26, null
  br i1 %.not12, label %191, label %190

190:                                              ; preds = %189
  call void @free(i8* noundef %26)
  br label %191

191:                                              ; preds = %190, %189
  br label %192

192:                                              ; preds = %191
  %193 = add nsw i32 %.01, 1
  br label %16, !llvm.loop !9

194:                                              ; preds = %16
  br label %195

195:                                              ; preds = %194, %6
  br label %196

196:                                              ; preds = %195
  %197 = add nuw nsw i32 %.02, 1
  br label %3, !llvm.loop !10

198:                                              ; preds = %3
  %199 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_active to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %0) #2
  br label %200

200:                                              ; preds = %244, %198
  %.1 = phi i32 [ 0, %198 ], [ %245, %244 ]
  %201 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %202 = icmp slt i32 %.1, %201
  br i1 %202, label %203, label %246

203:                                              ; preds = %200
  %204 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 16), align 8
  %205 = zext i32 %.1 to i64
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %.not7 = icmp eq i32 %207, 0
  br i1 %.not7, label %243, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = mul nsw i32 %212, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %210, i64 %216
  br label %218

218:                                              ; preds = %237, %208
  %.2 = phi i32* [ %210, %208 ], [ %241, %237 ]
  %219 = icmp ult i32* %.2, %217
  br i1 %219, label %220, label %242

220:                                              ; preds = %218
  %221 = load i32, i32* %.2, align 4
  %222 = and i32 %221, 8192
  %.not8 = icmp eq i32 %222, 0
  br i1 %.not8, label %236, label %223

223:                                              ; preds = %220
  %224 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %225 = zext i32 %.1 to i64
  %226 = getelementptr inbounds i32*, i32** %224, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %.2, i32* noundef %227) #2
  %.not9 = icmp eq i32 %228, 0
  br i1 %.not9, label %235, label %229

229:                                              ; preds = %223
  %230 = load i32, i32* %.2, align 4
  %231 = and i32 %230, -8193
  store i32 %231, i32* %.2, align 4
  %232 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %229, %223
  br label %236

236:                                              ; preds = %235, %220
  br label %237

237:                                              ; preds = %236
  %238 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %.2, i64 %240
  br label %218, !llvm.loop !11

242:                                              ; preds = %218
  br label %243

243:                                              ; preds = %242, %203
  br label %244

244:                                              ; preds = %243
  %245 = add nuw nsw i32 %.1, 1
  br label %200, !llvm.loop !12

246:                                              ; preds = %200
  %247 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 4
  %250 = load i32, i32* %249, align 8
  %.not = icmp eq i32 %248, %250
  br i1 %.not, label %253, label %251

251:                                              ; preds = %246
  %252 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %0) #2
  br label %253

253:                                              ; preds = %251, %246
  %.0 = phi %struct.set_family* [ %252, %251 ], [ %0, %246 ]
  ret %struct.set_family* %.0
}

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local i32* @set_diff(...) #1

declare dso_local void @mark_irredundant(...) #1

declare dso_local i32 @setp_implies(...) #1

declare dso_local void @sf_free(...) #1

declare dso_local void @free(i8* noundef) #1

declare dso_local %struct.set_family* @sf_active(...) #1

declare dso_local i32 @setp_disjoint(...) #1

declare dso_local %struct.set_family* @sf_inactive(...) #1

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
