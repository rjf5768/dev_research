; ModuleID = './fuloop.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/fuloop.c"
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

@flips = external dso_local global i32, align 4
@Tsave = external dso_local global double, align 8
@T = external dso_local global double, align 8
@bdxlength = external dso_local global i32, align 4
@bdylength = external dso_local global i32, align 4
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"   compared to bdxlength:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in y\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"   compared to bdylength:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"scalex:%d  scaley:%d\0A\00", align 1
@attmax = external dso_local global i32, align 4
@numcells = external dso_local global i32, align 4
@randVar = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@gridGiven = external dso_local global i32, align 4
@newxx = external dso_local global i32, align 4
@newyy = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"acceptance breakdown:\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"              single cell: %d / %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\09no. of accepted flips: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fuloop() #0 {
  store i32 0, i32* @flips, align 4
  %1 = load double, double* @Tsave, align 8
  %2 = call double @log10(double noundef %1) #4
  %3 = fcmp ogt double %2, 6.000000e+00
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = fadd double %2, -1.000000e+00
  %phi.bo = fmul double %5, 2.000000e+00
  br label %7

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %6, %4
  %.0 = phi double [ %phi.bo, %4 ], [ 1.000000e+01, %6 ]
  %exp2 = call double @exp2(double %.0) #4
  %8 = load double, double* @T, align 8
  %9 = call double @log10(double noundef %8) #4
  %mul = fmul double %9, 2.000000e+00
  %exp216 = call double @exp2(double %mul) #4
  %10 = fdiv double %exp216, %exp2
  %11 = load i32, i32* @bdxlength, align 4
  %12 = sitofp i32 %11 to double
  %13 = fmul double %10, %12
  %14 = fptosi double %13 to i32
  %15 = shl nsw i32 %14, 1
  %16 = icmp slt i32 %14, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  br label %24

18:                                               ; preds = %7
  %19 = load i32, i32* @bdxlength, align 4
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @bdxlength, align 4
  br label %23

23:                                               ; preds = %21, %18
  %.03 = phi i32 [ %22, %21 ], [ %15, %18 ]
  br label %24

24:                                               ; preds = %23, %17
  %.14 = phi i32 [ 3, %17 ], [ %.03, %23 ]
  %25 = load double, double* @T, align 8
  %26 = call double @log10(double noundef %25) #4
  %mul17 = fmul double %26, 2.000000e+00
  %exp218 = call double @exp2(double %mul17) #4
  %27 = fdiv double %exp218, %exp2
  %28 = load i32, i32* @bdylength, align 4
  %29 = sitofp i32 %28 to double
  %30 = fmul double %27, %29
  %31 = fptosi double %30 to i32
  %32 = shl nsw i32 %31, 1
  %33 = icmp slt i32 %31, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %41

35:                                               ; preds = %24
  %36 = load i32, i32* @bdylength, align 4
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @bdylength, align 4
  br label %40

40:                                               ; preds = %38, %35
  %.05 = phi i32 [ %39, %38 ], [ %32, %35 ]
  br label %41

41:                                               ; preds = %40, %34
  %.16 = phi i32 [ 3, %34 ], [ %.05, %40 ]
  %42 = sdiv i32 %.14, 3
  %43 = sdiv i32 %.16, 3
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef %.14) #4
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %47 = load i32, i32* @bdxlength, align 4
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef %47) #4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.16) #4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %52 = load i32, i32* @bdylength, align 4
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef %52) #4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef %42, i32 noundef %43) #4
  br label %.outer

.outer:                                           ; preds = %237, %41
  %.07.ph = phi i32 [ %225, %237 ], [ 0, %41 ]
  %.02.ph = phi i32 [ %.1, %237 ], [ 0, %41 ]
  %.01.ph = phi i32 [ %226, %237 ], [ 0, %41 ]
  br label %56

56:                                               ; preds = %.backedge, %.outer
  %57 = load i32, i32* @attmax, align 4
  %58 = icmp slt i32 %.07.ph, %57
  br i1 %58, label %59, label %238

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %71, %59
  %61 = load i32, i32* @numcells, align 4
  %62 = sitofp i32 %61 to double
  %63 = load i32, i32* @randVar, align 4
  %64 = mul nsw i32 %63, 1103515245
  %65 = add nsw i32 %64, 12345
  store i32 %65, i32* @randVar, align 4
  %66 = and i32 %65, 2147483647
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %67, 0x41DFFFFFFFC00000
  %69 = fmul double %68, %62
  %70 = fptosi double %69 to i32
  br label %71

