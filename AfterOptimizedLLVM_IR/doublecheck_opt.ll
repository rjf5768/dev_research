; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/doublecheck.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/doublecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@termarray = external dso_local global %struct.termnets**, align 8
@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@overlap = external dso_local global i32 (...)*, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [32 x i8] c"DoubleCheck Wire Cost: %d      \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Penalty: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @doublecheck() #0 {
  %1 = alloca %struct.dimbox*, align 8
  %2 = alloca %struct.netbox*, align 8
  %3 = alloca %struct.cellbox*, align 8
  %4 = alloca %struct.termbox*, align 8
  %5 = alloca %struct.termnets*, align 8
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
  store i32 0, i32* %15, align 4
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %163, %0
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @numcells, align 4
  %20 = load i32, i32* @numpads, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %166

23:                                               ; preds = %17
  %24 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %24, i64 %26
  %28 = load %struct.cellbox*, %struct.cellbox** %27, align 8
  store %struct.cellbox* %28, %struct.cellbox** %3, align 8
  %29 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %30 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %29, i32 0, i32 21
  %31 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %32 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %30, i64 0, i64 %34
  %36 = load %struct.tilebox*, %struct.tilebox** %35, align 8
  %37 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %36, i32 0, i32 17
  %38 = load %struct.termbox*, %struct.termbox** %37, align 8
  store %struct.termbox* %38, %struct.termbox** %4, align 8
  br label %39

39:                                               ; preds = %72, %23
  %40 = load %struct.termbox*, %struct.termbox** %4, align 8
  %41 = icmp ne %struct.termbox* %40, null
  br i1 %41, label %42, label %76

42:                                               ; preds = %39
  %43 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %44 = load %struct.termbox*, %struct.termbox** %4, align 8
  %45 = getelementptr inbounds %struct.termbox, %struct.termbox* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.termnets*, %struct.termnets** %43, i64 %47
  %49 = load %struct.termnets*, %struct.termnets** %48, align 8
  store %struct.termnets* %49, %struct.termnets** %5, align 8
  %50 = load %struct.termbox*, %struct.termbox** %4, align 8
  %51 = getelementptr inbounds %struct.termbox, %struct.termbox* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %54 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = load %struct.termnets*, %struct.termnets** %5, align 8
  %58 = getelementptr inbounds %struct.termnets, %struct.termnets* %57, i32 0, i32 1
  %59 = load %struct.netbox*, %struct.netbox** %58, align 8
  %60 = getelementptr inbounds %struct.netbox, %struct.netbox* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 8
  %61 = load %struct.termbox*, %struct.termbox** %4, align 8
  %62 = getelementptr inbounds %struct.termbox, %struct.termbox* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %65 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %63, %66
  %68 = load %struct.termnets*, %struct.termnets** %5, align 8
  %69 = getelementptr inbounds %struct.termnets, %struct.termnets* %68, i32 0, i32 1
  %70 = load %struct.netbox*, %struct.netbox** %69, align 8
  %71 = getelementptr inbounds %struct.netbox, %struct.netbox* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %42
  %73 = load %struct.termbox*, %struct.termbox** %4, align 8
  %74 = getelementptr inbounds %struct.termbox, %struct.termbox* %73, i32 0, i32 0
  %75 = load %struct.termbox*, %struct.termbox** %74, align 8
  store %struct.termbox* %75, %struct.termbox** %4, align 8
  br label %39, !llvm.loop !4

76:                                               ; preds = %39
  %77 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %78 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %162

81:                                               ; preds = %76
  store i32 1, i32* %9, align 4
  br label %82

82:                                               ; preds = %158, %81
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %85 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i32 0, i32 18
  %86 = load i32, i32* %85, align 4
  %87 = icmp sle i32 %83, %86
  br i1 %87, label %88, label %161

