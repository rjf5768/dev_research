; ModuleID = './config2.ll'
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
  br label %1

1:                                                ; preds = %54, %0
  %.07 = phi double [ 0.000000e+00, %0 ], [ %.2, %54 ]
  %.02 = phi i32 [ 1, %0 ], [ %55, %54 ]
  %2 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.02, %2
  br i1 %.not, label %56, label %3

3:                                                ; preds = %1
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %5 = zext i32 %.02 to i64
  %6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %5
  %7 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %14
  %16 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %17 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 11
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 12
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %20, %18
  %26 = sub nsw i32 %24, %22
  %27 = mul nsw i32 %25, %26
  %28 = sitofp i32 %27 to double
  %29 = fadd double %.07, %28
  br label %53

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %33
  %35 = load %struct.tilebox*, %struct.tilebox** %34, align 8
  br label %36

36:                                               ; preds = %38, %30
  %.18 = phi double [ %.07, %30 ], [ %51, %38 ]
  %.pn21 = phi %struct.tilebox* [ %35, %30 ], [ %.0, %38 ]
  %.0.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn21, i64 0, i32 0
  %.0 = load %struct.tilebox*, %struct.tilebox** %.0.in, align 8
  %.not20 = icmp eq %struct.tilebox* %.0, null
  br i1 %.not20, label %52, label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %40, %42
  %44 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 12
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 11
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %45, %47
  %49 = mul nsw i32 %43, %48
  %50 = sitofp i32 %49 to double
  %51 = fadd double %.18, %50
  br label %36, !llvm.loop !4

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %11
  %.2 = phi double [ %29, %11 ], [ %.18, %52 ]
  br label %54

54:                                               ; preds = %53
  %55 = add nuw nsw i32 %.02, 1
  br label %1, !llvm.loop !6

56:                                               ; preds = %1
  %57 = load i32, i32* @coreGiven, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = call double @sqrt(double noundef %.07) #4
  %61 = fptosi double %60 to i32
  store i32 %61, i32* @blockt, align 4
  store i32 %61, i32* @blockr, align 4
  %62 = load i32, i32* @perim, align 4
  %63 = sdiv i32 %62, 2
  %.neg19 = mul i32 %61, -2
  %64 = add i32 %.neg19, %63
  store i32 %64, i32* @totChanLen, align 4
  %65 = load i32, i32* @totNetLen, align 4
  %66 = sitofp i32 %65 to double
  %67 = sitofp i32 %64 to double
  %68 = fdiv double %66, %67
  %69 = load i32, i32* @layersFactor, align 4
  %70 = sitofp i32 %69 to double
  %71 = fdiv double %68, %70
  br label %85

72:                                               ; preds = %56
  %73 = call double @sqrt(double noundef %.07) #4
  %74 = fptosi double %73 to i32
  %75 = load i32, i32* @perim, align 4
  %76 = sdiv i32 %75, 2
  %.neg = mul i32 %74, -2
  %77 = add i32 %.neg, %76
  store i32 %77, i32* @totChanLen, align 4
  %78 = load i32, i32* @totNetLen, align 4
  %79 = sitofp i32 %78 to double
  %80 = sitofp i32 %77 to double
  %81 = fdiv double %79, %80
  %82 = load i32, i32* @layersFactor, align 4
  %83 = sitofp i32 %82 to double
  %84 = fdiv double %81, %83
  br label %85

85:                                               ; preds = %72, %59
  %.04 = phi double [ %71, %59 ], [ %84, %72 ]
  %86 = load i32, i32* @defaultTracks, align 4
  %87 = sitofp i32 %86 to double
  %88 = fadd double %.04, %87
  %89 = fptosi double %88 to i32
  %90 = add nsw i32 %89, 3
  %91 = load i32, i32* @trackspacing, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* @wire_est_factor, align 4
  %94 = sitofp i32 %93 to double
  %95 = fdiv double %94, 1.000000e+01
  %96 = fadd double %95, 1.800000e+00
  %97 = sitofp i32 %92 to double
  %98 = fdiv double %97, %96
  %99 = fptosi double %98 to i32
  %100 = add nsw i32 %99, 2
  store i32 %100, i32* @aveChanWid, align 4
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %102 = load i32, i32* @totChanLen, align 4
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 noundef %102) #4
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %104, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 noundef %92) #4
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %107 = load i32, i32* @aveChanWid, align 4
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %106, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 noundef %107) #4
  %109 = load i32, i32* @coreGiven, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %272

