; ModuleID = './findcost.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/findcost.c"
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

@Tsave = external dso_local global double, align 8
@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@termarray = external dso_local global %struct.termnets**, align 8
@finalShot = external dso_local global i32, align 4
@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@penalty = external dso_local global i32, align 4
@overlap = external dso_local global i32 (...)*, align 8
@overfill = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findcost() #0 {
  %1 = load double, double* @Tsave, align 8
  %2 = fdiv double %1, 1.000000e+05
  br label %3

3:                                                ; preds = %101, %0
  %.06 = phi i32 [ 1, %0 ], [ %102, %101 ]
  %4 = load i32, i32* @numcells, align 4
  %5 = load i32, i32* @numpads, align 4
  %6 = add nsw i32 %4, %5
  %.not = icmp sgt i32 %.06, %6
  br i1 %.not, label %103, label %7

7:                                                ; preds = %3
  %8 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %9 = zext i32 %.06 to i64
  %10 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %8, i64 %9
  %11 = load %struct.cellbox*, %struct.cellbox** %10, align 8
  %12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 21, i64 %14
  %16 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %17 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 17
  br label %18

18:                                               ; preds = %42, %7
  %.05.in = phi %struct.termbox** [ %17, %7 ], [ %43, %42 ]
  %.05 = load %struct.termbox*, %struct.termbox** %.05.in, align 8
  %.not18 = icmp eq %struct.termbox* %.05, null
  br i1 %.not18, label %44, label %19

19:                                               ; preds = %18
  %20 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %21 = getelementptr inbounds %struct.termbox, %struct.termbox* %.05, i64 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.termnets*, %struct.termnets** %20, i64 %23
  %25 = load %struct.termnets*, %struct.termnets** %24, align 8
  %26 = getelementptr inbounds %struct.termbox, %struct.termbox* %.05, i64 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %27, %29
  %31 = getelementptr inbounds %struct.termnets, %struct.termnets* %25, i64 0, i32 1
  %32 = load %struct.netbox*, %struct.netbox** %31, align 8
  %33 = getelementptr inbounds %struct.netbox, %struct.netbox* %32, i64 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = getelementptr inbounds %struct.termbox, %struct.termbox* %.05, i64 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %35, %37
  %39 = getelementptr inbounds %struct.termnets, %struct.termnets* %25, i64 0, i32 1
  %40 = load %struct.netbox*, %struct.netbox** %39, align 8
  %41 = getelementptr inbounds %struct.netbox, %struct.netbox* %40, i64 0, i32 2
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %19
  %43 = getelementptr inbounds %struct.termbox, %struct.termbox* %.05, i64 0, i32 0
  br label %18, !llvm.loop !4

44:                                               ; preds = %18
  %45 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %100

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %97, %48
  %.010 = phi i32 [ 1, %48 ], [ %98, %97 ]
  %50 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 18
  %51 = load i32, i32* %50, align 4
  %.not19 = icmp sgt i32 %.010, %51
  br i1 %.not19, label %99, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 20
  %54 = load %struct.uncombox*, %struct.uncombox** %53, align 8
  %55 = zext i32 %.010 to i64
  %56 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %54, i64 %55, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %.010 to i64
  %59 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %54, i64 %58, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 21, i64 %63
  %65 = load %struct.tilebox*, %struct.tilebox** %64, align 8
  %66 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i64 0, i32 18
  %67 = load %struct.locbox*, %struct.locbox** %66, align 8
  %68 = sext i32 %57 to i64
  %69 = getelementptr inbounds %struct.locbox, %struct.locbox* %67, i64 %68, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 21, i64 %73
  %75 = load %struct.tilebox*, %struct.tilebox** %74, align 8
  %76 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %75, i64 0, i32 18
  %77 = load %struct.locbox*, %struct.locbox** %76, align 8
  %78 = sext i32 %57 to i64
  %79 = getelementptr inbounds %struct.locbox, %struct.locbox* %77, i64 %78, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %82 = sext i32 %60 to i64
  %83 = getelementptr inbounds %struct.termnets*, %struct.termnets** %81, i64 %82
  %84 = load %struct.termnets*, %struct.termnets** %83, align 8
  %85 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %70, %86
  %88 = getelementptr inbounds %struct.termnets, %struct.termnets* %84, i64 0, i32 1
  %89 = load %struct.netbox*, %struct.netbox** %88, align 8
  %90 = getelementptr inbounds %struct.netbox, %struct.netbox* %89, i64 0, i32 1
  store i32 %87, i32* %90, align 8
  %91 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %11, i64 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %80, %92
  %94 = getelementptr inbounds %struct.termnets, %struct.termnets* %84, i64 0, i32 1
  %95 = load %struct.netbox*, %struct.netbox** %94, align 8
  %96 = getelementptr inbounds %struct.netbox, %struct.netbox* %95, i64 0, i32 2
  store i32 %93, i32* %96, align 4
  br label %97

