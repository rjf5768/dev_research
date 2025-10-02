; ModuleID = './doborder.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/doborder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.clbox = type { i32, i32, i32, i32, i32, i32, i32, %struct.clbox* }

@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@numberCells = external dso_local global i32, align 4
@cellList = external dso_local global %struct.clbox**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @doborder() #0 {
  br label %1

1:                                                ; preds = %262, %0
  %.0 = phi i32 [ 1, %0 ], [ %263, %262 ]
  %2 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %264, label %3

3:                                                ; preds = %1
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %5
  %7 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %10
  %12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 3
  %15 = load i32, i32* %14, align 8
  br label %16

16:                                               ; preds = %38, %3
  %.07.in = phi %struct.tilebox** [ %11, %3 ], [ %39, %38 ]
  %.07 = load %struct.tilebox*, %struct.tilebox** %.07.in, align 8
  %.not10 = icmp eq %struct.tilebox* %.07, null
  br i1 %.not10, label %40, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.07, i64 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, %13
  %21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.07, i64 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %13
  %24 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.07, i64 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, %15
  %27 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.07, i64 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %15
  %30 = call i32 @findBorder(i32 noundef %.0, i32 noundef %20, i32 noundef %26, i32 noundef %29, i32 noundef 0)
  %31 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.07, i64 0, i32 5
  store i32 %30, i32* %31, align 8
  %32 = call i32 @findBorder(i32 noundef %.0, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef 0)
  %33 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.07, i64 0, i32 6
  store i32 %32, i32* %33, align 4
  %34 = call i32 @findBorder(i32 noundef %.0, i32 noundef %26, i32 noundef %20, i32 noundef %23, i32 noundef 1)
  %35 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.07, i64 0, i32 7
  store i32 %34, i32* %35, align 8
  %36 = call i32 @findBorder(i32 noundef %.0, i32 noundef %29, i32 noundef %20, i32 noundef %23, i32 noundef 1)
  %37 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.07, i64 0, i32 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.07, i64 0, i32 0
  br label %16, !llvm.loop !4

40:                                               ; preds = %16
  %41 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %42 = load i32, i32* %41, align 8
  %.not11 = icmp eq i32 %42, 0
  br i1 %.not11, label %149, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 0
  %45 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %47
  br label %49

49:                                               ; preds = %145, %43
  %.05.in = phi %struct.tilebox** [ %48, %43 ], [ %146, %145 ]
  %.04.in = phi %struct.tilebox** [ %44, %43 ], [ %147, %145 ]
  %.04 = load %struct.tilebox*, %struct.tilebox** %.04.in, align 8
  %.05 = load %struct.tilebox*, %struct.tilebox** %.05.in, align 8
  %.not13 = icmp eq %struct.tilebox* %.05, null
  br i1 %.not13, label %148, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %144 [
    i32 1, label %53
    i32 2, label %66
    i32 3, label %79
    i32 4, label %92
    i32 5, label %105
    i32 6, label %118
    i32 7, label %131
  ]

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 8
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 7
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 6
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 5
  store i32 %64, i32* %65, align 8
  br label %144

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 6
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 5
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 6
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 5
  store i32 %77, i32* %78, align 8
  br label %144

79:                                               ; preds = %50
  %80 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 8
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 7
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 6
  store i32 %87, i32* %88, align 4
  %89 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 5
  store i32 %90, i32* %91, align 8
  br label %144

92:                                               ; preds = %50
  %93 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 8
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 7
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 6
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 5
  store i32 %103, i32* %104, align 8
  br label %144

105:                                              ; preds = %50
  %106 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 8
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 7
  store i32 %110, i32* %111, align 8
  %112 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 6
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 5
  store i32 %116, i32* %117, align 8
  br label %144

118:                                              ; preds = %50
  %119 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 5
  store i32 %120, i32* %121, align 8
  %122 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 7
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 6
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 8
  store i32 %129, i32* %130, align 4
  br label %144

