; ModuleID = './doublecheck.ll'
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
  br label %1

1:                                                ; preds = %99, %0
  %.06 = phi i32 [ 1, %0 ], [ %100, %99 ]
  %2 = load i32, i32* @numcells, align 4
  %3 = load i32, i32* @numpads, align 4
  %4 = add nsw i32 %2, %3
  %.not = icmp sgt i32 %.06, %4
  br i1 %.not, label %101, label %5

5:                                                ; preds = %1
  %6 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %7 = zext i32 %.06 to i64
  %8 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %6, i64 %7
  %9 = load %struct.cellbox*, %struct.cellbox** %8, align 8
  %10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 %12
  %14 = load %struct.tilebox*, %struct.tilebox** %13, align 8
  %15 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %14, i64 0, i32 17
  br label %16

16:                                               ; preds = %40, %5
  %.05.in = phi %struct.termbox** [ %15, %5 ], [ %41, %40 ]
  %.05 = load %struct.termbox*, %struct.termbox** %.05.in, align 8
  %.not15 = icmp eq %struct.termbox* %.05, null
  br i1 %.not15, label %42, label %17

17:                                               ; preds = %16
  %18 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %19 = getelementptr inbounds %struct.termbox, %struct.termbox* %.05, i64 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.termnets*, %struct.termnets** %18, i64 %21
  %23 = load %struct.termnets*, %struct.termnets** %22, align 8
  %24 = getelementptr inbounds %struct.termbox, %struct.termbox* %.05, i64 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %25, %27
  %29 = getelementptr inbounds %struct.termnets, %struct.termnets* %23, i64 0, i32 1
  %30 = load %struct.netbox*, %struct.netbox** %29, align 8
  %31 = getelementptr inbounds %struct.netbox, %struct.netbox* %30, i64 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = getelementptr inbounds %struct.termbox, %struct.termbox* %.05, i64 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %33, %35
  %37 = getelementptr inbounds %struct.termnets, %struct.termnets* %23, i64 0, i32 1
  %38 = load %struct.netbox*, %struct.netbox** %37, align 8
  %39 = getelementptr inbounds %struct.netbox, %struct.netbox* %38, i64 0, i32 2
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.termbox, %struct.termbox* %.05, i64 0, i32 0
  br label %16, !llvm.loop !4

42:                                               ; preds = %16
  %43 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %98

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %95, %46
  %.09 = phi i32 [ 1, %46 ], [ %96, %95 ]
  %48 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 18
  %49 = load i32, i32* %48, align 4
  %.not16 = icmp sgt i32 %.09, %49
  br i1 %.not16, label %97, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 20
  %52 = load %struct.uncombox*, %struct.uncombox** %51, align 8
  %53 = zext i32 %.09 to i64
  %54 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %52, i64 %53, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %.09 to i64
  %57 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %52, i64 %56, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 %61
  %63 = load %struct.tilebox*, %struct.tilebox** %62, align 8
  %64 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %63, i64 0, i32 18
  %65 = load %struct.locbox*, %struct.locbox** %64, align 8
  %66 = sext i32 %55 to i64
  %67 = getelementptr inbounds %struct.locbox, %struct.locbox* %65, i64 %66, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 21, i64 %71
  %73 = load %struct.tilebox*, %struct.tilebox** %72, align 8
  %74 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %73, i64 0, i32 18
  %75 = load %struct.locbox*, %struct.locbox** %74, align 8
  %76 = sext i32 %55 to i64
  %77 = getelementptr inbounds %struct.locbox, %struct.locbox* %75, i64 %76, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %80 = sext i32 %58 to i64
  %81 = getelementptr inbounds %struct.termnets*, %struct.termnets** %79, i64 %80
  %82 = load %struct.termnets*, %struct.termnets** %81, align 8
  %83 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %68, %84
  %86 = getelementptr inbounds %struct.termnets, %struct.termnets* %82, i64 0, i32 1
  %87 = load %struct.netbox*, %struct.netbox** %86, align 8
  %88 = getelementptr inbounds %struct.netbox, %struct.netbox* %87, i64 0, i32 1
  store i32 %85, i32* %88, align 8
  %89 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %9, i64 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %78, %90
  %92 = getelementptr inbounds %struct.termnets, %struct.termnets* %82, i64 0, i32 1
  %93 = load %struct.netbox*, %struct.netbox** %92, align 8
  %94 = getelementptr inbounds %struct.netbox, %struct.netbox* %93, i64 0, i32 2
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %50
  %96 = add nuw nsw i32 %.09, 1
  br label %47, !llvm.loop !6

97:                                               ; preds = %47
  br label %98

98:                                               ; preds = %97, %42
  br label %99

99:                                               ; preds = %98
  %100 = add nuw nsw i32 %.06, 1
  br label %1, !llvm.loop !7

101:                                              ; preds = %1
  br label %102

102:                                              ; preds = %200, %101
  %.08 = phi i32 [ 1, %101 ], [ %201, %200 ]
  %.03 = phi i32 [ 0, %101 ], [ %.14, %200 ]
  %103 = load i32, i32* @numnets, align 4
  %.not11 = icmp sgt i32 %.08, %103
  br i1 %.not11, label %202, label %104

