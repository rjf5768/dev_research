; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/config2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/config2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@coreGiven = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@perim = external dso_local global i32, align 4
@totChanLen = external dso_local global i32, align 4
@totNetLen = external dso_local global i32, align 4
@layersFactor = external dso_local global i32, align 4
@defaultTracks = external dso_local global i32, align 4
@trackspacing = external dso_local global i32, align 4
@wire_est_factor = external dso_local global i32, align 4
@aveChanWid = external dso_local global i32, align 4
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [49 x i8] c"\0A\0AConfiguration Data\0AInternal Channel Length:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Average Channel Width (un-normalized):%d\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Average Channel Width:%d\0A\0A\00", align 1
@maxWeight = external dso_local global i32, align 4
@expandExtra = dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Core Expansion Factor: %f\0A\00", align 1
@core_expansion_given = external dso_local global i32, align 4
@core_expansion = external dso_local global double, align 8
@chipaspect = external dso_local global double, align 8
@baseWeight = external dso_local global i32, align 4
@slopeX = external dso_local global double, align 8
@slopeY = external dso_local global double, align 8
@basefactor = external dso_local global double, align 8
@blockl = external dso_local global i32, align 4
@blockmx = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockmy = external dso_local global i32, align 4
@numBinsX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@binOffsetX = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @config2() #0 {
  %1 = alloca %struct.cellbox*, align 8
  %2 = alloca %struct.tilebox*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %103, %0
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @numcells, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %106

19:                                               ; preds = %15
  %20 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %20, i64 %22
  %24 = load %struct.cellbox*, %struct.cellbox** %23, align 8
  store %struct.cellbox* %24, %struct.cellbox** %1, align 8
  %25 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %60

29:                                               ; preds = %19
  %30 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %30, i32 0, i32 21
  %32 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %31, i64 0, i64 %35
  %37 = load %struct.tilebox*, %struct.tilebox** %36, align 8
  store %struct.tilebox* %37, %struct.tilebox** %2, align 8
  %38 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %39 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %3, align 4
  %41 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %42 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  %44 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %45 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %5, align 4
  %47 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %48 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %53, %54
  %56 = mul nsw i32 %52, %55
  %57 = sitofp i32 %56 to double
  %58 = load double, double* %11, align 8
  %59 = fadd double %58, %57
  store double %59, double* %11, align 8
  br label %102

60:                                               ; preds = %19
  %61 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %62 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %61, i32 0, i32 21
  %63 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %64 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %62, i64 0, i64 %66
  %68 = load %struct.tilebox*, %struct.tilebox** %67, align 8
  %69 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %68, i32 0, i32 0
  %70 = load %struct.tilebox*, %struct.tilebox** %69, align 8
  store %struct.tilebox* %70, %struct.tilebox** %2, align 8
  br label %71

71:                                               ; preds = %97, %60
  %72 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %73 = icmp ne %struct.tilebox* %72, null
  br i1 %73, label %74, label %101

74:                                               ; preds = %71
  %75 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %76 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %3, align 4
  %78 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %79 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %4, align 4
  %81 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %5, align 4
  %84 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %85 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %3, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sub nsw i32 %90, %91
  %93 = mul nsw i32 %89, %92
  %94 = sitofp i32 %93 to double
  %95 = load double, double* %11, align 8
  %96 = fadd double %95, %94
  store double %96, double* %11, align 8
  br label %97

97:                                               ; preds = %74
  %98 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %99 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %98, i32 0, i32 0
  %100 = load %struct.tilebox*, %struct.tilebox** %99, align 8
  store %struct.tilebox* %100, %struct.tilebox** %2, align 8
  br label %71, !llvm.loop !4

101:                                              ; preds = %71
  br label %102

102:                                              ; preds = %101, %29
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %15, !llvm.loop !6

106:                                              ; preds = %15
  %107 = load i32, i32* @coreGiven, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %106
  %110 = load double, double* %11, align 8
  %111 = call double @sqrt(double noundef %110) #4
  %112 = fptosi double %111 to i32
  store i32 %112, i32* @blockt, align 4
  store i32 %112, i32* @blockr, align 4
  %113 = load i32, i32* @perim, align 4
  %114 = sdiv i32 %113, 2
  %115 = load i32, i32* @blockr, align 4
  %116 = load i32, i32* @blockt, align 4
  %117 = add nsw i32 %115, %116
  %118 = sub nsw i32 %114, %117
  store i32 %118, i32* @totChanLen, align 4
  %119 = load i32, i32* @totNetLen, align 4
  %120 = sitofp i32 %119 to double
  %121 = load i32, i32* @totChanLen, align 4
  %122 = sitofp i32 %121 to double
  %123 = fdiv double %120, %122
  %124 = load i32, i32* @layersFactor, align 4
  %125 = sitofp i32 %124 to double
  %126 = fdiv double %123, %125
  store double %126, double* %12, align 8
  br label %145

