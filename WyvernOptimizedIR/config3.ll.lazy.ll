; ModuleID = './config3.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/config3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@numpads = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockl = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @config3() #0 {
  br label %1

1:                                                ; preds = %94, %0
  %.019 = phi i32 [ undef, %0 ], [ %44, %94 ]
  %.016 = phi i32 [ undef, %0 ], [ %25, %94 ]
  %.015 = phi i32 [ 1, %0 ], [ %95, %94 ]
  %.012 = phi i32 [ undef, %0 ], [ %62, %94 ]
  %.09 = phi i32 [ undef, %0 ], [ %81, %94 ]
  %.07 = phi i32 [ 1000000, %0 ], [ %.18, %94 ]
  %.05 = phi i32 [ 0, %0 ], [ %.16, %94 ]
  %.03 = phi i32 [ 0, %0 ], [ %.14, %94 ]
  %.01 = phi i32 [ 1000000, %0 ], [ %.12, %94 ]
  %2 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.015, %2
  br i1 %.not, label %96, label %3

3:                                                ; preds = %1
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %5 = zext i32 %.015 to i64
  %6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %5
  %7 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %12
  %14 = load %struct.tilebox*, %struct.tilebox** %13, align 8
  %15 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %9, %16
  %18 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %20
  %22 = load %struct.tilebox*, %struct.tilebox** %21, align 8
  %23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %22, i64 0, i32 5
  %24 = load i32, i32* %23, align 8
  %.neg = mul i32 %24, -2
  %25 = add i32 %.neg, %17
  %26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %30
  %32 = load %struct.tilebox*, %struct.tilebox** %31, align 8
  %33 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %32, i64 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %27, %34
  %36 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %38
  %40 = load %struct.tilebox*, %struct.tilebox** %39, align 8
  %41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %40, i64 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = shl nsw i32 %42, 1
  %44 = add nsw i32 %35, %43
  %45 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %49
  %51 = load %struct.tilebox*, %struct.tilebox** %50, align 8
  %52 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %51, i64 0, i32 11
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %46, %53
  %55 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %57
  %59 = load %struct.tilebox*, %struct.tilebox** %58, align 8
  %60 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %59, i64 0, i32 7
  %61 = load i32, i32* %60, align 8
  %.neg31 = mul i32 %61, -2
  %62 = add i32 %.neg31, %54
  %63 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %67
  %69 = load %struct.tilebox*, %struct.tilebox** %68, align 8
  %70 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %69, i64 0, i32 12
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %64, %71
  %73 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %75
  %77 = load %struct.tilebox*, %struct.tilebox** %76, align 8
  %78 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %77, i64 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = shl nsw i32 %79, 1
  %81 = add nsw i32 %72, %80
  %82 = icmp slt i32 %25, %.01
  br i1 %82, label %83, label %84

83:                                               ; preds = %3
  br label %84

84:                                               ; preds = %83, %3
  %.12 = phi i32 [ %25, %83 ], [ %.01, %3 ]
  %85 = icmp sgt i32 %44, %.03
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86, %84
  %.14 = phi i32 [ %44, %86 ], [ %.03, %84 ]
  %88 = icmp slt i32 %62, %.07
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89, %87
  %.18 = phi i32 [ %62, %89 ], [ %.07, %87 ]
  %91 = icmp sgt i32 %81, %.05
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %90
  %.16 = phi i32 [ %81, %92 ], [ %.05, %90 ]
  br label %94

94:                                               ; preds = %93
  %95 = add nuw nsw i32 %.015, 1
  br label %1, !llvm.loop !4

96:                                               ; preds = %1
  %97 = load i32, i32* @numcells, align 4
  br label %98

98:                                               ; preds = %122, %96
  %.113 = phi i32 [ %.012, %96 ], [ %.214, %122 ]
  %.0.in = phi i32 [ %97, %96 ], [ %.0, %122 ]
  %.0 = add nsw i32 %.0.in, 1
  %99 = load i32, i32* @numcells, align 4
  %100 = load i32, i32* @numpads, align 4
  %101 = add nsw i32 %99, %100
  %.not22.not = icmp slt i32 %.0.in, %101
  br i1 %.not22.not, label %102, label %123

102:                                              ; preds = %98
  %103 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %104 = sext i32 %.0 to i64
  %105 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %103, i64 %104
  %106 = load %struct.cellbox*, %struct.cellbox** %105, align 8
  %107 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %106, i64 0, i32 11
  %108 = load i32, i32* %107, align 8
  %.not30 = icmp eq i32 %108, 4
  br i1 %.not30, label %110, label %109

109:                                              ; preds = %102
  br label %122

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %106, i64 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %106, i64 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %106, i64 0, i32 21, i64 %115
  %117 = load %struct.tilebox*, %struct.tilebox** %116, align 8
  %118 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %117, i64 0, i32 12
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %112, %119
  %121 = sub nsw i32 %.07, %120
  br label %122

