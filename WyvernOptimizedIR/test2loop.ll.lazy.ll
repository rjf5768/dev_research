; ModuleID = './test2loop.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/test2loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@totFunc = external dso_local global double, align 8
@totPen = external dso_local global double, align 8
@T = external dso_local global double, align 8
@bdxlength = external dso_local global i32, align 4
@bdylength = external dso_local global i32, align 4
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"   compared to bdxlength:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in y\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"   compared to bdylength:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"scalex:%d  scaley:%d\0A\00", align 1
@numcells = external dso_local global i32, align 4
@randVar = external dso_local global i32, align 4
@bigcell = external dso_local global i32, align 4
@toobig = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@gridGiven = external dso_local global i32, align 4
@newxx = external dso_local global i32, align 4
@newyy = external dso_local global i32, align 4
@funccost = external dso_local global i32, align 4
@penalty = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2loop(i32 noundef %0) #0 {
  store double 0.000000e+00, double* @totFunc, align 8
  store double 0.000000e+00, double* @totPen, align 8
  %2 = load double, double* @T, align 8
  %3 = call double @log10(double noundef %2) #3
  %mul = fmul double %3, 2.000000e+00
  %exp2 = call double @exp2(double %mul) #3
  %4 = fmul double %exp2, 0x3F50000000000000
  %5 = load i32, i32* @bdxlength, align 4
  %6 = sitofp i32 %5 to double
  %7 = fmul double %4, %6
  %8 = fptosi double %7 to i32
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @bdxlength, align 4
  %13 = icmp slt i32 %12, %8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @bdxlength, align 4
  br label %16

16:                                               ; preds = %14, %11
  %.09 = phi i32 [ %15, %14 ], [ %8, %11 ]
  br label %17

17:                                               ; preds = %16, %10
  %.110 = phi i32 [ 3, %10 ], [ %.09, %16 ]
  %18 = load double, double* @T, align 8
  %19 = call double @log10(double noundef %18) #3
  %mul32 = fmul double %19, 2.000000e+00
  %exp233 = call double @exp2(double %mul32) #3
  %20 = fmul double %exp233, 0x3F50000000000000
  %21 = load i32, i32* @bdylength, align 4
  %22 = sitofp i32 %21 to double
  %23 = fmul double %20, %22
  %24 = fptosi double %23 to i32
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %33

27:                                               ; preds = %17
  %28 = load i32, i32* @bdylength, align 4
  %29 = icmp slt i32 %28, %24
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @bdylength, align 4
  br label %32

32:                                               ; preds = %30, %27
  %.011 = phi i32 [ %31, %30 ], [ %24, %27 ]
  br label %33

33:                                               ; preds = %32, %26
  %.112 = phi i32 [ 3, %26 ], [ %.011, %32 ]
  %34 = sdiv i32 %.110, 3
  %35 = sdiv i32 %.112, 3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef %.110) #3
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %39 = load i32, i32* @bdxlength, align 4
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef %39) #3
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.112) #3
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %44 = load i32, i32* @bdylength, align 4
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef %44) #3
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef %34, i32 noundef %35) #3
  br label %.outer

.outer:                                           ; preds = %463, %33
  %.013.ph = phi i32 [ %.10, %463 ], [ 0, %33 ]
  br label %48

48:                                               ; preds = %.backedge, %.outer
  %49 = icmp slt i32 %.013.ph, %0
  br i1 %49, label %50, label %464

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %62, %50
  %52 = load i32, i32* @numcells, align 4
  %53 = sitofp i32 %52 to double
  %54 = load i32, i32* @randVar, align 4
  %55 = mul nsw i32 %54, 1103515245
  %56 = add nsw i32 %55, 12345
  store i32 %56, i32* @randVar, align 4
  %57 = and i32 %56, 2147483647
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %58, 0x41DFFFFFFFC00000
  %60 = fmul double %59, %53
  %61 = fptosi double %60 to i32
  br label %62

62:                                               ; preds = %51
  %63 = add nsw i32 %61, 1
  %64 = load i32, i32* @numcells, align 4
  %65 = icmp eq i32 %64, %61
  br i1 %65, label %51, label %66, !llvm.loop !4

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i32, i32* @bigcell, align 4
  %69 = sitofp i32 %68 to double
  %70 = load i32, i32* @randVar, align 4
  %71 = mul nsw i32 %70, 1103515245
  %72 = add nsw i32 %71, 12345
  store i32 %72, i32* @randVar, align 4
  %73 = and i32 %72, 2147483647
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %74, 0x41DFFFFFFFC00000
  %76 = fmul double %75, %69
  %77 = fptosi double %76 to i32
  %78 = add nsw i32 %77, 1
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* @toobig, align 4
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %67, label %82, !llvm.loop !6