131:                                              ; preds = %50
  %132 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 5
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 7
  store i32 %136, i32* %137, align 8
  %138 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 6
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %131, %118, %105, %92, %79, %66, %53, %50
  br label %145

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.05, i64 0, i32 0
  %147 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.04, i64 0, i32 0
  br label %49, !llvm.loop !6

148:                                              ; preds = %49
  br label %149

149:                                              ; preds = %148, %40
  br label %150

150:                                              ; preds = %259, %149
  %.02 = phi i32 [ 1, %149 ], [ %260, %259 ]
  %151 = icmp ult i32 %.02, 8
  br i1 %151, label %152, label %261

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %.02, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %259

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 0
  %159 = zext i32 %.02 to i64
  %160 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %159
  br label %161

161:                                              ; preds = %255, %157
  %.16.in = phi %struct.tilebox** [ %160, %157 ], [ %256, %255 ]
  %.1.in = phi %struct.tilebox** [ %158, %157 ], [ %257, %255 ]
  %.1 = load %struct.tilebox*, %struct.tilebox** %.1.in, align 8
  %.16 = load %struct.tilebox*, %struct.tilebox** %.16.in, align 8
  %.not12 = icmp eq %struct.tilebox* %.16, null
  br i1 %.not12, label %258, label %162

162:                                              ; preds = %161
  switch i32 %.02, label %254 [
    i32 1, label %163
    i32 2, label %176
    i32 3, label %189
    i32 4, label %202
    i32 5, label %215
    i32 6, label %228
    i32 7, label %241
  ]

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 8
  store i32 %165, i32* %166, align 4
  %167 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 7
  store i32 %168, i32* %169, align 8
  %170 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 6
  store i32 %171, i32* %172, align 4
  %173 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 5
  store i32 %174, i32* %175, align 8
  br label %254

176:                                              ; preds = %162
  %177 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 6
  store i32 %178, i32* %179, align 4
  %180 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 5
  store i32 %181, i32* %182, align 8
  %183 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 6
  store i32 %184, i32* %185, align 4
  %186 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 5
  store i32 %187, i32* %188, align 8
  br label %254

189:                                              ; preds = %162
  %190 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 7
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 8
  store i32 %191, i32* %192, align 4
  %193 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 7
  store i32 %194, i32* %195, align 8
  %196 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 6
  store i32 %197, i32* %198, align 4
  %199 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 5
  store i32 %200, i32* %201, align 8
  br label %254

202:                                              ; preds = %162
  %203 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 8
  store i32 %204, i32* %205, align 4
  %206 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 7
  store i32 %207, i32* %208, align 8
  %209 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 7
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 6
  store i32 %210, i32* %211, align 4
  %212 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 8
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 5
  store i32 %213, i32* %214, align 8
  br label %254

215:                                              ; preds = %162
  %216 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 8
  store i32 %217, i32* %218, align 4
  %219 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 7
  store i32 %220, i32* %221, align 8
  %222 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 8
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 6
  store i32 %223, i32* %224, align 4
  %225 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 7
  %226 = load i32, i32* %225, align 8
  %227 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 5
  store i32 %226, i32* %227, align 8
  br label %254

228:                                              ; preds = %162
  %229 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 8
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 5
  store i32 %230, i32* %231, align 8
  %232 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 7
  store i32 %233, i32* %234, align 8
  %235 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 7
  %236 = load i32, i32* %235, align 8
  %237 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 6
  store i32 %236, i32* %237, align 4
  %238 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 8
  store i32 %239, i32* %240, align 4
  br label %254

241:                                              ; preds = %162
  %242 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 7
  %243 = load i32, i32* %242, align 8
  %244 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 5
  store i32 %243, i32* %244, align 8
  %245 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 6
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 7
  store i32 %246, i32* %247, align 8
  %248 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 6
  store i32 %249, i32* %250, align 4
  %251 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 8
  store i32 %252, i32* %253, align 4
  br label %254

254:                                              ; preds = %241, %228, %215, %202, %189, %176, %163, %162
  br label %255

