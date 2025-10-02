; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/upinswap.c'
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
define dso_local i32 @upinswap(%struct.cellbox* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cellbox*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dimbox*, align 8
  %13 = alloca %struct.netbox*, align 8
  %14 = alloca %struct.termnets*, align 8
  %15 = alloca %struct.tilebox*, align 8
  %16 = alloca %struct.uncombox*, align 8
  %17 = alloca %struct.locbox*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.cellbox* %0, %struct.cellbox** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %25 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %22, align 4
  %27 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %28 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %23, align 4
  %30 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %30, i32 0, i32 21
  %32 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %31, i64 0, i64 %35
  %37 = load %struct.tilebox*, %struct.tilebox** %36, align 8
  store %struct.tilebox* %37, %struct.tilebox** %15, align 8
  %38 = load %struct.cellbox*, %struct.cellbox** %7, align 8
  %39 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %38, i32 0, i32 20
  %40 = load %struct.uncombox*, %struct.uncombox** %39, align 8
  store %struct.uncombox* %40, %struct.uncombox** %16, align 8
  %41 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %42 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %41, i32 0, i32 18
  %43 = load %struct.locbox*, %struct.locbox** %42, align 8
  store %struct.locbox* %43, %struct.locbox** %17, align 8
  %44 = load %struct.locbox*, %struct.locbox** %17, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.locbox, %struct.locbox* %44, i64 %46
  %48 = getelementptr inbounds %struct.locbox, %struct.locbox* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %22, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %20, align 4
  %52 = load %struct.locbox*, %struct.locbox** %17, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.locbox, %struct.locbox* %52, i64 %54
  %56 = getelementptr inbounds %struct.locbox, %struct.locbox* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %23, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %21, align 4
  %60 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %61 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %61, i64 %63
  %65 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.termnets*, %struct.termnets** %60, i64 %67
  %69 = load %struct.termnets*, %struct.termnets** %68, align 8
  store %struct.termnets* %69, %struct.termnets** %14, align 8
  %70 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %71 = load %struct.termnets*, %struct.termnets** %14, align 8
  %72 = getelementptr inbounds %struct.termnets, %struct.termnets* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %70, i64 %74
  %76 = load %struct.dimbox*, %struct.dimbox** %75, align 8
  %77 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %76, i32 0, i32 7
  store i32 1, i32* %77, align 8
  %78 = load %struct.termnets*, %struct.termnets** %14, align 8
  %79 = getelementptr inbounds %struct.termnets, %struct.termnets* %78, i32 0, i32 1
  %80 = load %struct.netbox*, %struct.netbox** %79, align 8
  %81 = getelementptr inbounds %struct.netbox, %struct.netbox* %80, i32 0, i32 6
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load %struct.termnets*, %struct.termnets** %14, align 8
  %84 = getelementptr inbounds %struct.termnets, %struct.termnets* %83, i32 0, i32 1
  %85 = load %struct.netbox*, %struct.netbox** %84, align 8
  %86 = getelementptr inbounds %struct.netbox, %struct.netbox* %85, i32 0, i32 3
  store i32 %82, i32* %86, align 8
  %87 = load i32, i32* %21, align 4
  %88 = load %struct.termnets*, %struct.termnets** %14, align 8
  %89 = getelementptr inbounds %struct.termnets, %struct.termnets* %88, i32 0, i32 1
  %90 = load %struct.netbox*, %struct.netbox** %89, align 8
  %91 = getelementptr inbounds %struct.netbox, %struct.netbox* %90, i32 0, i32 4
  store i32 %87, i32* %91, align 4
  %92 = load %struct.locbox*, %struct.locbox** %17, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.locbox, %struct.locbox* %92, i64 %94
  %96 = getelementptr inbounds %struct.locbox, %struct.locbox* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %22, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %20, align 4
  %100 = load %struct.locbox*, %struct.locbox** %17, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.locbox, %struct.locbox* %100, i64 %102
  %104 = getelementptr inbounds %struct.locbox, %struct.locbox* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %23, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %21, align 4
  %108 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %109 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %109, i64 %111
  %113 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.termnets*, %struct.termnets** %108, i64 %115
  %117 = load %struct.termnets*, %struct.termnets** %116, align 8
  store %struct.termnets* %117, %struct.termnets** %14, align 8
  %118 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %119 = load %struct.termnets*, %struct.termnets** %14, align 8
  %120 = getelementptr inbounds %struct.termnets, %struct.termnets* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %118, i64 %122
  %124 = load %struct.dimbox*, %struct.dimbox** %123, align 8
  %125 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %124, i32 0, i32 7
  store i32 1, i32* %125, align 8
  %126 = load %struct.termnets*, %struct.termnets** %14, align 8
  %127 = getelementptr inbounds %struct.termnets, %struct.termnets* %126, i32 0, i32 1
  %128 = load %struct.netbox*, %struct.netbox** %127, align 8
  %129 = getelementptr inbounds %struct.netbox, %struct.netbox* %128, i32 0, i32 6
  store i32 1, i32* %129, align 4
  %130 = load i32, i32* %20, align 4
  %131 = load %struct.termnets*, %struct.termnets** %14, align 8
  %132 = getelementptr inbounds %struct.termnets, %struct.termnets* %131, i32 0, i32 1
  %133 = load %struct.netbox*, %struct.netbox** %132, align 8
  %134 = getelementptr inbounds %struct.netbox, %struct.netbox* %133, i32 0, i32 3
  store i32 %130, i32* %134, align 8
  %135 = load i32, i32* %21, align 4
  %136 = load %struct.termnets*, %struct.termnets** %14, align 8
  %137 = getelementptr inbounds %struct.termnets, %struct.termnets* %136, i32 0, i32 1
  %138 = load %struct.netbox*, %struct.netbox** %137, align 8
  %139 = getelementptr inbounds %struct.netbox, %struct.netbox* %138, i32 0, i32 4
  store i32 %135, i32* %139, align 4
  %140 = load i32, i32* @funccost, align 4
  store i32 %140, i32* %18, align 4
  %141 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %142 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %142, i64 %144
  %146 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.termnets*, %struct.termnets** %141, i64 %148
  %150 = load %struct.termnets*, %struct.termnets** %149, align 8
  store %struct.termnets* %150, %struct.termnets** %14, align 8
  %151 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %152 = load %struct.termnets*, %struct.termnets** %14, align 8
  %153 = getelementptr inbounds %struct.termnets, %struct.termnets* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %151, i64 %155
  %157 = load %struct.dimbox*, %struct.dimbox** %156, align 8
  store %struct.dimbox* %157, %struct.dimbox** %12, align 8
  %158 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %159 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %364

162:                                              ; preds = %5
  %163 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %164 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %167, label %364

167:                                              ; preds = %162
  %168 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %169 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %168, i32 0, i32 7
  store i32 0, i32* %169, align 8
  %170 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %171 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %170, i32 0, i32 0
  %172 = load %struct.netbox*, %struct.netbox** %171, align 8
  store %struct.netbox* %172, %struct.netbox** %13, align 8
  br label %173

173:                                              ; preds = %224, %167
  %174 = load %struct.netbox*, %struct.netbox** %13, align 8
  %175 = icmp eq %struct.netbox* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %228

177:                                              ; preds = %173
  %178 = load %struct.netbox*, %struct.netbox** %13, align 8
  %179 = getelementptr inbounds %struct.netbox, %struct.netbox* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %224

183:                                              ; preds = %177
  %184 = load %struct.netbox*, %struct.netbox** %13, align 8
  %185 = getelementptr inbounds %struct.netbox, %struct.netbox* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %205

188:                                              ; preds = %183
  %189 = load %struct.netbox*, %struct.netbox** %13, align 8
  %190 = getelementptr inbounds %struct.netbox, %struct.netbox* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %193 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 8
  %194 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %195 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %194, i32 0, i32 3
  store i32 %191, i32* %195, align 8
  %196 = load %struct.netbox*, %struct.netbox** %13, align 8
  %197 = getelementptr inbounds %struct.netbox, %struct.netbox* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %200 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %199, i32 0, i32 10
  store i32 %198, i32* %200, align 4
  %201 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %202 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %201, i32 0, i32 8
  store i32 %198, i32* %202, align 4
  %203 = load %struct.netbox*, %struct.netbox** %13, align 8
  %204 = getelementptr inbounds %struct.netbox, %struct.netbox* %203, i32 0, i32 6
  store i32 0, i32* %204, align 4
  br label %220

205:                                              ; preds = %183
  %206 = load %struct.netbox*, %struct.netbox** %13, align 8
  %207 = getelementptr inbounds %struct.netbox, %struct.netbox* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %210 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 8
  %211 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %212 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %211, i32 0, i32 3
  store i32 %208, i32* %212, align 8
  %213 = load %struct.netbox*, %struct.netbox** %13, align 8
  %214 = getelementptr inbounds %struct.netbox, %struct.netbox* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %217 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %216, i32 0, i32 10
  store i32 %215, i32* %217, align 4
  %218 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %219 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %218, i32 0, i32 8
  store i32 %215, i32* %219, align 4
  br label %220

220:                                              ; preds = %205, %188
  %221 = load %struct.netbox*, %struct.netbox** %13, align 8
  %222 = getelementptr inbounds %struct.netbox, %struct.netbox* %221, i32 0, i32 0
  %223 = load %struct.netbox*, %struct.netbox** %222, align 8
  store %struct.netbox* %223, %struct.netbox** %13, align 8
  br label %228

224:                                              ; preds = %182
  %225 = load %struct.netbox*, %struct.netbox** %13, align 8
  %226 = getelementptr inbounds %struct.netbox, %struct.netbox* %225, i32 0, i32 0
  %227 = load %struct.netbox*, %struct.netbox** %226, align 8
  store %struct.netbox* %227, %struct.netbox** %13, align 8
  br label %173

228:                                              ; preds = %220, %176
  br label %229

229:                                              ; preds = %302, %228
  %230 = load %struct.netbox*, %struct.netbox** %13, align 8
  %231 = icmp ne %struct.netbox* %230, null
  br i1 %231, label %232, label %306

232:                                              ; preds = %229
  %233 = load %struct.netbox*, %struct.netbox** %13, align 8
  %234 = getelementptr inbounds %struct.netbox, %struct.netbox* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %302

238:                                              ; preds = %232
  %239 = load %struct.netbox*, %struct.netbox** %13, align 8
  %240 = getelementptr inbounds %struct.netbox, %struct.netbox* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %252

243:                                              ; preds = %238
  %244 = load %struct.netbox*, %struct.netbox** %13, align 8
  %245 = getelementptr inbounds %struct.netbox, %struct.netbox* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  store i32 %246, i32* %20, align 4
  %247 = load %struct.netbox*, %struct.netbox** %13, align 8
  %248 = getelementptr inbounds %struct.netbox, %struct.netbox* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %21, align 4
  %250 = load %struct.netbox*, %struct.netbox** %13, align 8
  %251 = getelementptr inbounds %struct.netbox, %struct.netbox* %250, i32 0, i32 6
  store i32 0, i32* %251, align 4
  br label %259

252:                                              ; preds = %238
  %253 = load %struct.netbox*, %struct.netbox** %13, align 8
  %254 = getelementptr inbounds %struct.netbox, %struct.netbox* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  store i32 %255, i32* %20, align 4
  %256 = load %struct.netbox*, %struct.netbox** %13, align 8
  %257 = getelementptr inbounds %struct.netbox, %struct.netbox* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %21, align 4
  br label %259

259:                                              ; preds = %252, %243
  %260 = load i32, i32* %20, align 4
  %261 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %262 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %259
  %266 = load i32, i32* %20, align 4
  %267 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %268 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 8
  br label %280

269:                                              ; preds = %259
  %270 = load i32, i32* %20, align 4
  %271 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %272 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = icmp sgt i32 %270, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = load i32, i32* %20, align 4
  %277 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %278 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %277, i32 0, i32 5
  store i32 %276, i32* %278, align 8
  br label %279

279:                                              ; preds = %275, %269
  br label %280

280:                                              ; preds = %279, %265
  %281 = load i32, i32* %21, align 4
  %282 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %283 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 4
  %285 = icmp slt i32 %281, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %280
  %287 = load i32, i32* %21, align 4
  %288 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %289 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %288, i32 0, i32 8
  store i32 %287, i32* %289, align 4
  br label %301

290:                                              ; preds = %280
  %291 = load i32, i32* %21, align 4
  %292 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %293 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %292, i32 0, i32 10
  %294 = load i32, i32* %293, align 4
  %295 = icmp sgt i32 %291, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %290
  %297 = load i32, i32* %21, align 4
  %298 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %299 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %298, i32 0, i32 10
  store i32 %297, i32* %299, align 4
  br label %300

300:                                              ; preds = %296, %290
  br label %301

301:                                              ; preds = %300, %286
  br label %302

302:                                              ; preds = %301, %237
  %303 = load %struct.netbox*, %struct.netbox** %13, align 8
  %304 = getelementptr inbounds %struct.netbox, %struct.netbox* %303, i32 0, i32 0
  %305 = load %struct.netbox*, %struct.netbox** %304, align 8
  store %struct.netbox* %305, %struct.netbox** %13, align 8
  br label %229, !llvm.loop !4

306:                                              ; preds = %229
  %307 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %308 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %307, i32 0, i32 11
  %309 = load double, double* %308, align 8
  %310 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %311 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %314 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = sub nsw i32 %312, %315
  %317 = sitofp i32 %316 to double
  %318 = fmul double %309, %317
  %319 = fptosi double %318 to i32
  %320 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %321 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %320, i32 0, i32 11
  %322 = load double, double* %321, align 8
  %323 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %324 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %327 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 %325, %328
  %330 = sitofp i32 %329 to double
  %331 = fmul double %322, %330
  %332 = fptosi double %331 to i32
  %333 = sub nsw i32 %319, %332
  %334 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %335 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %334, i32 0, i32 12
  %336 = load double, double* %335, align 8
  %337 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %338 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %337, i32 0, i32 10
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %341 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 4
  %343 = sub nsw i32 %339, %342
  %344 = sitofp i32 %343 to double
  %345 = fmul double %336, %344
  %346 = fptosi double %345 to i32
  %347 = add nsw i32 %333, %346
  %348 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %349 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %348, i32 0, i32 12
  %350 = load double, double* %349, align 8
  %351 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %352 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %351, i32 0, i32 9
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %355 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %354, i32 0, i32 6
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %353, %356
  %358 = sitofp i32 %357 to double
  %359 = fmul double %350, %358
  %360 = fptosi double %359 to i32
  %361 = sub nsw i32 %347, %360
  %362 = load i32, i32* %18, align 4
  %363 = add nsw i32 %362, %361
  store i32 %363, i32* %18, align 4
  br label %364

364:                                              ; preds = %306, %162, %5
  %365 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %366 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %366, i64 %368
  %370 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.termnets*, %struct.termnets** %365, i64 %372
  %374 = load %struct.termnets*, %struct.termnets** %373, align 8
  store %struct.termnets* %374, %struct.termnets** %14, align 8
  %375 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %376 = load %struct.termnets*, %struct.termnets** %14, align 8
  %377 = getelementptr inbounds %struct.termnets, %struct.termnets* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %375, i64 %379
  %381 = load %struct.dimbox*, %struct.dimbox** %380, align 8
  store %struct.dimbox* %381, %struct.dimbox** %12, align 8
  %382 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %383 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %382, i32 0, i32 7
  %384 = load i32, i32* %383, align 8
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %588

386:                                              ; preds = %364
  %387 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %388 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = icmp ne i32 %389, 1
  br i1 %390, label %391, label %588

391:                                              ; preds = %386
  %392 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %393 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %392, i32 0, i32 7
  store i32 0, i32* %393, align 8
  %394 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %395 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %394, i32 0, i32 0
  %396 = load %struct.netbox*, %struct.netbox** %395, align 8
  store %struct.netbox* %396, %struct.netbox** %13, align 8
  br label %397

397:                                              ; preds = %448, %391
  %398 = load %struct.netbox*, %struct.netbox** %13, align 8
  %399 = icmp eq %struct.netbox* %398, null
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  br label %452

401:                                              ; preds = %397
  %402 = load %struct.netbox*, %struct.netbox** %13, align 8
  %403 = getelementptr inbounds %struct.netbox, %struct.netbox* %402, i32 0, i32 9
  %404 = load i32, i32* %403, align 8
  %405 = icmp eq i32 %404, 1
  br i1 %405, label %406, label %407

406:                                              ; preds = %401
  br label %448

407:                                              ; preds = %401
  %408 = load %struct.netbox*, %struct.netbox** %13, align 8
  %409 = getelementptr inbounds %struct.netbox, %struct.netbox* %408, i32 0, i32 6
  %410 = load i32, i32* %409, align 4
  %411 = icmp eq i32 %410, 1
  br i1 %411, label %412, label %429

412:                                              ; preds = %407
  %413 = load %struct.netbox*, %struct.netbox** %13, align 8
  %414 = getelementptr inbounds %struct.netbox, %struct.netbox* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %417 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %416, i32 0, i32 5
  store i32 %415, i32* %417, align 8
  %418 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %419 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %418, i32 0, i32 3
  store i32 %415, i32* %419, align 8
  %420 = load %struct.netbox*, %struct.netbox** %13, align 8
  %421 = getelementptr inbounds %struct.netbox, %struct.netbox* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %424 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %423, i32 0, i32 10
  store i32 %422, i32* %424, align 4
  %425 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %426 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %425, i32 0, i32 8
  store i32 %422, i32* %426, align 4
  %427 = load %struct.netbox*, %struct.netbox** %13, align 8
  %428 = getelementptr inbounds %struct.netbox, %struct.netbox* %427, i32 0, i32 6
  store i32 0, i32* %428, align 4
  br label %444

429:                                              ; preds = %407
  %430 = load %struct.netbox*, %struct.netbox** %13, align 8
  %431 = getelementptr inbounds %struct.netbox, %struct.netbox* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %434 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %433, i32 0, i32 5
  store i32 %432, i32* %434, align 8
  %435 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %436 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %435, i32 0, i32 3
  store i32 %432, i32* %436, align 8
  %437 = load %struct.netbox*, %struct.netbox** %13, align 8
  %438 = getelementptr inbounds %struct.netbox, %struct.netbox* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %441 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %440, i32 0, i32 10
  store i32 %439, i32* %441, align 4
  %442 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %443 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %442, i32 0, i32 8
  store i32 %439, i32* %443, align 4
  br label %444

444:                                              ; preds = %429, %412
  %445 = load %struct.netbox*, %struct.netbox** %13, align 8
  %446 = getelementptr inbounds %struct.netbox, %struct.netbox* %445, i32 0, i32 0
  %447 = load %struct.netbox*, %struct.netbox** %446, align 8
  store %struct.netbox* %447, %struct.netbox** %13, align 8
  br label %452

448:                                              ; preds = %406
  %449 = load %struct.netbox*, %struct.netbox** %13, align 8
  %450 = getelementptr inbounds %struct.netbox, %struct.netbox* %449, i32 0, i32 0
  %451 = load %struct.netbox*, %struct.netbox** %450, align 8
  store %struct.netbox* %451, %struct.netbox** %13, align 8
  br label %397

452:                                              ; preds = %444, %400
  br label %453

453:                                              ; preds = %526, %452
  %454 = load %struct.netbox*, %struct.netbox** %13, align 8
  %455 = icmp ne %struct.netbox* %454, null
  br i1 %455, label %456, label %530

456:                                              ; preds = %453
  %457 = load %struct.netbox*, %struct.netbox** %13, align 8
  %458 = getelementptr inbounds %struct.netbox, %struct.netbox* %457, i32 0, i32 9
  %459 = load i32, i32* %458, align 8
  %460 = icmp eq i32 %459, 1
  br i1 %460, label %461, label %462

461:                                              ; preds = %456
  br label %526

462:                                              ; preds = %456
  %463 = load %struct.netbox*, %struct.netbox** %13, align 8
  %464 = getelementptr inbounds %struct.netbox, %struct.netbox* %463, i32 0, i32 6
  %465 = load i32, i32* %464, align 4
  %466 = icmp eq i32 %465, 1
  br i1 %466, label %467, label %476

467:                                              ; preds = %462
  %468 = load %struct.netbox*, %struct.netbox** %13, align 8
  %469 = getelementptr inbounds %struct.netbox, %struct.netbox* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 8
  store i32 %470, i32* %20, align 4
  %471 = load %struct.netbox*, %struct.netbox** %13, align 8
  %472 = getelementptr inbounds %struct.netbox, %struct.netbox* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 4
  store i32 %473, i32* %21, align 4
  %474 = load %struct.netbox*, %struct.netbox** %13, align 8
  %475 = getelementptr inbounds %struct.netbox, %struct.netbox* %474, i32 0, i32 6
  store i32 0, i32* %475, align 4
  br label %483

476:                                              ; preds = %462
  %477 = load %struct.netbox*, %struct.netbox** %13, align 8
  %478 = getelementptr inbounds %struct.netbox, %struct.netbox* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 8
  store i32 %479, i32* %20, align 4
  %480 = load %struct.netbox*, %struct.netbox** %13, align 8
  %481 = getelementptr inbounds %struct.netbox, %struct.netbox* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 4
  store i32 %482, i32* %21, align 4
  br label %483

483:                                              ; preds = %476, %467
  %484 = load i32, i32* %20, align 4
  %485 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %486 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %485, i32 0, i32 3
  %487 = load i32, i32* %486, align 8
  %488 = icmp slt i32 %484, %487
  br i1 %488, label %489, label %493

489:                                              ; preds = %483
  %490 = load i32, i32* %20, align 4
  %491 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %492 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %491, i32 0, i32 3
  store i32 %490, i32* %492, align 8
  br label %504

493:                                              ; preds = %483
  %494 = load i32, i32* %20, align 4
  %495 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %496 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %495, i32 0, i32 5
  %497 = load i32, i32* %496, align 8
  %498 = icmp sgt i32 %494, %497
  br i1 %498, label %499, label %503

499:                                              ; preds = %493
  %500 = load i32, i32* %20, align 4
  %501 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %502 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %501, i32 0, i32 5
  store i32 %500, i32* %502, align 8
  br label %503

503:                                              ; preds = %499, %493
  br label %504

504:                                              ; preds = %503, %489
  %505 = load i32, i32* %21, align 4
  %506 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %507 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %506, i32 0, i32 8
  %508 = load i32, i32* %507, align 4
  %509 = icmp slt i32 %505, %508
  br i1 %509, label %510, label %514

510:                                              ; preds = %504
  %511 = load i32, i32* %21, align 4
  %512 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %513 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %512, i32 0, i32 8
  store i32 %511, i32* %513, align 4
  br label %525

514:                                              ; preds = %504
  %515 = load i32, i32* %21, align 4
  %516 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %517 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %516, i32 0, i32 10
  %518 = load i32, i32* %517, align 4
  %519 = icmp sgt i32 %515, %518
  br i1 %519, label %520, label %524

520:                                              ; preds = %514
  %521 = load i32, i32* %21, align 4
  %522 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %523 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %522, i32 0, i32 10
  store i32 %521, i32* %523, align 4
  br label %524

524:                                              ; preds = %520, %514
  br label %525

525:                                              ; preds = %524, %510
  br label %526

526:                                              ; preds = %525, %461
  %527 = load %struct.netbox*, %struct.netbox** %13, align 8
  %528 = getelementptr inbounds %struct.netbox, %struct.netbox* %527, i32 0, i32 0
  %529 = load %struct.netbox*, %struct.netbox** %528, align 8
  store %struct.netbox* %529, %struct.netbox** %13, align 8
  br label %453, !llvm.loop !6

530:                                              ; preds = %453
  %531 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %532 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %531, i32 0, i32 11
  %533 = load double, double* %532, align 8
  %534 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %535 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %534, i32 0, i32 5
  %536 = load i32, i32* %535, align 8
  %537 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %538 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %537, i32 0, i32 3
  %539 = load i32, i32* %538, align 8
  %540 = sub nsw i32 %536, %539
  %541 = sitofp i32 %540 to double
  %542 = fmul double %533, %541
  %543 = fptosi double %542 to i32
  %544 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %545 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %544, i32 0, i32 11
  %546 = load double, double* %545, align 8
  %547 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %548 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %547, i32 0, i32 4
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %551 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %550, i32 0, i32 2
  %552 = load i32, i32* %551, align 4
  %553 = sub nsw i32 %549, %552
  %554 = sitofp i32 %553 to double
  %555 = fmul double %546, %554
  %556 = fptosi double %555 to i32
  %557 = sub nsw i32 %543, %556
  %558 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %559 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %558, i32 0, i32 12
  %560 = load double, double* %559, align 8
  %561 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %562 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %561, i32 0, i32 10
  %563 = load i32, i32* %562, align 4
  %564 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %565 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %564, i32 0, i32 8
  %566 = load i32, i32* %565, align 4
  %567 = sub nsw i32 %563, %566
  %568 = sitofp i32 %567 to double
  %569 = fmul double %560, %568
  %570 = fptosi double %569 to i32
  %571 = add nsw i32 %557, %570
  %572 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %573 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %572, i32 0, i32 12
  %574 = load double, double* %573, align 8
  %575 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %576 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %575, i32 0, i32 9
  %577 = load i32, i32* %576, align 8
  %578 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %579 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %578, i32 0, i32 6
  %580 = load i32, i32* %579, align 4
  %581 = sub nsw i32 %577, %580
  %582 = sitofp i32 %581 to double
  %583 = fmul double %574, %582
  %584 = fptosi double %583 to i32
  %585 = sub nsw i32 %571, %584
  %586 = load i32, i32* %18, align 4
  %587 = add nsw i32 %586, %585
  store i32 %587, i32* %18, align 4
  br label %588

588:                                              ; preds = %530, %386, %364
  %589 = load i32, i32* %18, align 4
  %590 = load i32, i32* @funccost, align 4
  %591 = icmp sle i32 %589, %590
  br i1 %591, label %607, label %592

592:                                              ; preds = %588
  %593 = load i32, i32* @funccost, align 4
  %594 = load i32, i32* %18, align 4
  %595 = sub nsw i32 %593, %594
  %596 = sitofp i32 %595 to double
  %597 = load double, double* @T, align 8
  %598 = fdiv double %596, %597
  %599 = call double @exp(double noundef %598) #2
  %600 = load i32, i32* @randVar, align 4
  %601 = mul nsw i32 %600, 1103515245
  %602 = add nsw i32 %601, 12345
  store i32 %602, i32* @randVar, align 4
  %603 = and i32 %602, 2147483647
  %604 = sitofp i32 %603 to double
  %605 = fdiv double %604, 0x41DFFFFFFFC00000
  %606 = fcmp ogt double %599, %605
  br i1 %606, label %607, label %788

607:                                              ; preds = %592, %588
  %608 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %609 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %610 = load i32, i32* %8, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %609, i64 %611
  %613 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %612, i32 0, i32 0
  %614 = load i32, i32* %613, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.termnets*, %struct.termnets** %608, i64 %615
  %617 = load %struct.termnets*, %struct.termnets** %616, align 8
  store %struct.termnets* %617, %struct.termnets** %14, align 8
  %618 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %619 = load %struct.termnets*, %struct.termnets** %14, align 8
  %620 = getelementptr inbounds %struct.termnets, %struct.termnets* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %618, i64 %622
  %624 = load %struct.dimbox*, %struct.dimbox** %623, align 8
  store %struct.dimbox* %624, %struct.dimbox** %12, align 8
  %625 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %626 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %625, i32 0, i32 3
  %627 = load i32, i32* %626, align 8
  %628 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %629 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %628, i32 0, i32 2
  store i32 %627, i32* %629, align 4
  %630 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %631 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %630, i32 0, i32 5
  %632 = load i32, i32* %631, align 8
  %633 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %634 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %633, i32 0, i32 4
  store i32 %632, i32* %634, align 4
  %635 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %636 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %635, i32 0, i32 8
  %637 = load i32, i32* %636, align 4
  %638 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %639 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %638, i32 0, i32 6
  store i32 %637, i32* %639, align 4
  %640 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %641 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %640, i32 0, i32 10
  %642 = load i32, i32* %641, align 4
  %643 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %644 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %643, i32 0, i32 9
  store i32 %642, i32* %644, align 8
  %645 = load %struct.termnets*, %struct.termnets** %14, align 8
  %646 = getelementptr inbounds %struct.termnets, %struct.termnets* %645, i32 0, i32 1
  %647 = load %struct.netbox*, %struct.netbox** %646, align 8
  %648 = getelementptr inbounds %struct.netbox, %struct.netbox* %647, i32 0, i32 3
  %649 = load i32, i32* %648, align 8
  %650 = load %struct.termnets*, %struct.termnets** %14, align 8
  %651 = getelementptr inbounds %struct.termnets, %struct.termnets* %650, i32 0, i32 1
  %652 = load %struct.netbox*, %struct.netbox** %651, align 8
  %653 = getelementptr inbounds %struct.netbox, %struct.netbox* %652, i32 0, i32 1
  store i32 %649, i32* %653, align 8
  %654 = load %struct.termnets*, %struct.termnets** %14, align 8
  %655 = getelementptr inbounds %struct.termnets, %struct.termnets* %654, i32 0, i32 1
  %656 = load %struct.netbox*, %struct.netbox** %655, align 8
  %657 = getelementptr inbounds %struct.netbox, %struct.netbox* %656, i32 0, i32 4
  %658 = load i32, i32* %657, align 4
  %659 = load %struct.termnets*, %struct.termnets** %14, align 8
  %660 = getelementptr inbounds %struct.termnets, %struct.termnets* %659, i32 0, i32 1
  %661 = load %struct.netbox*, %struct.netbox** %660, align 8
  %662 = getelementptr inbounds %struct.netbox, %struct.netbox* %661, i32 0, i32 2
  store i32 %658, i32* %662, align 4
  %663 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %664 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %665 = load i32, i32* %9, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %664, i64 %666
  %668 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %667, i32 0, i32 0
  %669 = load i32, i32* %668, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.termnets*, %struct.termnets** %663, i64 %670
  %672 = load %struct.termnets*, %struct.termnets** %671, align 8
  store %struct.termnets* %672, %struct.termnets** %14, align 8
  %673 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %674 = load %struct.termnets*, %struct.termnets** %14, align 8
  %675 = getelementptr inbounds %struct.termnets, %struct.termnets* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 8
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %673, i64 %677
  %679 = load %struct.dimbox*, %struct.dimbox** %678, align 8
  store %struct.dimbox* %679, %struct.dimbox** %12, align 8
  %680 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %681 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %680, i32 0, i32 3
  %682 = load i32, i32* %681, align 8
  %683 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %684 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %683, i32 0, i32 2
  store i32 %682, i32* %684, align 4
  %685 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %686 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %685, i32 0, i32 5
  %687 = load i32, i32* %686, align 8
  %688 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %689 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %688, i32 0, i32 4
  store i32 %687, i32* %689, align 4
  %690 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %691 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %690, i32 0, i32 8
  %692 = load i32, i32* %691, align 4
  %693 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %694 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %693, i32 0, i32 6
  store i32 %692, i32* %694, align 4
  %695 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %696 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %695, i32 0, i32 10
  %697 = load i32, i32* %696, align 4
  %698 = load %struct.dimbox*, %struct.dimbox** %12, align 8
  %699 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %698, i32 0, i32 9
  store i32 %697, i32* %699, align 8
  %700 = load %struct.termnets*, %struct.termnets** %14, align 8
  %701 = getelementptr inbounds %struct.termnets, %struct.termnets* %700, i32 0, i32 1
  %702 = load %struct.netbox*, %struct.netbox** %701, align 8
  %703 = getelementptr inbounds %struct.netbox, %struct.netbox* %702, i32 0, i32 3
  %704 = load i32, i32* %703, align 8
  %705 = load %struct.termnets*, %struct.termnets** %14, align 8
  %706 = getelementptr inbounds %struct.termnets, %struct.termnets* %705, i32 0, i32 1
  %707 = load %struct.netbox*, %struct.netbox** %706, align 8
  %708 = getelementptr inbounds %struct.netbox, %struct.netbox* %707, i32 0, i32 1
  store i32 %704, i32* %708, align 8
  %709 = load %struct.termnets*, %struct.termnets** %14, align 8
  %710 = getelementptr inbounds %struct.termnets, %struct.termnets* %709, i32 0, i32 1
  %711 = load %struct.netbox*, %struct.netbox** %710, align 8
  %712 = getelementptr inbounds %struct.netbox, %struct.netbox* %711, i32 0, i32 4
  %713 = load i32, i32* %712, align 4
  %714 = load %struct.termnets*, %struct.termnets** %14, align 8
  %715 = getelementptr inbounds %struct.termnets, %struct.termnets* %714, i32 0, i32 1
  %716 = load %struct.netbox*, %struct.netbox** %715, align 8
  %717 = getelementptr inbounds %struct.netbox, %struct.netbox* %716, i32 0, i32 2
  store i32 %713, i32* %717, align 4
  %718 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %719 = load i32, i32* %8, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %718, i64 %720
  %722 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 4
  store i32 %723, i32* %19, align 4
  %724 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %725 = load i32, i32* %9, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %724, i64 %726
  %728 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 4
  %730 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %731 = load i32, i32* %8, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %730, i64 %732
  %734 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %733, i32 0, i32 0
  store i32 %729, i32* %734, align 4
  %735 = load i32, i32* %19, align 4
  %736 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %737 = load i32, i32* %9, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %736, i64 %738
  %740 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %739, i32 0, i32 0
  store i32 %735, i32* %740, align 4
  %741 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %742 = load i32, i32* %8, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %741, i64 %743
  %745 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %744, i32 0, i32 1
  %746 = load i32, i32* %745, align 4
  store i32 %746, i32* %19, align 4
  %747 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %748 = load i32, i32* %9, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %747, i64 %749
  %751 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %750, i32 0, i32 1
  %752 = load i32, i32* %751, align 4
  %753 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %754 = load i32, i32* %8, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %753, i64 %755
  %757 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %756, i32 0, i32 1
  store i32 %752, i32* %757, align 4
  %758 = load i32, i32* %19, align 4
  %759 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %760 = load i32, i32* %9, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %759, i64 %761
  %763 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %762, i32 0, i32 1
  store i32 %758, i32* %763, align 4
  %764 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %765 = load i32, i32* %8, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %764, i64 %766
  %768 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %767, i32 0, i32 7
  %769 = load i32, i32* %768, align 4
  store i32 %769, i32* %19, align 4
  %770 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %771 = load i32, i32* %9, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %770, i64 %772
  %774 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %773, i32 0, i32 7
  %775 = load i32, i32* %774, align 4
  %776 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %777 = load i32, i32* %8, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %776, i64 %778
  %780 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %779, i32 0, i32 7
  store i32 %775, i32* %780, align 4
  %781 = load i32, i32* %19, align 4
  %782 = load %struct.uncombox*, %struct.uncombox** %16, align 8
  %783 = load i32, i32* %9, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %782, i64 %784
  %786 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %785, i32 0, i32 7
  store i32 %781, i32* %786, align 4
  %787 = load i32, i32* %18, align 4
  store i32 %787, i32* @funccost, align 4
  store i32 1, i32* %6, align 4
  br label %789

788:                                              ; preds = %592
  store i32 0, i32* %6, align 4
  br label %789

789:                                              ; preds = %788, %607
  %790 = load i32, i32* %6, align 4
  ret i32 %790
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