82:                                               ; preds = %79
  %83 = icmp eq i32 %61, %77
  br i1 %83, label %84, label %85

84:                                               ; preds = %82
  br label %.backedge

.backedge:                                        ; preds = %84, %96, %203, %295
  br label %48, !llvm.loop !7

85:                                               ; preds = %82
  %86 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %87 = sext i32 %63 to i64
  %88 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %86, i64 %87
  %89 = load %struct.cellbox*, %struct.cellbox** %88, align 8
  %90 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %92, %77
  br i1 %.not, label %278, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 1
  %95 = load i32, i32* %94, align 8
  %.not39 = icmp eq i32 %95, 0
  br i1 %.not39, label %97, label %96

96:                                               ; preds = %93
  br label %.backedge

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @blockl, align 4
  %103 = sub nsw i32 %99, %.110
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32, i32* @blockl, align 4
  %107 = sub nsw i32 %106, %99
  %108 = sdiv i32 %107, %34
  br label %121

109:                                              ; preds = %97
  %110 = load i32, i32* @blockr, align 4
  %111 = sub nsw i32 %99, %.110
  %.not40 = icmp sgt i32 %110, %111
  br i1 %.not40, label %116, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @blockr, align 4
  %114 = sub nsw i32 %113, %99
  %115 = sdiv i32 %114, %34
  br label %119

116:                                              ; preds = %109
  %117 = sdiv i32 %.110, %34
  %118 = sub nsw i32 0, %117
  br label %119

119:                                              ; preds = %116, %112
  %120 = phi i32 [ %115, %112 ], [ %118, %116 ]
  br label %121

121:                                              ; preds = %119, %105
  %122 = phi i32 [ %108, %105 ], [ %120, %119 ]
  %123 = load i32, i32* @blockr, align 4
  %124 = add nsw i32 %99, %.110
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @blockr, align 4
  %128 = sub nsw i32 %127, %99
  br label %137

129:                                              ; preds = %121
  %130 = load i32, i32* @blockl, align 4
  %131 = add nsw i32 %99, %.110
  %.not41 = icmp slt i32 %130, %131
  br i1 %.not41, label %135, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @blockl, align 4
  %134 = sub nsw i32 %133, %99
  br label %136

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %132
  %.pn = phi i32 [ %134, %132 ], [ %.110, %135 ]
  br label %137

137:                                              ; preds = %136, %126
  %.pn42 = phi i32 [ %128, %126 ], [ %.pn, %136 ]
  %138 = sdiv i32 %.pn42, %34
  %139 = load i32, i32* @blockb, align 4
  %140 = sub nsw i32 %101, %.112
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* @blockb, align 4
  %144 = sub nsw i32 %143, %101
  %145 = sdiv i32 %144, %35
  br label %158

146:                                              ; preds = %137
  %147 = load i32, i32* @blockt, align 4
  %148 = sub nsw i32 %101, %.112
  %.not43 = icmp sgt i32 %147, %148
  br i1 %.not43, label %153, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* @blockt, align 4
  %151 = sub nsw i32 %150, %101
  %152 = sdiv i32 %151, %35
  br label %156

153:                                              ; preds = %146
  %154 = sdiv i32 %.112, %35
  %155 = sub nsw i32 0, %154
  br label %156

156:                                              ; preds = %153, %149
  %157 = phi i32 [ %152, %149 ], [ %155, %153 ]
  br label %158

158:                                              ; preds = %156, %142
  %159 = phi i32 [ %145, %142 ], [ %157, %156 ]
  %160 = load i32, i32* @blockt, align 4
  %161 = add nsw i32 %101, %.112
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* @blockt, align 4
  %165 = sub nsw i32 %164, %101
  br label %174

166:                                              ; preds = %158
  %167 = load i32, i32* @blockb, align 4
  %168 = add nsw i32 %101, %.112
  %.not44 = icmp slt i32 %167, %168
  br i1 %.not44, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* @blockb, align 4
  %171 = sub nsw i32 %170, %101
  br label %173

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172, %169
  %.pn45 = phi i32 [ %171, %169 ], [ %.112, %172 ]
  br label %174