255:                                              ; preds = %254
  %256 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.16, i64 0, i32 0
  %257 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.1, i64 0, i32 0
  br label %161, !llvm.loop !7

258:                                              ; preds = %161
  br label %259

259:                                              ; preds = %258, %156
  %260 = add nuw nsw i32 %.02, 1
  br label %150, !llvm.loop !8

261:                                              ; preds = %150
  br label %262

262:                                              ; preds = %261
  %263 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !9

264:                                              ; preds = %1
  br label %265

265:                                              ; preds = %278, %264
  %.01 = phi i32 [ 1, %264 ], [ %279, %278 ]
  %266 = load i32, i32* @numberCells, align 4
  %.not8 = icmp sgt i32 %.01, %266
  br i1 %.not8, label %280, label %267

267:                                              ; preds = %265
  %268 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %269 = zext i32 %.01 to i64
  %270 = getelementptr inbounds %struct.clbox*, %struct.clbox** %268, i64 %269
  %271 = load %struct.clbox*, %struct.clbox** %270, align 8
  br label %272

272:                                              ; preds = %273, %267
  %.03 = phi %struct.clbox* [ %271, %267 ], [ %275, %273 ]
  %.not9 = icmp eq %struct.clbox* %.03, null
  br i1 %.not9, label %277, label %273

273:                                              ; preds = %272
  %274 = getelementptr inbounds %struct.clbox, %struct.clbox* %.03, i64 0, i32 7
  %275 = load %struct.clbox*, %struct.clbox** %274, align 8
  %276 = bitcast %struct.clbox* %.03 to i8*
  call void @free(i8* noundef %276) #3
  br label %272, !llvm.loop !10

277:                                              ; preds = %272
  br label %278

278:                                              ; preds = %277
  %279 = add nuw nsw i32 %.01, 1
  br label %265, !llvm.loop !11

280:                                              ; preds = %265
  %281 = load i8*, i8** bitcast (%struct.clbox*** @cellList to i8**), align 8
  call void @free(i8* noundef %281) #3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @findBorder(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds %struct.clbox*, %struct.clbox** %6, i64 %7
  br label %9

9:                                                ; preds = %32, %5
  %.01 = phi i32 [ 0, %5 ], [ %.2, %32 ]
  %.0.in = phi %struct.clbox** [ %8, %5 ], [ %33, %32 ]
  %.0 = load %struct.clbox*, %struct.clbox** %.0.in, align 8
  %.not = icmp eq %struct.clbox* %.0, null
  br i1 %.not, label %34, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.clbox, %struct.clbox* %.0, i64 0, i32 2
  %12 = load i32, i32* %11, align 8
  %.not2 = icmp eq i32 %12, %4
  br i1 %.not2, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.clbox, %struct.clbox* %.0, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %.not3 = icmp eq i32 %15, %1
  br i1 %.not3, label %17, label %16

16:                                               ; preds = %13, %10
  br label %32

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.clbox, %struct.clbox* %.0, i64 0, i32 5
  %19 = load i32, i32* %18, align 4
  %.not4 = icmp sgt i32 %19, %2
  br i1 %.not4, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.clbox, %struct.clbox* %.0, i64 0, i32 4
  %22 = load i32, i32* %21, align 8
  %.not5 = icmp slt i32 %22, %3
  br i1 %.not5, label %24, label %23

23:                                               ; preds = %20, %17
  br label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.clbox, %struct.clbox* %.0, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, %.01
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.clbox, %struct.clbox* %.0, i64 0, i32 1
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %28, %24
  %.1 = phi i32 [ %30, %28 ], [ %.01, %24 ]
  br label %32

32:                                               ; preds = %31, %23, %16
  %.2 = phi i32 [ %.01, %16 ], [ %.01, %23 ], [ %.1, %31 ]
  %33 = getelementptr inbounds %struct.clbox, %struct.clbox* %.0, i64 0, i32 7
  br label %9, !llvm.loop !12

34:                                               ; preds = %9
  ret i32 %.01
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