88:                                               ; preds = %82
  %89 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %90 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i32 0, i32 20
  %91 = load %struct.uncombox*, %struct.uncombox** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %91, i64 %93
  %95 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %12, align 4
  %97 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %98 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %97, i32 0, i32 20
  %99 = load %struct.uncombox*, %struct.uncombox** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %99, i64 %101
  %103 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %8, align 4
  %105 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %106 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %105, i32 0, i32 21
  %107 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %108 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %106, i64 0, i64 %110
  %112 = load %struct.tilebox*, %struct.tilebox** %111, align 8
  %113 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %112, i32 0, i32 18
  %114 = load %struct.locbox*, %struct.locbox** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.locbox, %struct.locbox* %114, i64 %116
  %118 = getelementptr inbounds %struct.locbox, %struct.locbox* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %13, align 4
  %120 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %121 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %120, i32 0, i32 21
  %122 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %123 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %121, i64 0, i64 %125
  %127 = load %struct.tilebox*, %struct.tilebox** %126, align 8
  %128 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %127, i32 0, i32 18
  %129 = load %struct.locbox*, %struct.locbox** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.locbox, %struct.locbox* %129, i64 %131
  %133 = getelementptr inbounds %struct.locbox, %struct.locbox* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %14, align 4
  %135 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.termnets*, %struct.termnets** %135, i64 %137
  %139 = load %struct.termnets*, %struct.termnets** %138, align 8
  store %struct.termnets* %139, %struct.termnets** %5, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %142 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %140, %143
  %145 = load %struct.termnets*, %struct.termnets** %5, align 8
  %146 = getelementptr inbounds %struct.termnets, %struct.termnets* %145, i32 0, i32 1
  %147 = load %struct.netbox*, %struct.netbox** %146, align 8
  %148 = getelementptr inbounds %struct.netbox, %struct.netbox* %147, i32 0, i32 1
  store i32 %144, i32* %148, align 8
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %151 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %149, %152
  %154 = load %struct.termnets*, %struct.termnets** %5, align 8
  %155 = getelementptr inbounds %struct.termnets, %struct.termnets* %154, i32 0, i32 1
  %156 = load %struct.netbox*, %struct.netbox** %155, align 8
  %157 = getelementptr inbounds %struct.netbox, %struct.netbox* %156, i32 0, i32 2
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %88
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %82, !llvm.loop !6

161:                                              ; preds = %82
  br label %162

162:                                              ; preds = %161, %76
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %17, !llvm.loop !7

166:                                              ; preds = %17
  store i32 1, i32* %7, align 4
  br label %167

167:                                              ; preds = %311, %166
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @numnets, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %314

171:                                              ; preds = %167
  %172 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %172, i64 %174
  %176 = load %struct.dimbox*, %struct.dimbox** %175, align 8
  store %struct.dimbox* %176, %struct.dimbox** %1, align 8
  %177 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %178 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %182

181:                                              ; preds = %171
  br label %311

182:                                              ; preds = %171
  %183 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %184 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %183, i32 0, i32 0
  %185 = load %struct.netbox*, %struct.netbox** %184, align 8
  store %struct.netbox* %185, %struct.netbox** %2, align 8
  br label %186

186:                                              ; preds = %214, %182
  %187 = load %struct.netbox*, %struct.netbox** %2, align 8
  %188 = icmp eq %struct.netbox* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  br label %218

190:                                              ; preds = %186
  %191 = load %struct.netbox*, %struct.netbox** %2, align 8
  %192 = getelementptr inbounds %struct.netbox, %struct.netbox* %191, i32 0, i32 9
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %214

196:                                              ; preds = %190
  %197 = load %struct.netbox*, %struct.netbox** %2, align 8
  %198 = getelementptr inbounds %struct.netbox, %struct.netbox* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %201 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 4
  %202 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %203 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %202, i32 0, i32 2
  store i32 %199, i32* %203, align 4
  %204 = load %struct.netbox*, %struct.netbox** %2, align 8
  %205 = getelementptr inbounds %struct.netbox, %struct.netbox* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %208 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %207, i32 0, i32 9
  store i32 %206, i32* %208, align 8
  %209 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %210 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %209, i32 0, i32 6
  store i32 %206, i32* %210, align 4
  %211 = load %struct.netbox*, %struct.netbox** %2, align 8
  %212 = getelementptr inbounds %struct.netbox, %struct.netbox* %211, i32 0, i32 0
  %213 = load %struct.netbox*, %struct.netbox** %212, align 8
  store %struct.netbox* %213, %struct.netbox** %2, align 8
  br label %218

214:                                              ; preds = %195
  %215 = load %struct.netbox*, %struct.netbox** %2, align 8
  %216 = getelementptr inbounds %struct.netbox, %struct.netbox* %215, i32 0, i32 0
  %217 = load %struct.netbox*, %struct.netbox** %216, align 8
  store %struct.netbox* %217, %struct.netbox** %2, align 8
  br label %186

218:                                              ; preds = %196, %189
  br label %219

219:                                              ; preds = %277, %218
  %220 = load %struct.netbox*, %struct.netbox** %2, align 8
  %221 = icmp ne %struct.netbox* %220, null
  br i1 %221, label %222, label %281

222:                                              ; preds = %219
  %223 = load %struct.netbox*, %struct.netbox** %2, align 8
  %224 = getelementptr inbounds %struct.netbox, %struct.netbox* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  br label %277

228:                                              ; preds = %222
  %229 = load %struct.netbox*, %struct.netbox** %2, align 8
  %230 = getelementptr inbounds %struct.netbox, %struct.netbox* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  store i32 %231, i32* %10, align 4
  %232 = load %struct.netbox*, %struct.netbox** %2, align 8
  %233 = getelementptr inbounds %struct.netbox, %struct.netbox* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* %10, align 4
  %236 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %237 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %228
  %241 = load i32, i32* %10, align 4
  %242 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %243 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 4
  br label %255