174:                                              ; preds = %173, %163
  %.pn46 = phi i32 [ %165, %163 ], [ %.pn45, %173 ]
  %175 = sdiv i32 %.pn46, %35
  %176 = sub nsw i32 %138, %122
  %177 = add nsw i32 %176, 1
  %178 = sitofp i32 %177 to double
  %179 = load i32, i32* @randVar, align 4
  %180 = mul nsw i32 %179, 1103515245
  %181 = add nsw i32 %180, 12345
  store i32 %181, i32* @randVar, align 4
  %182 = and i32 %181, 2147483647
  %183 = sitofp i32 %182 to double
  %184 = fdiv double %183, 0x41DFFFFFFFC00000
  %185 = fmul double %184, %178
  %186 = fptosi double %185 to i32
  %187 = add nsw i32 %122, %186
  %188 = sub nsw i32 %175, %159
  %189 = add nsw i32 %188, 1
  %190 = sitofp i32 %189 to double
  %191 = load i32, i32* @randVar, align 4
  %192 = mul nsw i32 %191, 1103515245
  %193 = add nsw i32 %192, 12345
  store i32 %193, i32* @randVar, align 4
  %194 = and i32 %193, 2147483647
  %195 = sitofp i32 %194 to double
  %196 = fdiv double %195, 0x41DFFFFFFFC00000
  %197 = fmul double %196, %190
  %198 = fptosi double %197 to i32
  %199 = add nsw i32 %159, %198
  %200 = icmp eq i32 %187, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %174
  %202 = icmp eq i32 %199, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %201
  br label %.backedge

204:                                              ; preds = %201, %174
  %205 = mul nsw i32 %34, %187
  %206 = add nsw i32 %99, %205
  %207 = mul nsw i32 %35, %199
  %208 = add nsw i32 %101, %207
  %209 = load i32, i32* @gridGiven, align 4
  %.not47 = icmp eq i32 %209, 0
  br i1 %.not47, label %230, label %210

210:                                              ; preds = %204
  %211 = sext i32 %91 to i64
  %212 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 21, i64 %211
  %213 = load %struct.tilebox*, %struct.tilebox** %212, align 8
  %214 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %213, i64 0, i32 17
  %215 = load %struct.termbox*, %struct.termbox** %214, align 8
  %216 = getelementptr inbounds %struct.termbox, %struct.termbox* %215, i64 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %206, %217
  %219 = getelementptr inbounds %struct.termbox, %struct.termbox* %215, i64 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %208, %220
  call void @forceGrid(i32 noundef %218, i32 noundef %221) #3
  %222 = load i32, i32* @newxx, align 4
  %223 = getelementptr inbounds %struct.termbox, %struct.termbox* %215, i64 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sub nsw i32 %222, %224
  %226 = load i32, i32* @newyy, align 4
  %227 = getelementptr inbounds %struct.termbox, %struct.termbox* %215, i64 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %226, %228
  br label %230

230:                                              ; preds = %210, %204
  %.018 = phi i32 [ %229, %210 ], [ %208, %204 ]
  %.017 = phi i32 [ %225, %210 ], [ %206, %204 ]
  %231 = call i32 @usite1(i32 noundef %63, i32 noundef %.017, i32 noundef %.018) #3
  %.not48 = icmp eq i32 %231, 0
  br i1 %.not48, label %242, label %232

232:                                              ; preds = %230
  %233 = add nsw i32 %.013.ph, 1
  %234 = load i32, i32* @funccost, align 4
  %235 = sitofp i32 %234 to double
  %236 = load double, double* @totFunc, align 8
  %237 = fadd double %236, %235
  store double %237, double* @totFunc, align 8
  %238 = load i32, i32* @penalty, align 4
  %239 = sitofp i32 %238 to double
  %240 = load double, double* @totPen, align 8
  %241 = fadd double %240, %239
  store double %241, double* @totPen, align 8
  br label %277

242:                                              ; preds = %230
  %243 = call i32 @newOrient(%struct.cellbox* noundef %89, i32 noundef 4) #3
  %244 = icmp sgt i32 %243, -1
  br i1 %244, label %245, label %258

245:                                              ; preds = %242
  %246 = call i32 @usiteo1(i32 noundef %63, i32 noundef %.017, i32 noundef %.018, i32 noundef %243) #3
  %.not51 = icmp eq i32 %246, 0
  br i1 %.not51, label %257, label %247