111:                                              ; preds = %85
  br label %112

112:                                              ; preds = %197, %111
  %.05 = phi double [ 0.000000e+00, %111 ], [ %.16, %197 ]
  %.13 = phi i32 [ 1, %111 ], [ %198, %197 ]
  %113 = load i32, i32* @numcells, align 4
  %.not11 = icmp sgt i32 %.13, %113
  br i1 %.not11, label %199, label %114

114:                                              ; preds = %112
  %115 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %116 = zext i32 %.13 to i64
  %117 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %115, i64 %116
  %118 = load %struct.cellbox*, %struct.cellbox** %117, align 8
  %119 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %118, i64 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %147

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %118, i64 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %118, i64 0, i32 21, i64 %125
  %127 = load %struct.tilebox*, %struct.tilebox** %126, align 8
  %128 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %127, i64 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %127, i64 0, i32 10
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %127, i64 0, i32 11
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %127, i64 0, i32 12
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %131, %129
  %137 = load i32, i32* @maxWeight, align 4
  %138 = mul nsw i32 %137, %137
  %139 = load i32, i32* @aveChanWid, align 4
  %140 = mul nsw i32 %138, %139
  %141 = add nsw i32 %136, %140
  %142 = sub nsw i32 %135, %133
  %143 = mul nsw i32 %137, %137
  %144 = mul nsw i32 %143, %139
  %145 = add nsw i32 %142, %144
  %146 = mul nsw i32 %141, %145
  br label %196

147:                                              ; preds = %114
  %148 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %118, i64 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %118, i64 0, i32 21, i64 %150
  %152 = load %struct.tilebox*, %struct.tilebox** %151, align 8
  br label %153

153:                                              ; preds = %155, %147
  %.01 = phi i32 [ 0, %147 ], [ %167, %155 ]
  %.pn18 = phi %struct.tilebox* [ %152, %147 ], [ %.1, %155 ]
  %.1.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn18, i64 0, i32 0
  %.1 = load %struct.tilebox*, %struct.tilebox** %.1.in, align 8
  %.not15 = icmp eq %struct.tilebox* %.1, null
  br i1 %.not15, label %168, label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 10
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 9
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %157, %159
  %161 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 11
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %162, %164
  %166 = mul nsw i32 %160, %165
  %167 = add nsw i32 %.01, %166
  br label %153, !llvm.loop !7

168:                                              ; preds = %153
  %169 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %118, i64 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %118, i64 0, i32 21, i64 %171
  %173 = load %struct.tilebox*, %struct.tilebox** %172, align 8
  %174 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %173, i64 0, i32 9
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %173, i64 0, i32 10
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %173, i64 0, i32 11
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %173, i64 0, i32 12
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %177, %175
  %183 = load i32, i32* @maxWeight, align 4
  %184 = mul nsw i32 %183, %183
  %185 = load i32, i32* @aveChanWid, align 4
  %186 = mul nsw i32 %184, %185
  %187 = add nsw i32 %182, %186
  %188 = sub nsw i32 %181, %179
  %189 = mul nsw i32 %183, %183
  %190 = mul nsw i32 %189, %185
  %191 = add nsw i32 %188, %190
  %192 = mul nsw i32 %187, %191
  %193 = sub nsw i32 %177, %175
  %.neg16 = sub i32 %179, %181
  %.neg17 = mul i32 %.neg16, %193
  %194 = add i32 %.neg17, %192
  %195 = add nsw i32 %194, %.01
  br label %196

196:                                              ; preds = %168, %122
  %.pn.in = phi i32 [ %146, %122 ], [ %195, %168 ]
  br label %197