127:                                              ; preds = %106
  %128 = load double, double* %11, align 8
  %129 = call double @sqrt(double noundef %128) #4
  %130 = fptosi double %129 to i32
  store i32 %130, i32* %6, align 4
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* @perim, align 4
  %132 = sdiv i32 %131, 2
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %133, %134
  %136 = sub nsw i32 %132, %135
  store i32 %136, i32* @totChanLen, align 4
  %137 = load i32, i32* @totNetLen, align 4
  %138 = sitofp i32 %137 to double
  %139 = load i32, i32* @totChanLen, align 4
  %140 = sitofp i32 %139 to double
  %141 = fdiv double %138, %140
  %142 = load i32, i32* @layersFactor, align 4
  %143 = sitofp i32 %142 to double
  %144 = fdiv double %141, %143
  store double %144, double* %12, align 8
  br label %145

145:                                              ; preds = %127, %109
  %146 = load i32, i32* @defaultTracks, align 4
  %147 = sitofp i32 %146 to double
  %148 = load double, double* %12, align 8
  %149 = fadd double %148, %147
  store double %149, double* %12, align 8
  %150 = load double, double* %12, align 8
  %151 = fptosi double %150 to i32
  %152 = add nsw i32 %151, 3
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* @trackspacing, align 4
  %154 = load i32, i32* %9, align 4
  %155 = mul nsw i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* @wire_est_factor, align 4
  %157 = sitofp i32 %156 to double
  %158 = fdiv double %157, 1.000000e+01
  %159 = fadd double 1.800000e+00, %158
  store double %159, double* %14, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sitofp i32 %160 to double
  %162 = load double, double* %14, align 8
  %163 = fdiv double %161, %162
  %164 = fptosi double %163 to i32
  store i32 %164, i32* @aveChanWid, align 4
  %165 = load i32, i32* @aveChanWid, align 4
  %166 = add nsw i32 %165, 2
  store i32 %166, i32* @aveChanWid, align 4
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %168 = load i32, i32* @totChanLen, align 4
  %169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %167, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 noundef %168)
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %170, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 noundef %171)
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %174 = load i32, i32* @aveChanWid, align 4
  %175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %173, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 noundef %174)
  %176 = load i32, i32* @coreGiven, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %417

178:                                              ; preds = %145
  store double 0.000000e+00, double* %10, align 8
  store i32 1, i32* %8, align 4
  br label %179

179:                                              ; preds = %330, %178
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @numcells, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %183, label %333

183:                                              ; preds = %179
  %184 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %184, i64 %186
  %188 = load %struct.cellbox*, %struct.cellbox** %187, align 8
  store %struct.cellbox* %188, %struct.cellbox** %1, align 8
  %189 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %190 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %236

193:                                              ; preds = %183
  %194 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %195 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %194, i32 0, i32 21
  %196 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %197 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %195, i64 0, i64 %199
  %201 = load %struct.tilebox*, %struct.tilebox** %200, align 8
  store %struct.tilebox* %201, %struct.tilebox** %2, align 8
  %202 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %203 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %3, align 4
  %205 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %206 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %205, i32 0, i32 10
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %4, align 4
  %208 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %209 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %208, i32 0, i32 11
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %5, align 4
  %211 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %212 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %211, i32 0, i32 12
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* %3, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load i32, i32* @maxWeight, align 4
  %218 = load i32, i32* @maxWeight, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load i32, i32* @aveChanWid, align 4
  %221 = mul nsw i32 %219, %220
  %222 = add nsw i32 %216, %221
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* %5, align 4
  %225 = sub nsw i32 %223, %224
  %226 = load i32, i32* @maxWeight, align 4
  %227 = load i32, i32* @maxWeight, align 4
  %228 = mul nsw i32 %226, %227
  %229 = load i32, i32* @aveChanWid, align 4
  %230 = mul nsw i32 %228, %229
  %231 = add nsw i32 %225, %230
  %232 = mul nsw i32 %222, %231
  %233 = sitofp i32 %232 to double
  %234 = load double, double* %10, align 8
  %235 = fadd double %234, %233
  store double %235, double* %10, align 8
  br label %329