71:                                               ; preds = %60
  %72 = add nsw i32 %70, 1
  %73 = load i32, i32* @numcells, align 4
  %74 = icmp eq i32 %73, %70
  br i1 %74, label %60, label %75, !llvm.loop !4

75:                                               ; preds = %71
  %76 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %77 = sext i32 %72 to i64
  %78 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %76, i64 %77
  %79 = load %struct.cellbox*, %struct.cellbox** %78, align 8
  %80 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %79, i64 0, i32 1
  %81 = load i32, i32* %80, align 8
  %.not = icmp eq i32 %81, 0
  br i1 %.not, label %83, label %82

82:                                               ; preds = %75
  br label %.backedge

.backedge:                                        ; preds = %82, %189
  br label %56, !llvm.loop !6

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %79, i64 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %79, i64 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @blockl, align 4
  %89 = sub nsw i32 %85, %.14
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i32, i32* @blockl, align 4
  %93 = sub nsw i32 %92, %85
  %94 = sdiv i32 %93, %42
  br label %107

95:                                               ; preds = %83
  %96 = load i32, i32* @blockr, align 4
  %97 = sub nsw i32 %85, %.14
  %.not19 = icmp sgt i32 %96, %97
  br i1 %.not19, label %102, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @blockr, align 4
  %100 = sub nsw i32 %99, %85
  %101 = sdiv i32 %100, %42
  br label %105

102:                                              ; preds = %95
  %103 = sdiv i32 %.14, %42
  %104 = sub nsw i32 0, %103
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi i32 [ %101, %98 ], [ %104, %102 ]
  br label %107

107:                                              ; preds = %105, %91
  %108 = phi i32 [ %94, %91 ], [ %106, %105 ]
  %109 = load i32, i32* @blockr, align 4
  %110 = add nsw i32 %85, %.14
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @blockr, align 4
  %114 = sub nsw i32 %113, %85
  br label %123

115:                                              ; preds = %107
  %116 = load i32, i32* @blockl, align 4
  %117 = add nsw i32 %85, %.14
  %.not20 = icmp slt i32 %116, %117
  br i1 %.not20, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @blockl, align 4
  %120 = sub nsw i32 %119, %85
  br label %122

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %118
  %.pn = phi i32 [ %120, %118 ], [ %.14, %121 ]
  br label %123

123:                                              ; preds = %122, %112
  %.pn21 = phi i32 [ %114, %112 ], [ %.pn, %122 ]
  %124 = sdiv i32 %.pn21, %42
  %125 = load i32, i32* @blockb, align 4
  %126 = sub nsw i32 %87, %.16
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @blockb, align 4
  %130 = sub nsw i32 %129, %87
  %131 = sdiv i32 %130, %43
  br label %144

132:                                              ; preds = %123
  %133 = load i32, i32* @blockt, align 4
  %134 = sub nsw i32 %87, %.16
  %.not22 = icmp sgt i32 %133, %134
  br i1 %.not22, label %139, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* @blockt, align 4
  %137 = sub nsw i32 %136, %87
  %138 = sdiv i32 %137, %43
  br label %142

139:                                              ; preds = %132
  %140 = sdiv i32 %.16, %43
  %141 = sub nsw i32 0, %140
  br label %142

142:                                              ; preds = %139, %135
  %143 = phi i32 [ %138, %135 ], [ %141, %139 ]
  br label %144

144:                                              ; preds = %142, %128
  %145 = phi i32 [ %131, %128 ], [ %143, %142 ]
  %146 = load i32, i32* @blockt, align 4
  %147 = add nsw i32 %87, %.16
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* @blockt, align 4
  %151 = sub nsw i32 %150, %87
  br label %160

152:                                              ; preds = %144
  %153 = load i32, i32* @blockb, align 4
  %154 = add nsw i32 %87, %.16
  %.not23 = icmp slt i32 %153, %154
  br i1 %.not23, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* @blockb, align 4
  %157 = sub nsw i32 %156, %87
  br label %159

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158, %155
  %.pn24 = phi i32 [ %157, %155 ], [ %.16, %158 ]
  br label %160