197:                                              ; preds = %196
  %.pn = sitofp i32 %.pn.in to double
  %.16 = fadd double %.05, %.pn
  %198 = add nuw nsw i32 %.13, 1
  br label %112, !llvm.loop !8

199:                                              ; preds = %112
  store double 1.050000e+00, double* @expandExtra, align 8
  %200 = load i32, i32* @numcells, align 4
  %201 = icmp slt i32 %200, 10
  br i1 %201, label %202, label %211

202:                                              ; preds = %199
  %203 = load i32, i32* @numcells, align 4
  %204 = sub nsw i32 10, %203
  %205 = sitofp i32 %204 to double
  %206 = load double, double* @expandExtra, align 8
  %207 = call double @llvm.fmuladd.f64(double %205, double 1.000000e-02, double %206)
  %208 = fcmp ogt double %207, 1.100000e+00
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %210

210:                                              ; preds = %209, %202
  %storemerge14 = phi double [ 1.100000e+00, %209 ], [ %207, %202 ]
  store double %storemerge14, double* @expandExtra, align 8
  br label %211

211:                                              ; preds = %210, %199
  %212 = load double, double* @expandExtra, align 8
  %213 = call double @sqrt(double noundef %.05) #4
  %214 = fmul double %212, %213
  %215 = fptosi double %214 to i32
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* @blockt, align 4
  store i32 %216, i32* @blockr, align 4
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %218 = load double, double* @expandExtra, align 8
  %219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %217, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), double noundef %218) #4
  %220 = load i32, i32* @blockr, align 4
  %221 = sitofp i32 %220 to double
  %222 = load i32, i32* @numcells, align 4
  %223 = sitofp i32 %222 to double
  %224 = call double @sqrt(double noundef %223) #4
  %225 = fdiv double %221, %224
  %226 = call double @log10(double noundef %225) #4
  %227 = load i32, i32* @core_expansion_given, align 4
  %.not12 = icmp eq i32 %227, 0
  br i1 %.not12, label %228, label %245

228:                                              ; preds = %211
  %229 = fcmp ult double %226, 3.000000e+00
  br i1 %229, label %245, label %230

230:                                              ; preds = %228
  %231 = fadd double %226, -3.000000e+00
  %232 = call double @llvm.fmuladd.f64(double %231, double 4.000000e-02, double 2.000000e-02)
  %233 = load double, double* @expandExtra, align 8
  %234 = fadd double %233, %232
  %235 = fcmp ogt double %234, 1.100000e+00
  br i1 %235, label %236, label %237

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236, %230
  %storemerge = phi double [ 1.100000e+00, %236 ], [ %234, %230 ]
  store double %storemerge, double* @expandExtra, align 8
  %238 = call double @sqrt(double noundef %.05) #4
  %239 = fmul double %storemerge, %238
  %240 = fptosi double %239 to i32
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* @blockt, align 4
  store i32 %241, i32* @blockr, align 4
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %243 = load double, double* @expandExtra, align 8
  %244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %242, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), double noundef %243) #4
  br label %245

245:                                              ; preds = %237, %228, %211
  %246 = load i32, i32* @core_expansion_given, align 4
  %.not13 = icmp eq i32 %246, 0
  br i1 %.not13, label %256, label %247

247:                                              ; preds = %245
  %248 = load double, double* @core_expansion, align 8
  store double %248, double* @expandExtra, align 8
  %249 = call double @sqrt(double noundef %.05) #4
  %250 = fmul double %248, %249
  %251 = fptosi double %250 to i32
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* @blockt, align 4
  store i32 %252, i32* @blockr, align 4
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %254 = load double, double* @expandExtra, align 8
  %255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %253, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), double noundef %254) #4
  br label %256

256:                                              ; preds = %247, %245
  %257 = load double, double* @chipaspect, align 8
  %258 = call double @sqrt(double noundef %257) #4
  %259 = load i32, i32* @blockt, align 4
  %260 = sitofp i32 %259 to double
  %261 = fmul double %258, %260
  %262 = fptosi double %261 to i32
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* @blockt, align 4
  %264 = load double, double* @chipaspect, align 8
  %265 = call double @sqrt(double noundef %264) #4
  %266 = fdiv double 1.000000e+00, %265
  %267 = load i32, i32* @blockr, align 4
  %268 = sitofp i32 %267 to double
  %269 = fmul double %266, %268
  %270 = fptosi double %269 to i32
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* @blockr, align 4
  br label %272