236:                                              ; preds = %183
  store i32 0, i32* %7, align 4
  %237 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %238 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %237, i32 0, i32 21
  %239 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %240 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %238, i64 0, i64 %242
  %244 = load %struct.tilebox*, %struct.tilebox** %243, align 8
  %245 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %244, i32 0, i32 0
  %246 = load %struct.tilebox*, %struct.tilebox** %245, align 8
  store %struct.tilebox* %246, %struct.tilebox** %2, align 8
  br label %247

247:                                              ; preds = %272, %236
  %248 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %249 = icmp ne %struct.tilebox* %248, null
  br i1 %249, label %250, label %276

250:                                              ; preds = %247
  %251 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %252 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 8
  store i32 %253, i32* %3, align 4
  %254 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %255 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %254, i32 0, i32 10
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %4, align 4
  %257 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %258 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %257, i32 0, i32 11
  %259 = load i32, i32* %258, align 8
  store i32 %259, i32* %5, align 4
  %260 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %261 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %260, i32 0, i32 12
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %4, align 4
  %264 = load i32, i32* %3, align 4
  %265 = sub nsw i32 %263, %264
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* %5, align 4
  %268 = sub nsw i32 %266, %267
  %269 = mul nsw i32 %265, %268
  %270 = load i32, i32* %7, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %7, align 4
  br label %272

272:                                              ; preds = %250
  %273 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %274 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %273, i32 0, i32 0
  %275 = load %struct.tilebox*, %struct.tilebox** %274, align 8
  store %struct.tilebox* %275, %struct.tilebox** %2, align 8
  br label %247, !llvm.loop !7

276:                                              ; preds = %247
  %277 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %278 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %277, i32 0, i32 21
  %279 = load %struct.cellbox*, %struct.cellbox** %1, align 8
  %280 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %278, i64 0, i64 %282
  %284 = load %struct.tilebox*, %struct.tilebox** %283, align 8
  store %struct.tilebox* %284, %struct.tilebox** %2, align 8
  %285 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %286 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %285, i32 0, i32 9
  %287 = load i32, i32* %286, align 8
  store i32 %287, i32* %3, align 4
  %288 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %289 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %288, i32 0, i32 10
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %4, align 4
  %291 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %292 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %291, i32 0, i32 11
  %293 = load i32, i32* %292, align 8
  store i32 %293, i32* %5, align 4
  %294 = load %struct.tilebox*, %struct.tilebox** %2, align 8
  %295 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %294, i32 0, i32 12
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* %6, align 4
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* %3, align 4
  %299 = sub nsw i32 %297, %298
  %300 = load i32, i32* @maxWeight, align 4
  %301 = load i32, i32* @maxWeight, align 4
  %302 = mul nsw i32 %300, %301
  %303 = load i32, i32* @aveChanWid, align 4
  %304 = mul nsw i32 %302, %303
  %305 = add nsw i32 %299, %304
  %306 = load i32, i32* %6, align 4
  %307 = load i32, i32* %5, align 4
  %308 = sub nsw i32 %306, %307
  %309 = load i32, i32* @maxWeight, align 4
  %310 = load i32, i32* @maxWeight, align 4
  %311 = mul nsw i32 %309, %310
  %312 = load i32, i32* @aveChanWid, align 4
  %313 = mul nsw i32 %311, %312
  %314 = add nsw i32 %308, %313
  %315 = mul nsw i32 %305, %314
  %316 = load i32, i32* %4, align 4
  %317 = load i32, i32* %3, align 4
  %318 = sub nsw i32 %316, %317
  %319 = load i32, i32* %6, align 4
  %320 = load i32, i32* %5, align 4
  %321 = sub nsw i32 %319, %320
  %322 = mul nsw i32 %318, %321
  %323 = sub nsw i32 %315, %322
  %324 = load i32, i32* %7, align 4
  %325 = add nsw i32 %323, %324
  %326 = sitofp i32 %325 to double
  %327 = load double, double* %10, align 8
  %328 = fadd double %327, %326
  store double %328, double* %10, align 8
  br label %329

329:                                              ; preds = %276, %193
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %8, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %8, align 4
  br label %179, !llvm.loop !8