160:                                              ; preds = %159, %149
  %.pn25 = phi i32 [ %151, %149 ], [ %.pn24, %159 ]
  %161 = sdiv i32 %.pn25, %43
  %162 = sub nsw i32 %124, %108
  %163 = add nsw i32 %162, 1
  %164 = sitofp i32 %163 to double
  %165 = load i32, i32* @randVar, align 4
  %166 = mul nsw i32 %165, 1103515245
  %167 = add nsw i32 %166, 12345
  store i32 %167, i32* @randVar, align 4
  %168 = and i32 %167, 2147483647
  %169 = sitofp i32 %168 to double
  %170 = fdiv double %169, 0x41DFFFFFFFC00000
  %171 = fmul double %170, %164
  %172 = fptosi double %171 to i32
  %173 = add nsw i32 %108, %172
  %174 = sub nsw i32 %161, %145
  %175 = add nsw i32 %174, 1
  %176 = sitofp i32 %175 to double
  %177 = load i32, i32* @randVar, align 4
  %178 = mul nsw i32 %177, 1103515245
  %179 = add nsw i32 %178, 12345
  store i32 %179, i32* @randVar, align 4
  %180 = and i32 %179, 2147483647
  %181 = sitofp i32 %180 to double
  %182 = fdiv double %181, 0x41DFFFFFFFC00000
  %183 = fmul double %182, %176
  %184 = fptosi double %183 to i32
  %185 = add nsw i32 %145, %184
  %186 = icmp eq i32 %173, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %160
  %188 = icmp eq i32 %185, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %187
  br label %.backedge

190:                                              ; preds = %187, %160
  %191 = mul nsw i32 %42, %173
  %192 = add nsw i32 %85, %191
  %193 = mul nsw i32 %43, %185
  %194 = add nsw i32 %87, %193
  %195 = load i32, i32* @gridGiven, align 4
  %.not26 = icmp eq i32 %195, 0
  br i1 %.not26, label %218, label %196

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %79, i64 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %79, i64 0, i32 21, i64 %199
  %201 = load %struct.tilebox*, %struct.tilebox** %200, align 8
  %202 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %201, i64 0, i32 17
  %203 = load %struct.termbox*, %struct.termbox** %202, align 8
  %204 = getelementptr inbounds %struct.termbox, %struct.termbox* %203, i64 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %192, %205
  %207 = getelementptr inbounds %struct.termbox, %struct.termbox* %203, i64 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %194, %208
  call void @forceGrid(i32 noundef %206, i32 noundef %209) #4
  %210 = load i32, i32* @newxx, align 4
  %211 = getelementptr inbounds %struct.termbox, %struct.termbox* %203, i64 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = sub nsw i32 %210, %212
  %214 = load i32, i32* @newyy, align 4
  %215 = getelementptr inbounds %struct.termbox, %struct.termbox* %203, i64 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %214, %216
  br label %218

218:                                              ; preds = %196, %190
  %.010 = phi i32 [ %217, %196 ], [ %194, %190 ]
  %.09 = phi i32 [ %213, %196 ], [ %192, %190 ]
  %219 = call i32 @usite1(i32 noundef %72, i32 noundef %.09, i32 noundef %.010) #4
  %.not27 = icmp eq i32 %219, 0
  br i1 %.not27, label %224, label %220

220:                                              ; preds = %218
  %221 = load i32, i32* @flips, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* @flips, align 4
  %223 = add nsw i32 %.02.ph, 1
  br label %224

224:                                              ; preds = %220, %218
  %.1 = phi i32 [ %223, %220 ], [ %.02.ph, %218 ]
  %225 = add nuw nsw i32 %.07.ph, 1
  %226 = add nuw nsw i32 %.01.ph, 1
  %227 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %79, i64 0, i32 18
  %228 = load i32, i32* %227, align 4
  %.not28 = icmp eq i32 %228, 0
  br i1 %.not28, label %237, label %229

229:                                              ; preds = %224
  br label %230

230:                                              ; preds = %234, %229
  %.08 = phi i32 [ 1, %229 ], [ %235, %234 ]
  %231 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %79, i64 0, i32 9
  %232 = load i32, i32* %231, align 8
  %.not29 = icmp sgt i32 %.08, %232
  br i1 %.not29, label %236, label %233

233:                                              ; preds = %230
  call void @selectpin(%struct.cellbox* noundef %79) #4
  br label %234

234:                                              ; preds = %233
  %235 = add nuw nsw i32 %.08, 1
  br label %230, !llvm.loop !7

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236, %224
  br label %.outer, !llvm.loop !6

238:                                              ; preds = %56
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %240 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %239)
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %241, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 noundef %.02.ph, i32 noundef %.01.ph) #4
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %244 = load i32, i32* @flips, align 4
  %245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %243, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 noundef %244) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @forceGrid(i32 noundef, i32 noundef) #2

declare dso_local i32 @usite1(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @selectpin(%struct.cellbox* noundef) #2

declare double @exp2(double)

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