272:                                              ; preds = %256, %85
  %273 = load i32, i32* @maxWeight, align 4
  %274 = load i32, i32* @baseWeight, align 4
  %275 = sub nsw i32 %273, %274
  %276 = sitofp i32 %275 to double
  %277 = load i32, i32* @blockr, align 4
  %278 = sitofp i32 %277 to double
  %279 = fmul double %278, 5.000000e-01
  %280 = fdiv double %276, %279
  store double %280, double* @slopeX, align 8
  %281 = load i32, i32* @maxWeight, align 4
  %282 = load i32, i32* @baseWeight, align 4
  %283 = sub nsw i32 %281, %282
  %284 = sitofp i32 %283 to double
  %285 = load i32, i32* @blockt, align 4
  %286 = sitofp i32 %285 to double
  %287 = fmul double %286, 5.000000e-01
  %288 = fdiv double %284, %287
  store double %288, double* @slopeY, align 8
  %289 = load i32, i32* @baseWeight, align 4
  %290 = sitofp i32 %289 to double
  store double %290, double* @basefactor, align 8
  call void @placepads() #4
  %291 = load i32, i32* @blockr, align 4
  %292 = load i32, i32* @blockl, align 4
  %293 = add nsw i32 %291, %292
  %294 = sdiv i32 %293, 2
  store i32 %294, i32* @blockmx, align 4
  %295 = load i32, i32* @blockt, align 4
  %296 = load i32, i32* @blockb, align 4
  %297 = add nsw i32 %295, %296
  %298 = sdiv i32 %297, 2
  store i32 %298, i32* @blockmy, align 4
  %299 = load i32, i32* @blockr, align 4
  %300 = load i32, i32* @blockl, align 4
  %301 = sub nsw i32 %299, %300
  %302 = load i32, i32* @numBinsX, align 4
  %303 = sdiv i32 %301, %302
  store i32 %303, i32* @binWidthX, align 4
  %304 = mul nsw i32 %303, %302
  %305 = add i32 %300, %304
  %306 = sub i32 %299, %305
  %307 = sdiv i32 %302, 2
  %.not9 = icmp slt i32 %306, %307
  br i1 %.not9, label %311, label %308

308:                                              ; preds = %272
  %309 = load i32, i32* @binWidthX, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* @binWidthX, align 4
  br label %311

311:                                              ; preds = %308, %272
  %312 = load i32, i32* @blockl, align 4
  %313 = add nsw i32 %312, 1
  %314 = load i32, i32* @binWidthX, align 4
  %315 = sub nsw i32 %313, %314
  store i32 %315, i32* @binOffsetX, align 4
  %316 = load i32, i32* @blockt, align 4
  %317 = load i32, i32* @blockb, align 4
  %318 = sub nsw i32 %316, %317
  %319 = load i32, i32* @numBinsY, align 4
  %320 = sdiv i32 %318, %319
  store i32 %320, i32* @binWidthY, align 4
  %321 = mul nsw i32 %320, %319
  %322 = add i32 %317, %321
  %323 = sub i32 %316, %322
  %324 = sdiv i32 %319, 2
  %.not10 = icmp slt i32 %323, %324
  br i1 %.not10, label %328, label %325

325:                                              ; preds = %311
  %326 = load i32, i32* @binWidthY, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* @binWidthY, align 4
  br label %328

328:                                              ; preds = %325, %311
  %329 = load i32, i32* @blockb, align 4
  %330 = add nsw i32 %329, 1
  %331 = load i32, i32* @binWidthY, align 4
  %332 = sub nsw i32 %330, %331
  store i32 %332, i32* @binOffsetY, align 4
  call void @loadbins(i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #1

declare dso_local void @placepads() #2

declare dso_local void @loadbins(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