333:                                              ; preds = %179
  store double 1.050000e+00, double* @expandExtra, align 8
  %334 = load i32, i32* @numcells, align 4
  %335 = icmp slt i32 %334, 10
  br i1 %335, label %336, label %346

336:                                              ; preds = %333
  %337 = load i32, i32* @numcells, align 4
  %338 = sub nsw i32 10, %337
  %339 = sitofp i32 %338 to double
  %340 = load double, double* @expandExtra, align 8
  %341 = call double @llvm.fmuladd.f64(double %339, double 1.000000e-02, double %340)
  store double %341, double* @expandExtra, align 8
  %342 = load double, double* @expandExtra, align 8
  %343 = fcmp ogt double %342, 1.100000e+00
  br i1 %343, label %344, label %345

344:                                              ; preds = %336
  store double 1.100000e+00, double* @expandExtra, align 8
  br label %345

345:                                              ; preds = %344, %336
  br label %346

346:                                              ; preds = %345, %333
  %347 = load double, double* @expandExtra, align 8
  %348 = load double, double* %10, align 8
  %349 = call double @sqrt(double noundef %348) #4
  %350 = fmul double %347, %349
  %351 = fptosi double %350 to i32
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* @blockt, align 4
  store i32 %352, i32* @blockr, align 4
  %353 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %354 = load double, double* @expandExtra, align 8
  %355 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %353, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), double noundef %354)
  %356 = load i32, i32* @blockr, align 4
  %357 = sitofp i32 %356 to double
  %358 = load i32, i32* @numcells, align 4
  %359 = sitofp i32 %358 to double
  %360 = call double @sqrt(double noundef %359) #4
  %361 = fdiv double %357, %360
  %362 = call double @log10(double noundef %361) #4
  store double %362, double* %13, align 8
  %363 = load i32, i32* @core_expansion_given, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %387, label %365

365:                                              ; preds = %346
  %366 = load double, double* %13, align 8
  %367 = fcmp oge double %366, 3.000000e+00
  br i1 %367, label %368, label %387

368:                                              ; preds = %365
  %369 = load double, double* %13, align 8
  %370 = fsub double %369, 3.000000e+00
  %371 = call double @llvm.fmuladd.f64(double 4.000000e-02, double %370, double 2.000000e-02)
  %372 = load double, double* @expandExtra, align 8
  %373 = fadd double %372, %371
  store double %373, double* @expandExtra, align 8
  %374 = load double, double* @expandExtra, align 8
  %375 = fcmp ogt double %374, 1.100000e+00
  br i1 %375, label %376, label %377

376:                                              ; preds = %368
  store double 1.100000e+00, double* @expandExtra, align 8
  br label %377

377:                                              ; preds = %376, %368
  %378 = load double, double* @expandExtra, align 8
  %379 = load double, double* %10, align 8
  %380 = call double @sqrt(double noundef %379) #4
  %381 = fmul double %378, %380
  %382 = fptosi double %381 to i32
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* @blockt, align 4
  store i32 %383, i32* @blockr, align 4
  %384 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %385 = load double, double* @expandExtra, align 8
  %386 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %384, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), double noundef %385)
  br label %387

387:                                              ; preds = %377, %365, %346
  %388 = load i32, i32* @core_expansion_given, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %401

390:                                              ; preds = %387
  %391 = load double, double* @core_expansion, align 8
  store double %391, double* @expandExtra, align 8
  %392 = load double, double* @expandExtra, align 8
  %393 = load double, double* %10, align 8
  %394 = call double @sqrt(double noundef %393) #4
  %395 = fmul double %392, %394
  %396 = fptosi double %395 to i32
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* @blockt, align 4
  store i32 %397, i32* @blockr, align 4
  %398 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %399 = load double, double* @expandExtra, align 8
  %400 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %398, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), double noundef %399)
  br label %401

401:                                              ; preds = %390, %387
  %402 = load double, double* @chipaspect, align 8
  %403 = call double @sqrt(double noundef %402) #4
  %404 = load i32, i32* @blockt, align 4
  %405 = sitofp i32 %404 to double
  %406 = fmul double %403, %405
  %407 = fptosi double %406 to i32
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* @blockt, align 4
  %409 = load double, double* @chipaspect, align 8
  %410 = call double @sqrt(double noundef %409) #4
  %411 = fdiv double 1.000000e+00, %410
  %412 = load i32, i32* @blockr, align 4
  %413 = sitofp i32 %412 to double
  %414 = fmul double %411, %413
  %415 = fptosi double %414 to i32
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* @blockr, align 4
  br label %417