122:                                              ; preds = %110, %109
  %.214 = phi i32 [ %.113, %109 ], [ %121, %110 ]
  br label %98, !llvm.loop !6

123:                                              ; preds = %98
  %124 = load i32, i32* @numcells, align 4
  br label %125

125:                                              ; preds = %149, %123
  %.110 = phi i32 [ %.09, %123 ], [ %.211, %149 ]
  %.1.in = phi i32 [ %124, %123 ], [ %.1, %149 ]
  %.1 = add nsw i32 %.1.in, 1
  %126 = load i32, i32* @numcells, align 4
  %127 = load i32, i32* @numpads, align 4
  %128 = add nsw i32 %126, %127
  %.not23.not = icmp slt i32 %.1.in, %128
  br i1 %.not23.not, label %129, label %150

129:                                              ; preds = %125
  %130 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %131 = sext i32 %.1 to i64
  %132 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %130, i64 %131
  %133 = load %struct.cellbox*, %struct.cellbox** %132, align 8
  %134 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %133, i64 0, i32 11
  %135 = load i32, i32* %134, align 8
  %.not29 = icmp eq i32 %135, 2
  br i1 %.not29, label %137, label %136

136:                                              ; preds = %129
  br label %149

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %133, i64 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %133, i64 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %133, i64 0, i32 21, i64 %142
  %144 = load %struct.tilebox*, %struct.tilebox** %143, align 8
  %145 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %144, i64 0, i32 11
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %139, %146
  %148 = sub nsw i32 %147, %.05
  br label %149

149:                                              ; preds = %137, %136
  %.211 = phi i32 [ %.110, %136 ], [ %148, %137 ]
  br label %125, !llvm.loop !7

150:                                              ; preds = %125
  %151 = load i32, i32* @numcells, align 4
  br label %152

152:                                              ; preds = %176, %150
  %.117 = phi i32 [ %.016, %150 ], [ %.218, %176 ]
  %.2.in = phi i32 [ %151, %150 ], [ %.2, %176 ]
  %.2 = add nsw i32 %.2.in, 1
  %153 = load i32, i32* @numcells, align 4
  %154 = load i32, i32* @numpads, align 4
  %155 = add nsw i32 %153, %154
  %.not24.not = icmp slt i32 %.2.in, %155
  br i1 %.not24.not, label %156, label %177

156:                                              ; preds = %152
  %157 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %158 = sext i32 %.2 to i64
  %159 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %157, i64 %158
  %160 = load %struct.cellbox*, %struct.cellbox** %159, align 8
  %161 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %160, i64 0, i32 11
  %162 = load i32, i32* %161, align 8
  %.not28 = icmp eq i32 %162, 1
  br i1 %.not28, label %164, label %163

163:                                              ; preds = %156
  br label %176

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %160, i64 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %160, i64 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %160, i64 0, i32 21, i64 %169
  %171 = load %struct.tilebox*, %struct.tilebox** %170, align 8
  %172 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %171, i64 0, i32 10
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %166, %173
  %175 = sub nsw i32 %.01, %174
  br label %176

176:                                              ; preds = %164, %163
  %.218 = phi i32 [ %.117, %163 ], [ %175, %164 ]
  br label %152, !llvm.loop !8

177:                                              ; preds = %152
  %178 = load i32, i32* @numcells, align 4
  br label %179

179:                                              ; preds = %203, %177
  %.120 = phi i32 [ %.019, %177 ], [ %.221, %203 ]
  %.3.in = phi i32 [ %178, %177 ], [ %.3, %203 ]
  %.3 = add nsw i32 %.3.in, 1
  %180 = load i32, i32* @numcells, align 4
  %181 = load i32, i32* @numpads, align 4
  %182 = add nsw i32 %180, %181
  %.not25.not = icmp slt i32 %.3.in, %182
  br i1 %.not25.not, label %183, label %204

183:                                              ; preds = %179
  %184 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %185 = sext i32 %.3 to i64
  %186 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %184, i64 %185
  %187 = load %struct.cellbox*, %struct.cellbox** %186, align 8
  %188 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %187, i64 0, i32 11
  %189 = load i32, i32* %188, align 8
  %.not27 = icmp eq i32 %189, 3
  br i1 %.not27, label %191, label %190

190:                                              ; preds = %183
  br label %203

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %187, i64 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %187, i64 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %187, i64 0, i32 21, i64 %196
  %198 = load %struct.tilebox*, %struct.tilebox** %197, align 8
  %199 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %198, i64 0, i32 9
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %193, %200
  %202 = sub nsw i32 %201, %.03
  br label %203

203:                                              ; preds = %191, %190
  %.221 = phi i32 [ %.120, %190 ], [ %202, %191 ]
  br label %179, !llvm.loop !9

204:                                              ; preds = %179
  %205 = load i32, i32* @numcells, align 4
  br label %206