97:                                               ; preds = %52
  %98 = add nuw nsw i32 %.010, 1
  br label %49, !llvm.loop !6

99:                                               ; preds = %49
  br label %100

100:                                              ; preds = %99, %44
  br label %101

101:                                              ; preds = %100
  %102 = add nuw nsw i32 %.06, 1
  br label %3, !llvm.loop !7

103:                                              ; preds = %3
  %104 = load i32, i32* @finalShot, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @numnets, align 4
  %108 = load i32, i32* @numcells, align 4
  %109 = add nsw i32 %107, %108
  br label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @numnets, align 4
  br label %112

112:                                              ; preds = %110, %106
  %.0 = phi i32 [ %109, %106 ], [ %111, %110 ]
  br label %113

113:                                              ; preds = %213, %112
  %.09 = phi i32 [ 1, %112 ], [ %214, %213 ]
  %.03 = phi i32 [ 0, %112 ], [ %.14, %213 ]
  %.not12 = icmp sgt i32 %.09, %.0
  br i1 %.not12, label %215, label %114

114:                                              ; preds = %113
  %115 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %116 = zext i32 %.09 to i64
  %117 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %115, i64 %116
  %118 = load %struct.dimbox*, %struct.dimbox** %117, align 8
  %119 = icmp eq %struct.dimbox* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %213

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %213

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 0
  br label %128

128:                                              ; preds = %147, %126
  %.01.in = phi %struct.netbox** [ %127, %126 ], [ %148, %147 ]
  %.01 = load %struct.netbox*, %struct.netbox** %.01.in, align 8
  %129 = icmp eq %struct.netbox* %.01, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %128
  br label %149

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 9
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %147

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 4
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 9
  store i32 %142, i32* %143, align 8
  %144 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 6
  store i32 %142, i32* %144, align 4
  %145 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 0
  %146 = load %struct.netbox*, %struct.netbox** %145, align 8
  br label %149

147:                                              ; preds = %135
  %148 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 0
  br label %128

149:                                              ; preds = %136, %130
  %.1 = phi %struct.netbox* [ %.01, %130 ], [ %146, %136 ]
  br label %150

150:                                              ; preds = %187, %149
  %.2 = phi %struct.netbox* [ %.1, %149 ], [ %189, %187 ]
  %.not17 = icmp eq %struct.netbox* %.2, null
  br i1 %.not17, label %190, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 9
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %187

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %158, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 2
  store i32 %158, i32* %165, align 4
  br label %173

166:                                              ; preds = %156
  %167 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %158, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 4
  store i32 %158, i32* %171, align 4
  br label %172

172:                                              ; preds = %170, %166
  br label %173

173:                                              ; preds = %172, %164
  %174 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %160, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 6
  store i32 %160, i32* %178, align 4
  br label %186

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 9
  %181 = load i32, i32* %180, align 8
  %182 = icmp sgt i32 %160, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 9
  store i32 %160, i32* %184, align 8
  br label %185

185:                                              ; preds = %183, %179
  br label %186

186:                                              ; preds = %185, %177
  br label %187

187:                                              ; preds = %186, %155
  %188 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 0
  %189 = load %struct.netbox*, %struct.netbox** %188, align 8
  br label %150, !llvm.loop !8

190:                                              ; preds = %150
  %191 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 11
  %192 = load double, double* %191, align 8
  %193 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %194, %196
  %198 = sitofp i32 %197 to double
  %199 = fmul double %192, %198
  %200 = fptosi double %199 to i32
  %201 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 12
  %202 = load double, double* %201, align 8
  %203 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 9
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %118, i64 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %204, %206
  %208 = sitofp i32 %207 to double
  %209 = fmul double %202, %208
  %210 = fptosi double %209 to i32
  %211 = add nsw i32 %200, %210
  %212 = add nsw i32 %.03, %211
  br label %213

213:                                              ; preds = %190, %125, %120
  %.14 = phi i32 [ %.03, %120 ], [ %.03, %125 ], [ %212, %190 ]
  %214 = add nuw nsw i32 %.09, 1
  br label %113, !llvm.loop !9

