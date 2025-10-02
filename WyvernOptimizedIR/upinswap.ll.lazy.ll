; ModuleID = './upinswap.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/upinswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@termarray = external dso_local global %struct.termnets**, align 8
@netarray = external dso_local global %struct.dimbox**, align 8
@funccost = external dso_local global i32, align 4
@T = external dso_local global double, align 8
@randVar = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @upinswap(%struct.cellbox* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 21, i64 %12
  %14 = load %struct.tilebox*, %struct.tilebox** %13, align 8
  %15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 20
  %16 = load %struct.uncombox*, %struct.uncombox** %15, align 8
  %17 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 18
  %18 = load %struct.locbox*, %struct.locbox** %17, align 8
  %19 = sext i32 %4 to i64
  %20 = getelementptr inbounds %struct.locbox, %struct.locbox* %18, i64 %19, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %7
  %23 = sext i32 %4 to i64
  %24 = getelementptr inbounds %struct.locbox, %struct.locbox* %18, i64 %23, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %9
  %27 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %28, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.termnets*, %struct.termnets** %27, i64 %31
  %33 = load %struct.termnets*, %struct.termnets** %32, align 8
  %34 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %35 = getelementptr inbounds %struct.termnets, %struct.termnets* %33, i64 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %34, i64 %37
  %39 = load %struct.dimbox*, %struct.dimbox** %38, align 8
  %40 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %39, i64 0, i32 7
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.termnets, %struct.termnets* %33, i64 0, i32 1
  %42 = load %struct.netbox*, %struct.netbox** %41, align 8
  %43 = getelementptr inbounds %struct.netbox, %struct.netbox* %42, i64 0, i32 6
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.termnets, %struct.termnets* %33, i64 0, i32 1
  %45 = load %struct.netbox*, %struct.netbox** %44, align 8
  %46 = getelementptr inbounds %struct.netbox, %struct.netbox* %45, i64 0, i32 3
  store i32 %22, i32* %46, align 8
  %47 = getelementptr inbounds %struct.termnets, %struct.termnets* %33, i64 0, i32 1
  %48 = load %struct.netbox*, %struct.netbox** %47, align 8
  %49 = getelementptr inbounds %struct.netbox, %struct.netbox* %48, i64 0, i32 4
  store i32 %26, i32* %49, align 4
  %50 = sext i32 %3 to i64
  %51 = getelementptr inbounds %struct.locbox, %struct.locbox* %18, i64 %50, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %7
  %54 = sext i32 %3 to i64
  %55 = getelementptr inbounds %struct.locbox, %struct.locbox* %18, i64 %54, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %9
  %58 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %59 = sext i32 %2 to i64
  %60 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %59, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.termnets*, %struct.termnets** %58, i64 %62
  %64 = load %struct.termnets*, %struct.termnets** %63, align 8
  %65 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %66 = getelementptr inbounds %struct.termnets, %struct.termnets* %64, i64 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %65, i64 %68
  %70 = load %struct.dimbox*, %struct.dimbox** %69, align 8
  %71 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %70, i64 0, i32 7
  store i32 1, i32* %71, align 8
  %72 = getelementptr inbounds %struct.termnets, %struct.termnets* %64, i64 0, i32 1
  %73 = load %struct.netbox*, %struct.netbox** %72, align 8
  %74 = getelementptr inbounds %struct.netbox, %struct.netbox* %73, i64 0, i32 6
  store i32 1, i32* %74, align 4
  %75 = getelementptr inbounds %struct.termnets, %struct.termnets* %64, i64 0, i32 1
  %76 = load %struct.netbox*, %struct.netbox** %75, align 8
  %77 = getelementptr inbounds %struct.netbox, %struct.netbox* %76, i64 0, i32 3
  store i32 %53, i32* %77, align 8
  %78 = getelementptr inbounds %struct.termnets, %struct.termnets* %64, i64 0, i32 1
  %79 = load %struct.netbox*, %struct.netbox** %78, align 8
  %80 = getelementptr inbounds %struct.netbox, %struct.netbox* %79, i64 0, i32 4
  store i32 %57, i32* %80, align 4
  %81 = load i32, i32* @funccost, align 4
  %82 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %83 = sext i32 %1 to i64
  %84 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %83, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.termnets*, %struct.termnets** %82, i64 %86
  %88 = load %struct.termnets*, %struct.termnets** %87, align 8
  %89 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %90 = getelementptr inbounds %struct.termnets, %struct.termnets* %88, i64 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %89, i64 %92
  %94 = load %struct.dimbox*, %struct.dimbox** %93, align 8
  %95 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 7
  %96 = load i32, i32* %95, align 8
  %.not = icmp eq i32 %96, 0
  br i1 %.not, label %236, label %97

97:                                               ; preds = %5
  %98 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 1
  %99 = load i32, i32* %98, align 8
  %.not16 = icmp eq i32 %99, 1
  br i1 %.not16, label %236, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 7
  store i32 0, i32* %101, align 8
  %102 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 0
  br label %103

103:                                              ; preds = %137, %100
  %.06.in = phi %struct.netbox** [ %102, %100 ], [ %138, %137 ]
  %.06 = load %struct.netbox*, %struct.netbox** %.06.in, align 8
  %104 = icmp eq %struct.netbox* %.06, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %103
  br label %139

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 9
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %137

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 5
  store i32 %117, i32* %118, align 8
  %119 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 10
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 8
  store i32 %121, i32* %123, align 4
  %124 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 6
  store i32 0, i32* %124, align 4
  br label %134

125:                                              ; preds = %111
  %126 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 5
  store i32 %127, i32* %128, align 8
  %129 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 10
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 8
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %125, %115
  %135 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 0
  %136 = load %struct.netbox*, %struct.netbox** %135, align 8
  br label %139

137:                                              ; preds = %110
  %138 = getelementptr inbounds %struct.netbox, %struct.netbox* %.06, i64 0, i32 0
  br label %103

139:                                              ; preds = %134, %105
  %.17 = phi %struct.netbox* [ %.06, %105 ], [ %136, %134 ]
  br label %140

140:                                              ; preds = %188, %139
  %.2 = phi %struct.netbox* [ %.17, %139 ], [ %190, %188 ]
  %.not17 = icmp eq %struct.netbox* %.2, null
  br i1 %.not17, label %191, label %141

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 9
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %188

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 6
  store i32 0, i32* %155, align 4
  br label %161

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 2
  %160 = load i32, i32* %159, align 4
  br label %161

161:                                              ; preds = %156, %150
  %.02 = phi i32 [ %152, %150 ], [ %158, %156 ]
  %.01 = phi i32 [ %154, %150 ], [ %160, %156 ]
  %162 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %.02, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 3
  store i32 %.02, i32* %166, align 8
  br label %174

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %.02, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 5
  store i32 %.02, i32* %172, align 8
  br label %173

173:                                              ; preds = %171, %167
  br label %174

174:                                              ; preds = %173, %165
  %175 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 8
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %.01, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 8
  store i32 %.01, i32* %179, align 4
  br label %187

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 10
  %182 = load i32, i32* %181, align 4
  %183 = icmp sgt i32 %.01, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 10
  store i32 %.01, i32* %185, align 4
  br label %186

186:                                              ; preds = %184, %180
  br label %187

187:                                              ; preds = %186, %178
  br label %188

188:                                              ; preds = %187, %145
  %189 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 0
  %190 = load %struct.netbox*, %struct.netbox** %189, align 8
  br label %140, !llvm.loop !4

191:                                              ; preds = %140
  %192 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 11
  %193 = load double, double* %192, align 8
  %194 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %195, %197
  %199 = sitofp i32 %198 to double
  %200 = fmul double %193, %199
  %201 = fptosi double %200 to i32
  %202 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 11
  %203 = load double, double* %202, align 8
  %204 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %205, %207
  %209 = sitofp i32 %208 to double
  %210 = fmul double %203, %209
  %211 = fptosi double %210 to i32
  %212 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 12
  %213 = load double, double* %212, align 8
  %214 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 10
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 8
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %215, %217
  %219 = sitofp i32 %218 to double
  %220 = fmul double %213, %219
  %221 = fptosi double %220 to i32
  %222 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 12
  %223 = load double, double* %222, align 8
  %224 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 9
  %225 = load i32, i32* %224, align 8
  %226 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %94, i64 0, i32 6
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %225, %227
  %229 = sitofp i32 %228 to double
  %230 = fmul double %223, %229
  %231 = fptosi double %230 to i32
  %232 = add i32 %201, %221
  %233 = add i32 %211, %231
  %234 = sub i32 %232, %233
  %235 = add nsw i32 %81, %234
  br label %236

236:                                              ; preds = %191, %97, %5
  %.04 = phi i32 [ %235, %191 ], [ %81, %97 ], [ %81, %5 ]
  %237 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %238 = sext i32 %2 to i64
  %239 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %238, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.termnets*, %struct.termnets** %237, i64 %241
  %243 = load %struct.termnets*, %struct.termnets** %242, align 8
  %244 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %245 = getelementptr inbounds %struct.termnets, %struct.termnets* %243, i64 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %244, i64 %247
  %249 = load %struct.dimbox*, %struct.dimbox** %248, align 8
  %250 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 7
  %251 = load i32, i32* %250, align 8
  %.not12 = icmp eq i32 %251, 0
  br i1 %.not12, label %391, label %252

252:                                              ; preds = %236
  %253 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 1
  %254 = load i32, i32* %253, align 8
  %.not14 = icmp eq i32 %254, 1
  br i1 %.not14, label %391, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 7
  store i32 0, i32* %256, align 8
  %257 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 0
  br label %258

258:                                              ; preds = %292, %255
  %.3.in = phi %struct.netbox** [ %257, %255 ], [ %293, %292 ]
  %.3 = load %struct.netbox*, %struct.netbox** %.3.in, align 8
  %259 = icmp eq %struct.netbox* %.3, null
  br i1 %259, label %260, label %261

260:                                              ; preds = %258
  br label %294

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 9
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %292

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 6
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %280

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 5
  store i32 %272, i32* %273, align 8
  %274 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 3
  store i32 %272, i32* %274, align 8
  %275 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 10
  store i32 %276, i32* %277, align 4
  %278 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 8
  store i32 %276, i32* %278, align 4
  %279 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 6
  store i32 0, i32* %279, align 4
  br label %289

280:                                              ; preds = %266
  %281 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 5
  store i32 %282, i32* %283, align 8
  %284 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 3
  store i32 %282, i32* %284, align 8
  %285 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 10
  store i32 %286, i32* %287, align 4
  %288 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 8
  store i32 %286, i32* %288, align 4
  br label %289

289:                                              ; preds = %280, %270
  %290 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 0
  %291 = load %struct.netbox*, %struct.netbox** %290, align 8
  br label %294

292:                                              ; preds = %265
  %293 = getelementptr inbounds %struct.netbox, %struct.netbox* %.3, i64 0, i32 0
  br label %258

294:                                              ; preds = %289, %260
  %.4 = phi %struct.netbox* [ %.3, %260 ], [ %291, %289 ]
  br label %295

295:                                              ; preds = %343, %294
  %.5 = phi %struct.netbox* [ %.4, %294 ], [ %345, %343 ]
  %.not15 = icmp eq %struct.netbox* %.5, null
  br i1 %.not15, label %346, label %296

296:                                              ; preds = %295
  %297 = getelementptr inbounds %struct.netbox, %struct.netbox* %.5, i64 0, i32 9
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 %298, 1
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  br label %343

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.netbox, %struct.netbox* %.5, i64 0, i32 6
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %305, label %311

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.netbox, %struct.netbox* %.5, i64 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = getelementptr inbounds %struct.netbox, %struct.netbox* %.5, i64 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds %struct.netbox, %struct.netbox* %.5, i64 0, i32 6
  store i32 0, i32* %310, align 4
  br label %316

311:                                              ; preds = %301
  %312 = getelementptr inbounds %struct.netbox, %struct.netbox* %.5, i64 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = getelementptr inbounds %struct.netbox, %struct.netbox* %.5, i64 0, i32 2
  %315 = load i32, i32* %314, align 4
  br label %316

316:                                              ; preds = %311, %305
  %.13 = phi i32 [ %307, %305 ], [ %313, %311 ]
  %.1 = phi i32 [ %309, %305 ], [ %315, %311 ]
  %317 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = icmp slt i32 %.13, %318
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 3
  store i32 %.13, i32* %321, align 8
  br label %329

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 5
  %324 = load i32, i32* %323, align 8
  %325 = icmp sgt i32 %.13, %324
  br i1 %325, label %326, label %328

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 5
  store i32 %.13, i32* %327, align 8
  br label %328

328:                                              ; preds = %326, %322
  br label %329

329:                                              ; preds = %328, %320
  %330 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 8
  %331 = load i32, i32* %330, align 4
  %332 = icmp slt i32 %.1, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 8
  store i32 %.1, i32* %334, align 4
  br label %342

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 10
  %337 = load i32, i32* %336, align 4
  %338 = icmp sgt i32 %.1, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %335
  %340 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 10
  store i32 %.1, i32* %340, align 4
  br label %341

341:                                              ; preds = %339, %335
  br label %342

342:                                              ; preds = %341, %333
  br label %343

343:                                              ; preds = %342, %300
  %344 = getelementptr inbounds %struct.netbox, %struct.netbox* %.5, i64 0, i32 0
  %345 = load %struct.netbox*, %struct.netbox** %344, align 8
  br label %295, !llvm.loop !6

346:                                              ; preds = %295
  %347 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 11
  %348 = load double, double* %347, align 8
  %349 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 5
  %350 = load i32, i32* %349, align 8
  %351 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = sub nsw i32 %350, %352
  %354 = sitofp i32 %353 to double
  %355 = fmul double %348, %354
  %356 = fptosi double %355 to i32
  %357 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 11
  %358 = load double, double* %357, align 8
  %359 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 4
  %360 = load i32, i32* %359, align 4
  %361 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = sub nsw i32 %360, %362
  %364 = sitofp i32 %363 to double
  %365 = fmul double %358, %364
  %366 = fptosi double %365 to i32
  %367 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 12
  %368 = load double, double* %367, align 8
  %369 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 10
  %370 = load i32, i32* %369, align 4
  %371 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 8
  %372 = load i32, i32* %371, align 4
  %373 = sub nsw i32 %370, %372
  %374 = sitofp i32 %373 to double
  %375 = fmul double %368, %374
  %376 = fptosi double %375 to i32
  %377 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 12
  %378 = load double, double* %377, align 8
  %379 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 9
  %380 = load i32, i32* %379, align 8
  %381 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %249, i64 0, i32 6
  %382 = load i32, i32* %381, align 4
  %383 = sub nsw i32 %380, %382
  %384 = sitofp i32 %383 to double
  %385 = fmul double %378, %384
  %386 = fptosi double %385 to i32
  %387 = add i32 %356, %376
  %388 = add i32 %366, %386
  %389 = sub i32 %387, %388
  %390 = add nsw i32 %.04, %389
  br label %391

391:                                              ; preds = %346, %252, %236
  %.15 = phi i32 [ %390, %346 ], [ %.04, %252 ], [ %.04, %236 ]
  %392 = load i32, i32* @funccost, align 4
  %.not13 = icmp sgt i32 %.15, %392
  br i1 %.not13, label %393, label %407

393:                                              ; preds = %391
  %394 = load i32, i32* @funccost, align 4
  %395 = sub nsw i32 %394, %.15
  %396 = sitofp i32 %395 to double
  %397 = load double, double* @T, align 8
  %398 = fdiv double %396, %397
  %399 = call double @exp(double noundef %398) #2
  %400 = load i32, i32* @randVar, align 4
  %401 = mul nsw i32 %400, 1103515245
  %402 = add nsw i32 %401, 12345
  store i32 %402, i32* @randVar, align 4
  %403 = and i32 %402, 2147483647
  %404 = sitofp i32 %403 to double
  %405 = fdiv double %404, 0x41DFFFFFFFC00000
  %406 = fcmp ogt double %399, %405
  br i1 %406, label %407, label %508

407:                                              ; preds = %393, %391
  %408 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %409 = sext i32 %1 to i64
  %410 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %409, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.termnets*, %struct.termnets** %408, i64 %412
  %414 = load %struct.termnets*, %struct.termnets** %413, align 8
  %415 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %416 = getelementptr inbounds %struct.termnets, %struct.termnets* %414, i64 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %415, i64 %418
  %420 = load %struct.dimbox*, %struct.dimbox** %419, align 8
  %421 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %420, i64 0, i32 3
  %422 = load i32, i32* %421, align 8
  %423 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %420, i64 0, i32 2
  store i32 %422, i32* %423, align 4
  %424 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %420, i64 0, i32 5
  %425 = load i32, i32* %424, align 8
  %426 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %420, i64 0, i32 4
  store i32 %425, i32* %426, align 4
  %427 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %420, i64 0, i32 8
  %428 = load i32, i32* %427, align 4
  %429 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %420, i64 0, i32 6
  store i32 %428, i32* %429, align 4
  %430 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %420, i64 0, i32 10
  %431 = load i32, i32* %430, align 4
  %432 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %420, i64 0, i32 9
  store i32 %431, i32* %432, align 8
  %433 = getelementptr inbounds %struct.termnets, %struct.termnets* %414, i64 0, i32 1
  %434 = load %struct.netbox*, %struct.netbox** %433, align 8
  %435 = getelementptr inbounds %struct.netbox, %struct.netbox* %434, i64 0, i32 3
  %436 = load i32, i32* %435, align 8
  %437 = getelementptr inbounds %struct.netbox, %struct.netbox* %434, i64 0, i32 1
  store i32 %436, i32* %437, align 8
  %438 = getelementptr inbounds %struct.termnets, %struct.termnets* %414, i64 0, i32 1
  %439 = load %struct.netbox*, %struct.netbox** %438, align 8
  %440 = getelementptr inbounds %struct.netbox, %struct.netbox* %439, i64 0, i32 4
  %441 = load i32, i32* %440, align 4
  %442 = getelementptr inbounds %struct.netbox, %struct.netbox* %439, i64 0, i32 2
  store i32 %441, i32* %442, align 4
  %443 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %444 = sext i32 %2 to i64
  %445 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %444, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.termnets*, %struct.termnets** %443, i64 %447
  %449 = load %struct.termnets*, %struct.termnets** %448, align 8
  %450 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %451 = getelementptr inbounds %struct.termnets, %struct.termnets* %449, i64 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %450, i64 %453
  %455 = load %struct.dimbox*, %struct.dimbox** %454, align 8
  %456 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %455, i64 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %455, i64 0, i32 2
  store i32 %457, i32* %458, align 4
  %459 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %455, i64 0, i32 5
  %460 = load i32, i32* %459, align 8
  %461 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %455, i64 0, i32 4
  store i32 %460, i32* %461, align 4
  %462 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %455, i64 0, i32 8
  %463 = load i32, i32* %462, align 4
  %464 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %455, i64 0, i32 6
  store i32 %463, i32* %464, align 4
  %465 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %455, i64 0, i32 10
  %466 = load i32, i32* %465, align 4
  %467 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %455, i64 0, i32 9
  store i32 %466, i32* %467, align 8
  %468 = getelementptr inbounds %struct.termnets, %struct.termnets* %449, i64 0, i32 1
  %469 = load %struct.netbox*, %struct.netbox** %468, align 8
  %470 = getelementptr inbounds %struct.netbox, %struct.netbox* %469, i64 0, i32 3
  %471 = load i32, i32* %470, align 8
  %472 = getelementptr inbounds %struct.netbox, %struct.netbox* %469, i64 0, i32 1
  store i32 %471, i32* %472, align 8
  %473 = getelementptr inbounds %struct.termnets, %struct.termnets* %449, i64 0, i32 1
  %474 = load %struct.netbox*, %struct.netbox** %473, align 8
  %475 = getelementptr inbounds %struct.netbox, %struct.netbox* %474, i64 0, i32 4
  %476 = load i32, i32* %475, align 4
  %477 = getelementptr inbounds %struct.netbox, %struct.netbox* %474, i64 0, i32 2
  store i32 %476, i32* %477, align 4
  %478 = sext i32 %1 to i64
  %479 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %478, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %2 to i64
  %482 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %481, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %1 to i64
  %485 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %484, i32 0
  store i32 %483, i32* %485, align 4
  %486 = sext i32 %2 to i64
  %487 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %486, i32 0
  store i32 %480, i32* %487, align 4
  %488 = sext i32 %1 to i64
  %489 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %488, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = sext i32 %2 to i64
  %492 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %491, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = sext i32 %1 to i64
  %495 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %494, i32 1
  store i32 %493, i32* %495, align 4
  %496 = sext i32 %2 to i64
  %497 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %496, i32 1
  store i32 %490, i32* %497, align 4
  %498 = sext i32 %1 to i64
  %499 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %498, i32 7
  %500 = load i32, i32* %499, align 4
  %501 = sext i32 %2 to i64
  %502 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %501, i32 7
  %503 = load i32, i32* %502, align 4
  %504 = sext i32 %1 to i64
  %505 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %504, i32 7
  store i32 %503, i32* %505, align 4
  %506 = sext i32 %2 to i64
  %507 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %16, i64 %506, i32 7
  store i32 %500, i32* %507, align 4
  store i32 %.15, i32* @funccost, align 4
  br label %509

508:                                              ; preds = %393
  br label %509

509:                                              ; preds = %508, %407
  %.0 = phi i32 [ 1, %407 ], [ 0, %508 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