247:                                              ; preds = %245
  %248 = add nsw i32 %.013.ph, 1
  %249 = load i32, i32* @funccost, align 4
  %250 = sitofp i32 %249 to double
  %251 = load double, double* @totFunc, align 8
  %252 = fadd double %251, %250
  store double %252, double* @totFunc, align 8
  %253 = load i32, i32* @penalty, align 4
  %254 = sitofp i32 %253 to double
  %255 = load double, double* @totPen, align 8
  %256 = fadd double %255, %254
  store double %256, double* @totPen, align 8
  br label %257

257:                                              ; preds = %247, %245
  %.015 = phi i32 [ 0, %247 ], [ 1, %245 ]
  %.114 = phi i32 [ %248, %247 ], [ %.013.ph, %245 ]
  br label %258

258:                                              ; preds = %257, %242
  %.116 = phi i32 [ %.015, %257 ], [ 1, %242 ]
  %.2 = phi i32 [ %.114, %257 ], [ %.013.ph, %242 ]
  %.not49 = icmp eq i32 %.116, 0
  br i1 %.not49, label %276, label %259

259:                                              ; preds = %258
  %260 = call i32 @newOrient(%struct.cellbox* noundef %89, i32 noundef 8) #3
  %261 = icmp sgt i32 %260, -1
  br i1 %261, label %262, label %275

262:                                              ; preds = %259
  %263 = call i32 @usite0(i32 noundef %63, i32 noundef %260) #3
  %.not50 = icmp eq i32 %263, 0
  br i1 %.not50, label %274, label %264

264:                                              ; preds = %262
  %265 = add nsw i32 %.2, 1
  %266 = load i32, i32* @funccost, align 4
  %267 = sitofp i32 %266 to double
  %268 = load double, double* @totFunc, align 8
  %269 = fadd double %268, %267
  store double %269, double* @totFunc, align 8
  %270 = load i32, i32* @penalty, align 4
  %271 = sitofp i32 %270 to double
  %272 = load double, double* @totPen, align 8
  %273 = fadd double %272, %271
  store double %273, double* @totPen, align 8
  br label %274

274:                                              ; preds = %264, %262
  %.3 = phi i32 [ %265, %264 ], [ %.2, %262 ]
  br label %275

275:                                              ; preds = %274, %259
  %.4 = phi i32 [ %.3, %274 ], [ %.2, %259 ]
  br label %276

276:                                              ; preds = %275, %258
  %.5 = phi i32 [ %.4, %275 ], [ %.2, %258 ]
  br label %277

277:                                              ; preds = %276, %232
  %.6 = phi i32 [ %233, %232 ], [ %.5, %276 ]
  br label %463

278:                                              ; preds = %85
  %279 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %280 = sext i32 %78 to i64
  %281 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %279, i64 %280
  %282 = load %struct.cellbox*, %struct.cellbox** %281, align 8
  %283 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %284, -1
  br i1 %285, label %295, label %286

286:                                              ; preds = %278
  %287 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %295, label %290

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 1
  %294 = load i32, i32* %293, align 8
  %.not34 = icmp eq i32 %292, %294
  br i1 %.not34, label %296, label %295

295:                                              ; preds = %290, %286, %278
  br label %.backedge

296:                                              ; preds = %290
  %297 = load i32, i32* @gridGiven, align 4
  %.not35 = icmp eq i32 %297, 0
  br i1 %.not35, label %347, label %298

298:                                              ; preds = %296
  %299 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 5
  %300 = load i32, i32* %299, align 8
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 21, i64 %301
  %303 = load %struct.tilebox*, %struct.tilebox** %302, align 8
  %304 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %303, i64 0, i32 17
  %305 = load %struct.termbox*, %struct.termbox** %304, align 8
  %306 = sext i32 %91 to i64
  %307 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 21, i64 %306
  %308 = load %struct.tilebox*, %struct.tilebox** %307, align 8
  %309 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %308, i64 0, i32 17
  %310 = load %struct.termbox*, %struct.termbox** %309, align 8
  %311 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = getelementptr inbounds %struct.termbox, %struct.termbox* %310, i64 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = add nsw i32 %312, %314
  %316 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = getelementptr inbounds %struct.termbox, %struct.termbox* %310, i64 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %317, %319
  call void @forceGrid(i32 noundef %315, i32 noundef %320) #3
  %321 = load i32, i32* @newxx, align 4
  %322 = getelementptr inbounds %struct.termbox, %struct.termbox* %310, i64 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = sub nsw i32 %321, %323
  %325 = load i32, i32* @newyy, align 4
  %326 = getelementptr inbounds %struct.termbox, %struct.termbox* %310, i64 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = sub nsw i32 %325, %327
  %329 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = getelementptr inbounds %struct.termbox, %struct.termbox* %305, i64 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = add nsw i32 %330, %332
  %334 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = getelementptr inbounds %struct.termbox, %struct.termbox* %305, i64 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = add nsw i32 %335, %337
  call void @forceGrid(i32 noundef %333, i32 noundef %338) #3
  %339 = load i32, i32* @newxx, align 4
  %340 = getelementptr inbounds %struct.termbox, %struct.termbox* %305, i64 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = sub nsw i32 %339, %341
  %343 = load i32, i32* @newyy, align 4
  %344 = getelementptr inbounds %struct.termbox, %struct.termbox* %305, i64 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = sub nsw i32 %343, %345
  br label %356