206:                                              ; preds = %278, %204
  %.4.in = phi i32 [ %205, %204 ], [ %.4, %278 ]
  %.4 = add nsw i32 %.4.in, 1
  %207 = load i32, i32* @numcells, align 4
  %208 = load i32, i32* @numpads, align 4
  %209 = add nsw i32 %207, %208
  %.not26.not = icmp slt i32 %.4.in, %209
  br i1 %.not26.not, label %210, label %279

210:                                              ; preds = %206
  %211 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %212 = sext i32 %.4 to i64
  %213 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %211, i64 %212
  %214 = load %struct.cellbox*, %struct.cellbox** %213, align 8
  %215 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %214, i64 0, i32 11
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 4
  br i1 %217, label %218, label %226

218:                                              ; preds = %210
  %219 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %220 = sext i32 %.4 to i64
  %221 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %219, i64 %220
  %222 = load %struct.cellbox*, %struct.cellbox** %221, align 8
  %223 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %222, i64 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, %.113
  store i32 %225, i32* %223, align 8
  br label %277

226:                                              ; preds = %210
  %227 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %228 = sext i32 %.4 to i64
  %229 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %227, i64 %228
  %230 = load %struct.cellbox*, %struct.cellbox** %229, align 8
  %231 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %230, i64 0, i32 11
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 2
  br i1 %233, label %234, label %242

234:                                              ; preds = %226
  %235 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %236 = sext i32 %.4 to i64
  %237 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %235, i64 %236
  %238 = load %struct.cellbox*, %struct.cellbox** %237, align 8
  %239 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %238, i64 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, %.110
  store i32 %241, i32* %239, align 8
  br label %276

242:                                              ; preds = %226
  %243 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %244 = sext i32 %.4 to i64
  %245 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %243, i64 %244
  %246 = load %struct.cellbox*, %struct.cellbox** %245, align 8
  %247 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %246, i64 0, i32 11
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %258

250:                                              ; preds = %242
  %251 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %252 = sext i32 %.4 to i64
  %253 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %251, i64 %252
  %254 = load %struct.cellbox*, %struct.cellbox** %253, align 8
  %255 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %254, i64 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, %.117
  store i32 %257, i32* %255, align 4
  br label %275

258:                                              ; preds = %242
  %259 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %260 = sext i32 %.4 to i64
  %261 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %259, i64 %260
  %262 = load %struct.cellbox*, %struct.cellbox** %261, align 8
  %263 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %262, i64 0, i32 11
  %264 = load i32, i32* %263, align 8
  %265 = icmp eq i32 %264, 3
  br i1 %265, label %266, label %274

266:                                              ; preds = %258
  %267 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %268 = sext i32 %.4 to i64
  %269 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %267, i64 %268
  %270 = load %struct.cellbox*, %struct.cellbox** %269, align 8
  %271 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %270, i64 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %272, %.120
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %266, %258
  br label %275

275:                                              ; preds = %274, %250
  br label %276

276:                                              ; preds = %275, %234
  br label %277

277:                                              ; preds = %276, %218
  br label %278

278:                                              ; preds = %277
  br label %206, !llvm.loop !10

279:                                              ; preds = %206
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @reconfigSides(double noundef %0) #1 {
  %2 = load i32, i32* @blockr, align 4
  %3 = load i32, i32* @blockl, align 4
  %4 = sub nsw i32 %2, %3
  %5 = sitofp i32 %4 to double
  %6 = fmul double %5, %0
  %7 = fptosi double %6 to i32
  %8 = load i32, i32* @blockt, align 4
  %9 = load i32, i32* @blockb, align 4
  %10 = sub nsw i32 %8, %9
  %11 = sitofp i32 %10 to double
  %12 = fmul double %11, %0
  %13 = fptosi double %12 to i32
  %14 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %15 = load i32, i32* @numcells, align 4
  %16 = load i32, i32* @numpads, align 4
  %17 = add nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %14, i64 %19
  %21 = load %struct.cellbox*, %struct.cellbox** %20, align 8
  %22 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i64 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, %7
  store i32 %24, i32* %22, align 4
  %25 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %26 = load i32, i32* @numcells, align 4
  %27 = load i32, i32* @numpads, align 4
  %28 = add nsw i32 %26, %27
  %29 = add nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %25, i64 %30
  %32 = load %struct.cellbox*, %struct.cellbox** %31, align 8
  %33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i64 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %7
  store i32 %35, i32* %33, align 4
  %36 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %37 = load i32, i32* @numcells, align 4
  %38 = load i32, i32* @numpads, align 4
  %39 = add nsw i32 %37, %38
  %40 = add nsw i32 %39, 3
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %36, i64 %41
  %43 = load %struct.cellbox*, %struct.cellbox** %42, align 8
  %44 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %43, i64 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, %13
  store i32 %46, i32* %44, align 8
  %47 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %48 = load i32, i32* @numcells, align 4
  %49 = load i32, i32* @numpads, align 4
  %50 = add nsw i32 %48, %49
  %51 = add nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %47, i64 %52
  %54 = load %struct.cellbox*, %struct.cellbox** %53, align 8
  %55 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %54, i64 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, %13
  store i32 %57, i32* %55, align 8
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