104:                                              ; preds = %102
  %105 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %106 = zext i32 %.08 to i64
  %107 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %105, i64 %106
  %108 = load %struct.dimbox*, %struct.dimbox** %107, align 8
  %109 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %200

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 0
  br label %115

115:                                              ; preds = %134, %113
  %.01.in = phi %struct.netbox** [ %114, %113 ], [ %135, %134 ]
  %.01 = load %struct.netbox*, %struct.netbox** %.01.in, align 8
  %116 = icmp eq %struct.netbox* %.01, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %115
  br label %136

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 9
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %134

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 4
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 9
  store i32 %129, i32* %130, align 8
  %131 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 6
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 0
  %133 = load %struct.netbox*, %struct.netbox** %132, align 8
  br label %136

134:                                              ; preds = %122
  %135 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 0
  br label %115

136:                                              ; preds = %123, %117
  %.12 = phi %struct.netbox* [ %.01, %117 ], [ %133, %123 ]
  br label %137

137:                                              ; preds = %174, %136
  %.2 = phi %struct.netbox* [ %.12, %136 ], [ %176, %174 ]
  %.not14 = icmp eq %struct.netbox* %.2, null
  br i1 %.not14, label %177, label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 9
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %174

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %145, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 2
  store i32 %145, i32* %152, align 4
  br label %160

153:                                              ; preds = %143
  %154 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %145, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 4
  store i32 %145, i32* %158, align 4
  br label %159

159:                                              ; preds = %157, %153
  br label %160

160:                                              ; preds = %159, %151
  %161 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %147, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 6
  store i32 %147, i32* %165, align 4
  br label %173

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 9
  %168 = load i32, i32* %167, align 8
  %169 = icmp sgt i32 %147, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 9
  store i32 %147, i32* %171, align 8
  br label %172

172:                                              ; preds = %170, %166
  br label %173

173:                                              ; preds = %172, %164
  br label %174

174:                                              ; preds = %173, %142
  %175 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 0
  %176 = load %struct.netbox*, %struct.netbox** %175, align 8
  br label %137, !llvm.loop !8

177:                                              ; preds = %137
  %178 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 11
  %179 = load double, double* %178, align 8
  %180 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %181, %183
  %185 = sitofp i32 %184 to double
  %186 = fmul double %179, %185
  %187 = fptosi double %186 to i32
  %188 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 12
  %189 = load double, double* %188, align 8
  %190 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 9
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %108, i64 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 %191, %193
  %195 = sitofp i32 %194 to double
  %196 = fmul double %189, %195
  %197 = fptosi double %196 to i32
  %198 = add nsw i32 %187, %197
  %199 = add nsw i32 %.03, %198
  br label %200

200:                                              ; preds = %177, %112
  %.14 = phi i32 [ %.03, %112 ], [ %199, %177 ]
  %201 = add nuw nsw i32 %.08, 1
  br label %102, !llvm.loop !9

202:                                              ; preds = %102
  br label %203

203:                                              ; preds = %237, %202
  %.17 = phi i32 [ 1, %202 ], [ %238, %237 ]
  %.0 = phi i32 [ 0, %202 ], [ %.1, %237 ]
  %204 = load i32, i32* @numcells, align 4
  %205 = load i32, i32* @numpads, align 4
  %206 = add nsw i32 %204, %205
  %207 = add nsw i32 %206, 4
  %.not12 = icmp sgt i32 %.17, %207
  br i1 %.not12, label %239, label %208

208:                                              ; preds = %203
  %209 = load i32, i32* @numcells, align 4
  %210 = icmp sgt i32 %.17, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i32, i32* @numcells, align 4
  %213 = load i32, i32* @numpads, align 4
  %214 = add nsw i32 %212, %213
  %.not13 = icmp sgt i32 %.17, %214
  br i1 %.not13, label %216, label %215

215:                                              ; preds = %211
  br label %237

216:                                              ; preds = %211, %208
  %217 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlap to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %218 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %219 = zext i32 %.17 to i64
  %220 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %218, i64 %219
  %221 = load %struct.cellbox*, %struct.cellbox** %220, align 8
  %222 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %221, i64 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %.17 to i64
  %225 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %218, i64 %224
  %226 = load %struct.cellbox*, %struct.cellbox** %225, align 8
  %227 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %226, i64 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %230 = zext i32 %.17 to i64
  %231 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %229, i64 %230
  %232 = load %struct.cellbox*, %struct.cellbox** %231, align 8
  %233 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %232, i64 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %217(i32 noundef %.17, i32 noundef %223, i32 noundef %228, i32 noundef %234, i32 noundef 0, i32 noundef 1, i32 noundef 0) #2
  %236 = add nsw i32 %.0, %235
  br label %237

237:                                              ; preds = %216, %215
  %.1 = phi i32 [ %.0, %215 ], [ %236, %216 ]
  %238 = add nuw nsw i32 %.17, 1
  br label %203, !llvm.loop !10

239:                                              ; preds = %203
  %240 = sdiv i32 %.0, 2
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %241, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %.03) #2
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %243, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %240) #2
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

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