215:                                              ; preds = %113
  store i32 0, i32* @penalty, align 4
  br label %216

216:                                              ; preds = %251, %215
  %.17 = phi i32 [ 1, %215 ], [ %252, %251 ]
  %217 = load i32, i32* @numcells, align 4
  %218 = load i32, i32* @numpads, align 4
  %219 = add nsw i32 %217, %218
  %220 = add nsw i32 %219, 4
  %.not13 = icmp sgt i32 %.17, %220
  br i1 %.not13, label %253, label %221

221:                                              ; preds = %216
  %222 = load i32, i32* @numcells, align 4
  %223 = icmp sgt i32 %.17, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = load i32, i32* @numcells, align 4
  %226 = load i32, i32* @numpads, align 4
  %227 = add nsw i32 %225, %226
  %.not16 = icmp sgt i32 %.17, %227
  br i1 %.not16, label %229, label %228

228:                                              ; preds = %224
  br label %251

229:                                              ; preds = %224, %221
  %230 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %231 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %232 = zext i32 %.17 to i64
  %233 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %231, i64 %232
  %234 = load %struct.cellbox*, %struct.cellbox** %233, align 8
  %235 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %234, i64 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %.17 to i64
  %238 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %231, i64 %237
  %239 = load %struct.cellbox*, %struct.cellbox** %238, align 8
  %240 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %239, i64 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %243 = zext i32 %.17 to i64
  %244 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %242, i64 %243
  %245 = load %struct.cellbox*, %struct.cellbox** %244, align 8
  %246 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %245, i64 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %230(i32 noundef %.17, i32 noundef %236, i32 noundef %241, i32 noundef %247, i32 noundef 0, i32 noundef 1, i32 noundef 0) #1
  %249 = load i32, i32* @penalty, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* @penalty, align 4
  br label %251

251:                                              ; preds = %229, %228
  %252 = add nuw nsw i32 %.17, 1
  br label %216, !llvm.loop !10

253:                                              ; preds = %216
  %254 = load i32, i32* @penalty, align 4
  %255 = sdiv i32 %254, 2
  store i32 %255, i32* @penalty, align 4
  store i32 0, i32* @overfill, align 4
  br label %256

256:                                              ; preds = %298, %253
  %.28 = phi i32 [ 1, %253 ], [ %299, %298 ]
  %257 = load i32, i32* @numcells, align 4
  %.not14 = icmp sgt i32 %.28, %257
  br i1 %.not14, label %300, label %258

258:                                              ; preds = %256
  %259 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %260 = zext i32 %.28 to i64
  %261 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %259, i64 %260
  %262 = load %struct.cellbox*, %struct.cellbox** %261, align 8
  %263 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %262, i64 0, i32 10
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %258
  br label %298

267:                                              ; preds = %258
  %268 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %269 = zext i32 %.28 to i64
  %270 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %268, i64 %269
  %271 = load %struct.cellbox*, %struct.cellbox** %270, align 8
  br label %272

272:                                              ; preds = %295, %267
  %.02 = phi i32 [ 1, %267 ], [ %296, %295 ]
  %273 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %271, i64 0, i32 17
  %274 = load i32, i32* %273, align 8
  %.not15 = icmp sgt i32 %.02, %274
  br i1 %.not15, label %297, label %275

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %271, i64 0, i32 19
  %277 = load %struct.contentbox*, %struct.contentbox** %276, align 8
  %278 = zext i32 %.02 to i64
  %279 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %277, i64 %278, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = zext i32 %.02 to i64
  %282 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %277, i64 %281, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = icmp sgt i32 %280, %283
  br i1 %284, label %285, label %294

285:                                              ; preds = %275
  %286 = sub nsw i32 %280, %283
  %287 = fmul double %2, 1.000000e+01
  %288 = mul nsw i32 %286, %286
  %289 = sitofp i32 %288 to double
  %290 = fmul double %287, %289
  %291 = fptosi double %290 to i32
  %292 = load i32, i32* @overfill, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* @overfill, align 4
  br label %294

294:                                              ; preds = %285, %275
  br label %295

295:                                              ; preds = %294
  %296 = add nuw nsw i32 %.02, 1
  br label %272, !llvm.loop !11

297:                                              ; preds = %272
  br label %298

298:                                              ; preds = %297, %266
  %299 = add nuw nsw i32 %.28, 1
  br label %256, !llvm.loop !12

300:                                              ; preds = %256
  ret i32 %.03
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

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