244:                                              ; preds = %228
  %245 = load i32, i32* %10, align 4
  %246 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %247 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = icmp sgt i32 %245, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %244
  %251 = load i32, i32* %10, align 4
  %252 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %253 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %252, i32 0, i32 4
  store i32 %251, i32* %253, align 4
  br label %254

254:                                              ; preds = %250, %244
  br label %255

255:                                              ; preds = %254, %240
  %256 = load i32, i32* %11, align 4
  %257 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %258 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load i32, i32* %11, align 4
  %263 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %264 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %263, i32 0, i32 6
  store i32 %262, i32* %264, align 4
  br label %276

265:                                              ; preds = %255
  %266 = load i32, i32* %11, align 4
  %267 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %268 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %267, i32 0, i32 9
  %269 = load i32, i32* %268, align 8
  %270 = icmp sgt i32 %266, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %265
  %272 = load i32, i32* %11, align 4
  %273 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %274 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %273, i32 0, i32 9
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %271, %265
  br label %276

276:                                              ; preds = %275, %261
  br label %277

277:                                              ; preds = %276, %227
  %278 = load %struct.netbox*, %struct.netbox** %2, align 8
  %279 = getelementptr inbounds %struct.netbox, %struct.netbox* %278, i32 0, i32 0
  %280 = load %struct.netbox*, %struct.netbox** %279, align 8
  store %struct.netbox* %280, %struct.netbox** %2, align 8
  br label %219, !llvm.loop !8

281:                                              ; preds = %219
  %282 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %283 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %282, i32 0, i32 11
  %284 = load double, double* %283, align 8
  %285 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %286 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %289 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 %287, %290
  %292 = sitofp i32 %291 to double
  %293 = fmul double %284, %292
  %294 = fptosi double %293 to i32
  %295 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %296 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %295, i32 0, i32 12
  %297 = load double, double* %296, align 8
  %298 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %299 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %302 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 4
  %304 = sub nsw i32 %300, %303
  %305 = sitofp i32 %304 to double
  %306 = fmul double %297, %305
  %307 = fptosi double %306 to i32
  %308 = add nsw i32 %294, %307
  %309 = load i32, i32* %15, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %15, align 4
  br label %311

311:                                              ; preds = %281, %181
  %312 = load i32, i32* %7, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %7, align 4
  br label %167, !llvm.loop !9

314:                                              ; preds = %167
  store i32 0, i32* %16, align 4
  store i32 1, i32* %6, align 4
  br label %315

315:                                              ; preds = %361, %314
  %316 = load i32, i32* %6, align 4
  %317 = load i32, i32* @numcells, align 4
  %318 = load i32, i32* @numpads, align 4
  %319 = add nsw i32 %317, %318
  %320 = add nsw i32 %319, 4
  %321 = icmp sle i32 %316, %320
  br i1 %321, label %322, label %364

322:                                              ; preds = %315
  %323 = load i32, i32* %6, align 4
  %324 = load i32, i32* @numcells, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %326, label %333

326:                                              ; preds = %322
  %327 = load i32, i32* %6, align 4
  %328 = load i32, i32* @numcells, align 4
  %329 = load i32, i32* @numpads, align 4
  %330 = add nsw i32 %328, %329
  %331 = icmp sle i32 %327, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %326
  br label %361

333:                                              ; preds = %326, %322
  %334 = load i32 (...)*, i32 (...)** @overlap, align 8
  %335 = load i32, i32* %6, align 4
  %336 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %336, i64 %338
  %340 = load %struct.cellbox*, %struct.cellbox** %339, align 8
  %341 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %344 = load i32, i32* %6, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %343, i64 %345
  %347 = load %struct.cellbox*, %struct.cellbox** %346, align 8
  %348 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %351 = load i32, i32* %6, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %350, i64 %352
  %354 = load %struct.cellbox*, %struct.cellbox** %353, align 8
  %355 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %354, i32 0, i32 5
  %356 = load i32, i32* %355, align 8
  %357 = bitcast i32 (...)* %334 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %358 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %357(i32 noundef %335, i32 noundef %342, i32 noundef %349, i32 noundef %356, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %359 = load i32, i32* %16, align 4
  %360 = add nsw i32 %359, %358
  store i32 %360, i32* %16, align 4
  br label %361

361:                                              ; preds = %333, %332
  %362 = load i32, i32* %6, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %6, align 4
  br label %315, !llvm.loop !10

364:                                              ; preds = %315
  %365 = load i32, i32* %16, align 4
  %366 = sdiv i32 %365, 2
  store i32 %366, i32* %16, align 4
  %367 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %368 = load i32, i32* %15, align 4
  %369 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %367, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %368)
  %370 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %371 = load i32, i32* %16, align 4
  %372 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %370, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %371)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

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