417:                                              ; preds = %401, %145
  %418 = load i32, i32* @maxWeight, align 4
  %419 = load i32, i32* @baseWeight, align 4
  %420 = sub nsw i32 %418, %419
  %421 = sitofp i32 %420 to double
  %422 = load i32, i32* @blockr, align 4
  %423 = sitofp i32 %422 to double
  %424 = fmul double %423, 5.000000e-01
  %425 = fdiv double %421, %424
  store double %425, double* @slopeX, align 8
  %426 = load i32, i32* @maxWeight, align 4
  %427 = load i32, i32* @baseWeight, align 4
  %428 = sub nsw i32 %426, %427
  %429 = sitofp i32 %428 to double
  %430 = load i32, i32* @blockt, align 4
  %431 = sitofp i32 %430 to double
  %432 = fmul double %431, 5.000000e-01
  %433 = fdiv double %429, %432
  store double %433, double* @slopeY, align 8
  %434 = load i32, i32* @baseWeight, align 4
  %435 = sitofp i32 %434 to double
  store double %435, double* @basefactor, align 8
  call void @placepads()
  %436 = load i32, i32* @blockr, align 4
  %437 = load i32, i32* @blockl, align 4
  %438 = add nsw i32 %436, %437
  %439 = sdiv i32 %438, 2
  store i32 %439, i32* @blockmx, align 4
  %440 = load i32, i32* @blockt, align 4
  %441 = load i32, i32* @blockb, align 4
  %442 = add nsw i32 %440, %441
  %443 = sdiv i32 %442, 2
  store i32 %443, i32* @blockmy, align 4
  %444 = load i32, i32* @blockr, align 4
  %445 = load i32, i32* @blockl, align 4
  %446 = sub nsw i32 %444, %445
  %447 = load i32, i32* @numBinsX, align 4
  %448 = sdiv i32 %446, %447
  store i32 %448, i32* @binWidthX, align 4
  %449 = load i32, i32* @blockr, align 4
  %450 = load i32, i32* @blockl, align 4
  %451 = sub nsw i32 %449, %450
  %452 = load i32, i32* @binWidthX, align 4
  %453 = load i32, i32* @numBinsX, align 4
  %454 = mul nsw i32 %452, %453
  %455 = sub nsw i32 %451, %454
  %456 = load i32, i32* @numBinsX, align 4
  %457 = sdiv i32 %456, 2
  %458 = icmp sge i32 %455, %457
  br i1 %458, label %459, label %462

459:                                              ; preds = %417
  %460 = load i32, i32* @binWidthX, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* @binWidthX, align 4
  br label %462

462:                                              ; preds = %459, %417
  %463 = load i32, i32* @blockl, align 4
  %464 = add nsw i32 %463, 1
  %465 = load i32, i32* @binWidthX, align 4
  %466 = sub nsw i32 %464, %465
  store i32 %466, i32* @binOffsetX, align 4
  %467 = load i32, i32* @blockt, align 4
  %468 = load i32, i32* @blockb, align 4
  %469 = sub nsw i32 %467, %468
  %470 = load i32, i32* @numBinsY, align 4
  %471 = sdiv i32 %469, %470
  store i32 %471, i32* @binWidthY, align 4
  %472 = load i32, i32* @blockt, align 4
  %473 = load i32, i32* @blockb, align 4
  %474 = sub nsw i32 %472, %473
  %475 = load i32, i32* @binWidthY, align 4
  %476 = load i32, i32* @numBinsY, align 4
  %477 = mul nsw i32 %475, %476
  %478 = sub nsw i32 %474, %477
  %479 = load i32, i32* @numBinsY, align 4
  %480 = sdiv i32 %479, 2
  %481 = icmp sge i32 %478, %480
  br i1 %481, label %482, label %485

482:                                              ; preds = %462
  %483 = load i32, i32* @binWidthY, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* @binWidthY, align 4
  br label %485

485:                                              ; preds = %482, %462
  %486 = load i32, i32* @blockb, align 4
  %487 = add nsw i32 %486, 1
  %488 = load i32, i32* @binWidthY, align 4
  %489 = sub nsw i32 %487, %488
  store i32 %489, i32* @binOffsetY, align 4
  call void @loadbins(i32 noundef 0)
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #1

declare dso_local void @placepads() #2

declare dso_local void @loadbins(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