347:                                              ; preds = %296
  %348 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 3
  %355 = load i32, i32* %354, align 8
  br label %356

356:                                              ; preds = %347, %298
  %.05 = phi i32 [ %324, %298 ], [ %349, %347 ]
  %.03 = phi i32 [ %328, %298 ], [ %351, %347 ]
  %.01 = phi i32 [ %342, %298 ], [ %353, %347 ]
  %.0 = phi i32 [ %346, %298 ], [ %355, %347 ]
  %357 = call i32 @usite2(i32 noundef %63, i32 noundef %78, i32 noundef %.05, i32 noundef %.03, i32 noundef %.01, i32 noundef %.0) #3
  %.not36 = icmp eq i32 %357, 0
  br i1 %.not36, label %368, label %358

358:                                              ; preds = %356
  %359 = add nsw i32 %.013.ph, 1
  %360 = load i32, i32* @funccost, align 4
  %361 = sitofp i32 %360 to double
  %362 = load double, double* @totFunc, align 8
  %363 = fadd double %362, %361
  store double %363, double* @totFunc, align 8
  %364 = load i32, i32* @penalty, align 4
  %365 = sitofp i32 %364 to double
  %366 = load double, double* @totPen, align 8
  %367 = fadd double %366, %365
  store double %367, double* @totPen, align 8
  br label %462

368:                                              ; preds = %356
  %369 = call i32 @newOrient(%struct.cellbox* noundef %89, i32 noundef 4) #3
  %370 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %371 = sext i32 %78 to i64
  %372 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %370, i64 %371
  %373 = load %struct.cellbox*, %struct.cellbox** %372, align 8
  %374 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %373, i64 0, i32 5
  %375 = load i32, i32* %374, align 8
  %376 = sext i32 %78 to i64
  %377 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %370, i64 %376
  %378 = load %struct.cellbox*, %struct.cellbox** %377, align 8
  %379 = call i32 @newOrient(%struct.cellbox* noundef %378, i32 noundef 4) #3
  %380 = icmp sgt i32 %369, -1
  br i1 %380, label %383, label %381

381:                                              ; preds = %368
  %382 = icmp sgt i32 %379, -1
  br i1 %382, label %383, label %461

383:                                              ; preds = %381, %368
  %384 = icmp slt i32 %369, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %383
  br label %390

386:                                              ; preds = %383
  %387 = icmp slt i32 %379, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %386
  br label %389

389:                                              ; preds = %388, %386
  %.07 = phi i32 [ %375, %388 ], [ %379, %386 ]
  br label %390

390:                                              ; preds = %389, %385
  %.019 = phi i32 [ %91, %385 ], [ %369, %389 ]
  %.18 = phi i32 [ %379, %385 ], [ %.07, %389 ]
  %391 = load i32, i32* @gridGiven, align 4
  %.not37 = icmp eq i32 %391, 0
  br i1 %.not37, label %439, label %392

392:                                              ; preds = %390
  %393 = sext i32 %.18 to i64
  %394 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 21, i64 %393
  %395 = load %struct.tilebox*, %struct.tilebox** %394, align 8
  %396 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %395, i64 0, i32 17
  %397 = load %struct.termbox*, %struct.termbox** %396, align 8
  %398 = sext i32 %.019 to i64
  %399 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 21, i64 %398
  %400 = load %struct.tilebox*, %struct.tilebox** %399, align 8
  %401 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %400, i64 0, i32 17
  %402 = load %struct.termbox*, %struct.termbox** %401, align 8
  %403 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 2
  %404 = load i32, i32* %403, align 4
  %405 = getelementptr inbounds %struct.termbox, %struct.termbox* %402, i64 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = add nsw i32 %404, %406
  %408 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 3
  %409 = load i32, i32* %408, align 8
  %410 = getelementptr inbounds %struct.termbox, %struct.termbox* %402, i64 0, i32 2
  %411 = load i32, i32* %410, align 4
  %412 = add nsw i32 %409, %411
  call void @forceGrid(i32 noundef %407, i32 noundef %412) #3
  %413 = load i32, i32* @newxx, align 4
  %414 = getelementptr inbounds %struct.termbox, %struct.termbox* %402, i64 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = sub nsw i32 %413, %415
  %417 = load i32, i32* @newyy, align 4
  %418 = getelementptr inbounds %struct.termbox, %struct.termbox* %402, i64 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = sub nsw i32 %417, %419
  %421 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 2
  %422 = load i32, i32* %421, align 4
  %423 = getelementptr inbounds %struct.termbox, %struct.termbox* %397, i64 0, i32 1
  %424 = load i32, i32* %423, align 8
  %425 = add nsw i32 %422, %424
  %426 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 3
  %427 = load i32, i32* %426, align 8
  %428 = getelementptr inbounds %struct.termbox, %struct.termbox* %397, i64 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %427, %429
  call void @forceGrid(i32 noundef %425, i32 noundef %430) #3
  %431 = load i32, i32* @newxx, align 4
  %432 = getelementptr inbounds %struct.termbox, %struct.termbox* %397, i64 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = sub nsw i32 %431, %433
  %435 = load i32, i32* @newyy, align 4
  %436 = getelementptr inbounds %struct.termbox, %struct.termbox* %397, i64 0, i32 2
  %437 = load i32, i32* %436, align 4
  %438 = sub nsw i32 %435, %437
  br label %448

439:                                              ; preds = %390
  %440 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 2
  %441 = load i32, i32* %440, align 4
  %442 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 3
  %443 = load i32, i32* %442, align 8
  %444 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %89, i64 0, i32 3
  %447 = load i32, i32* %446, align 8
  br label %448

448:                                              ; preds = %439, %392
  %.16 = phi i32 [ %416, %392 ], [ %441, %439 ]
  %.14 = phi i32 [ %420, %392 ], [ %443, %439 ]
  %.12 = phi i32 [ %434, %392 ], [ %445, %439 ]
  %.1 = phi i32 [ %438, %392 ], [ %447, %439 ]
  %449 = call i32 @usiteo2(i32 noundef %63, i32 noundef %78, i32 noundef %.16, i32 noundef %.14, i32 noundef %.12, i32 noundef %.1, i32 noundef %.019, i32 noundef %.18) #3
  %.not38 = icmp eq i32 %449, 0
  br i1 %.not38, label %460, label %450

450:                                              ; preds = %448
  %451 = add nsw i32 %.013.ph, 1
  %452 = load i32, i32* @funccost, align 4
  %453 = sitofp i32 %452 to double
  %454 = load double, double* @totFunc, align 8
  %455 = fadd double %454, %453
  store double %455, double* @totFunc, align 8
  %456 = load i32, i32* @penalty, align 4
  %457 = sitofp i32 %456 to double
  %458 = load double, double* @totPen, align 8
  %459 = fadd double %458, %457
  store double %459, double* @totPen, align 8
  br label %460

460:                                              ; preds = %450, %448
  %.7 = phi i32 [ %451, %450 ], [ %.013.ph, %448 ]
  br label %461

461:                                              ; preds = %460, %381
  %.8 = phi i32 [ %.7, %460 ], [ %.013.ph, %381 ]
  br label %462

462:                                              ; preds = %461, %358
  %.9 = phi i32 [ %359, %358 ], [ %.8, %461 ]
  br label %463

463:                                              ; preds = %462, %277
  %.10 = phi i32 [ %.6, %277 ], [ %.9, %462 ]
  br label %.outer, !llvm.loop !7

464:                                              ; preds = %48
  ret i32 %.013.ph
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @forceGrid(i32 noundef, i32 noundef) #2

declare dso_local i32 @usite1(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @newOrient(%struct.cellbox* noundef, i32 noundef) #2

declare dso_local i32 @usiteo1(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @usite0(i32 noundef, i32 noundef) #2

declare dso_local i32 @usite2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @usiteo2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare double @exp2(double)

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
