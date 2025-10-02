; ModuleID = './loadbins.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/loadbins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numBinsX = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@numcells = external dso_local global i32, align 4
@blockarray = external dso_local global i32***, align 8
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@numpads = external dso_local global i32, align 4
@finalShot = external dso_local global i32, align 4
@binOffsetX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@bucket = external dso_local global i32*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @loadbins(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %27, %1
  %.02 = phi i32 [ 0, %1 ], [ %28, %27 ]
  %3 = load i32, i32* @numBinsX, align 4
  %.not = icmp sgt i32 %.02, %3
  br i1 %.not, label %29, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %24, %4
  %.03 = phi i32 [ 0, %4 ], [ %25, %24 ]
  %6 = load i32, i32* @numBinsY, align 4
  %.not38 = icmp sgt i32 %.03, %6
  br i1 %.not38, label %26, label %7

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %21, %7
  %.05 = phi i32 [ 0, %7 ], [ %22, %21 ]
  %9 = load i32, i32* @numcells, align 4
  %10 = add nsw i32 %9, 4
  %.not39 = icmp sgt i32 %.05, %10
  br i1 %.not39, label %23, label %11

11:                                               ; preds = %8
  %12 = load i32***, i32**** @blockarray, align 8
  %13 = zext i32 %.02 to i64
  %14 = getelementptr inbounds i32**, i32*** %12, i64 %13
  %15 = load i32**, i32*** %14, align 8
  %16 = zext i32 %.03 to i64
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = zext i32 %.05 to i64
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %11
  %22 = add nuw nsw i32 %.05, 1
  br label %8, !llvm.loop !4

23:                                               ; preds = %8
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.03, 1
  br label %5, !llvm.loop !6

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.02, 1
  br label %2, !llvm.loop !7

29:                                               ; preds = %2
  %30 = load i32, i32* @blockl, align 4
  %31 = load i32, i32* @blockr, align 4
  %32 = load i32, i32* @blockb, align 4
  %33 = load i32, i32* @blockt, align 4
  %34 = sub nsw i32 %31, %30
  %35 = sdiv i32 %34, 2
  %36 = sub nsw i32 %33, %32
  %37 = sdiv i32 %36, 2
  %38 = sub nsw i32 %31, %30
  %39 = sub nsw i32 %33, %32
  %.not22 = icmp slt i32 %38, %39
  br i1 %.not22, label %42, label %40

40:                                               ; preds = %29
  %41 = sub nsw i32 %31, %30
  br label %44

42:                                               ; preds = %29
  %43 = sub nsw i32 %33, %32
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %.not23 = icmp eq i32 %0, 0
  br i1 %.not23, label %289, label %46

46:                                               ; preds = %44
  %47 = call noalias dereferenceable_or_null(224) i8* @malloc(i64 noundef 224) #3
  %48 = bitcast i8* %47 to %struct.cellbox*
  %49 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %50 = load i32, i32* @numcells, align 4
  %51 = load i32, i32* @numpads, align 4
  %52 = add nsw i32 %50, %51
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %49, i64 %54
  %56 = bitcast %struct.cellbox** %55 to i8**
  store i8* %47, i8** %56, align 8
  %57 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i64 0, i32 6
  store i32 1, i32* %57, align 4
  %58 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i64 0, i32 8
  store i32 0, i32* %58, align 4
  %.neg29 = sdiv i32 %45, -2
  %59 = add i32 %.neg29, %30
  %60 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i64 0, i32 2
  store i32 %59, i32* %60, align 4
  %61 = add nsw i32 %33, %32
  %62 = sdiv i32 %61, 2
  %63 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i64 0, i32 3
  store i32 %62, i32* %63, align 8
  %64 = call noalias dereferenceable_or_null(104) i8* @malloc(i64 noundef 104) #3
  %65 = bitcast i8* %64 to %struct.tilebox*
  %66 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i64 0, i32 21, i64 0
  %67 = bitcast %struct.tilebox** %66 to i8**
  store i8* %64, i8** %67, align 8
  %68 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i64 0, i32 17
  store %struct.termbox* null, %struct.termbox** %68, align 8
  %69 = call noalias dereferenceable_or_null(104) i8* @malloc(i64 noundef 104) #3
  %70 = bitcast i8* %64 to i8**
  store i8* %69, i8** %70, align 8
  %.cast = bitcast i8* %69 to %struct.tilebox*
  %71 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.cast, i64 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %71, align 8
  %.cast30 = bitcast i8* %69 to %struct.tilebox*
  %72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.cast30, i64 0, i32 17
  store %struct.termbox* null, %struct.termbox** %72, align 8
  br label %73

73:                                               ; preds = %78, %46
  %.14 = phi i32 [ 1, %46 ], [ %79, %78 ]
  %74 = icmp ult i32 %.14, 8
  br i1 %74, label %75, label %80

75:                                               ; preds = %73
  %76 = zext i32 %.14 to i64
  %77 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i64 0, i32 21, i64 %76
  store %struct.tilebox* null, %struct.tilebox** %77, align 8
  br label %78

78:                                               ; preds = %75
  %79 = add nuw nsw i32 %.14, 1
  br label %73, !llvm.loop !8

80:                                               ; preds = %73
  %81 = sdiv i32 %45, -2
  %82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i64 0, i32 9
  store i32 %81, i32* %82, align 8
  %83 = sdiv i32 %45, -2
  %84 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i64 0, i32 0
  %85 = load %struct.tilebox*, %struct.tilebox** %84, align 8
  %86 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %85, i64 0, i32 9
  store i32 %83, i32* %86, align 8
  %87 = sdiv i32 %45, 2
  %88 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i64 0, i32 10
  store i32 %87, i32* %88, align 4
  %89 = sdiv i32 %45, 2
  %90 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i64 0, i32 0
  %91 = load %struct.tilebox*, %struct.tilebox** %90, align 8
  %92 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %91, i64 0, i32 10
  store i32 %89, i32* %92, align 4
  %93 = sub nsw i32 0, %37
  %94 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i64 0, i32 11
  store i32 %93, i32* %94, align 8
  %95 = sub nsw i32 0, %37
  %96 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i64 0, i32 0
  %97 = load %struct.tilebox*, %struct.tilebox** %96, align 8
  %98 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i64 0, i32 11
  store i32 %95, i32* %98, align 8
  %99 = add i32 %32, %37
  %100 = sub i32 %33, %99
  %101 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i64 0, i32 12
  store i32 %100, i32* %101, align 4
  %102 = add i32 %32, %37
  %103 = sub i32 %33, %102
  %104 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i64 0, i32 0
  %105 = load %struct.tilebox*, %struct.tilebox** %104, align 8
  %106 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %105, i64 0, i32 12
  store i32 %103, i32* %106, align 4
  %107 = call noalias dereferenceable_or_null(224) i8* @malloc(i64 noundef 224) #3
  %108 = bitcast i8* %107 to %struct.cellbox*
  %109 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %110 = load i32, i32* @numcells, align 4
  %111 = load i32, i32* @numpads, align 4
  %112 = add nsw i32 %110, %111
  %113 = add nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %109, i64 %114
  %116 = bitcast %struct.cellbox** %115 to i8**
  store i8* %107, i8** %116, align 8
  %117 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %108, i64 0, i32 6
  store i32 1, i32* %117, align 4
  %118 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %108, i64 0, i32 8
  store i32 0, i32* %118, align 4
  %119 = sdiv i32 %45, 2
  %120 = add nsw i32 %31, %119
  %121 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %108, i64 0, i32 2
  store i32 %120, i32* %121, align 4
  %122 = add nsw i32 %33, %32
  %123 = sdiv i32 %122, 2
  %124 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %108, i64 0, i32 3
  store i32 %123, i32* %124, align 8
  %125 = call noalias dereferenceable_or_null(104) i8* @malloc(i64 noundef 104) #3
  %126 = bitcast i8* %125 to %struct.tilebox*
  %127 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %108, i64 0, i32 21, i64 0
  %128 = bitcast %struct.tilebox** %127 to i8**
  store i8* %125, i8** %128, align 8
  %129 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i64 0, i32 17
  store %struct.termbox* null, %struct.termbox** %129, align 8
  %130 = call noalias dereferenceable_or_null(104) i8* @malloc(i64 noundef 104) #3
  %131 = bitcast i8* %125 to i8**
  store i8* %130, i8** %131, align 8
  %.cast31 = bitcast i8* %130 to %struct.tilebox*
  %132 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.cast31, i64 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %132, align 8
  %.cast32 = bitcast i8* %130 to %struct.tilebox*
  %133 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.cast32, i64 0, i32 17
  store %struct.termbox* null, %struct.termbox** %133, align 8
  br label %134

134:                                              ; preds = %139, %80
  %.2 = phi i32 [ 1, %80 ], [ %140, %139 ]
  %135 = icmp ult i32 %.2, 8
  br i1 %135, label %136, label %141

136:                                              ; preds = %134
  %137 = zext i32 %.2 to i64
  %138 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %108, i64 0, i32 21, i64 %137
  store %struct.tilebox* null, %struct.tilebox** %138, align 8
  br label %139

139:                                              ; preds = %136
  %140 = add nuw nsw i32 %.2, 1
  br label %134, !llvm.loop !9

141:                                              ; preds = %134
  %142 = sdiv i32 %45, -2
  %143 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i64 0, i32 9
  store i32 %142, i32* %143, align 8
  %144 = sdiv i32 %45, -2
  %145 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i64 0, i32 0
  %146 = load %struct.tilebox*, %struct.tilebox** %145, align 8
  %147 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %146, i64 0, i32 9
  store i32 %144, i32* %147, align 8
  %148 = sdiv i32 %45, 2
  %149 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i64 0, i32 10
  store i32 %148, i32* %149, align 4
  %150 = sdiv i32 %45, 2
  %151 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i64 0, i32 0
  %152 = load %struct.tilebox*, %struct.tilebox** %151, align 8
  %153 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %152, i64 0, i32 10
  store i32 %150, i32* %153, align 4
  %154 = sub nsw i32 0, %37
  %155 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i64 0, i32 11
  store i32 %154, i32* %155, align 8
  %156 = sub nsw i32 0, %37
  %157 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i64 0, i32 0
  %158 = load %struct.tilebox*, %struct.tilebox** %157, align 8
  %159 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %158, i64 0, i32 11
  store i32 %156, i32* %159, align 8
  %160 = add i32 %32, %37
  %161 = sub i32 %33, %160
  %162 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i64 0, i32 12
  store i32 %161, i32* %162, align 4
  %163 = add i32 %32, %37
  %164 = sub i32 %33, %163
  %165 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %126, i64 0, i32 0
  %166 = load %struct.tilebox*, %struct.tilebox** %165, align 8
  %167 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %166, i64 0, i32 12
  store i32 %164, i32* %167, align 4
  %168 = call noalias dereferenceable_or_null(224) i8* @malloc(i64 noundef 224) #3
  %169 = bitcast i8* %168 to %struct.cellbox*
  %170 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %171 = load i32, i32* @numcells, align 4
  %172 = load i32, i32* @numpads, align 4
  %173 = add nsw i32 %171, %172
  %174 = add nsw i32 %173, 3
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %170, i64 %175
  %177 = bitcast %struct.cellbox** %176 to i8**
  store i8* %168, i8** %177, align 8
  %178 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %169, i64 0, i32 6
  store i32 1, i32* %178, align 4
  %179 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %169, i64 0, i32 8
  store i32 0, i32* %179, align 4
  %180 = add nsw i32 %30, %31
  %181 = sdiv i32 %180, 2
  %182 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %169, i64 0, i32 2
  store i32 %181, i32* %182, align 4
  %.neg33 = sdiv i32 %45, -2
  %183 = add i32 %.neg33, %32
  %184 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %169, i64 0, i32 3
  store i32 %183, i32* %184, align 8
  %185 = call noalias dereferenceable_or_null(104) i8* @malloc(i64 noundef 104) #3
  %186 = bitcast i8* %185 to %struct.tilebox*
  %187 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %169, i64 0, i32 21, i64 0
  %188 = bitcast %struct.tilebox** %187 to i8**
  store i8* %185, i8** %188, align 8
  %189 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %186, i64 0, i32 17
  store %struct.termbox* null, %struct.termbox** %189, align 8
  %190 = call noalias dereferenceable_or_null(104) i8* @malloc(i64 noundef 104) #3
  %191 = bitcast i8* %185 to i8**
  store i8* %190, i8** %191, align 8
  %.cast34 = bitcast i8* %190 to %struct.tilebox*
  %192 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.cast34, i64 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %192, align 8
  %.cast35 = bitcast i8* %190 to %struct.tilebox*
  %193 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.cast35, i64 0, i32 17
  store %struct.termbox* null, %struct.termbox** %193, align 8
  br label %194

194:                                              ; preds = %199, %141
  %.3 = phi i32 [ 1, %141 ], [ %200, %199 ]
  %195 = icmp ult i32 %.3, 8
  br i1 %195, label %196, label %201

196:                                              ; preds = %194
  %197 = zext i32 %.3 to i64
  %198 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %169, i64 0, i32 21, i64 %197
  store %struct.tilebox* null, %struct.tilebox** %198, align 8
  br label %199

199:                                              ; preds = %196
  %200 = add nuw nsw i32 %.3, 1
  br label %194, !llvm.loop !10

201:                                              ; preds = %194
  %202 = sdiv i32 %45, -2
  %203 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %186, i64 0, i32 11
  store i32 %202, i32* %203, align 8
  %204 = sdiv i32 %45, -2
  %205 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %186, i64 0, i32 0
  %206 = load %struct.tilebox*, %struct.tilebox** %205, align 8
  %207 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %206, i64 0, i32 11
  store i32 %204, i32* %207, align 8
  %208 = sdiv i32 %45, 2
  %209 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %186, i64 0, i32 12
  store i32 %208, i32* %209, align 4
  %210 = sdiv i32 %45, 2
  %211 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %186, i64 0, i32 0
  %212 = load %struct.tilebox*, %struct.tilebox** %211, align 8
  %213 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %212, i64 0, i32 12
  store i32 %210, i32* %213, align 4
  %214 = sub nsw i32 0, %35
  %215 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %186, i64 0, i32 9
  store i32 %214, i32* %215, align 8
  %216 = sub nsw i32 0, %35
  %217 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %186, i64 0, i32 0
  %218 = load %struct.tilebox*, %struct.tilebox** %217, align 8
  %219 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %218, i64 0, i32 9
  store i32 %216, i32* %219, align 8
  %220 = add i32 %30, %35
  %221 = sub i32 %31, %220
  %222 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %186, i64 0, i32 10
  store i32 %221, i32* %222, align 4
  %223 = add i32 %30, %35
  %224 = sub i32 %31, %223
  %225 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %186, i64 0, i32 0
  %226 = load %struct.tilebox*, %struct.tilebox** %225, align 8
  %227 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %226, i64 0, i32 10
  store i32 %224, i32* %227, align 4
  %228 = call noalias dereferenceable_or_null(224) i8* @malloc(i64 noundef 224) #3
  %229 = bitcast i8* %228 to %struct.cellbox*
  %230 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %231 = load i32, i32* @numcells, align 4
  %232 = load i32, i32* @numpads, align 4
  %233 = add nsw i32 %231, %232
  %234 = add nsw i32 %233, 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %230, i64 %235
  %237 = bitcast %struct.cellbox** %236 to i8**
  store i8* %228, i8** %237, align 8
  %238 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %229, i64 0, i32 6
  store i32 1, i32* %238, align 4
  %239 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %229, i64 0, i32 8
  store i32 0, i32* %239, align 4
  %240 = add nsw i32 %30, %31
  %241 = sdiv i32 %240, 2
  %242 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %229, i64 0, i32 2
  store i32 %241, i32* %242, align 4
  %243 = sdiv i32 %45, 2
  %244 = add nsw i32 %33, %243
  %245 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %229, i64 0, i32 3
  store i32 %244, i32* %245, align 8
  %246 = call noalias dereferenceable_or_null(104) i8* @malloc(i64 noundef 104) #3
  %247 = bitcast i8* %246 to %struct.tilebox*
  %248 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %229, i64 0, i32 21, i64 0
  %249 = bitcast %struct.tilebox** %248 to i8**
  store i8* %246, i8** %249, align 8
  %250 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i64 0, i32 17
  store %struct.termbox* null, %struct.termbox** %250, align 8
  %251 = call noalias dereferenceable_or_null(104) i8* @malloc(i64 noundef 104) #3
  %252 = bitcast i8* %246 to i8**
  store i8* %251, i8** %252, align 8
  %.cast36 = bitcast i8* %251 to %struct.tilebox*
  %253 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.cast36, i64 0, i32 0
  store %struct.tilebox* null, %struct.tilebox** %253, align 8
  %.cast37 = bitcast i8* %251 to %struct.tilebox*
  %254 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.cast37, i64 0, i32 17
  store %struct.termbox* null, %struct.termbox** %254, align 8
  br label %255

255:                                              ; preds = %260, %201
  %.4 = phi i32 [ 1, %201 ], [ %261, %260 ]
  %256 = icmp ult i32 %.4, 8
  br i1 %256, label %257, label %262

257:                                              ; preds = %255
  %258 = zext i32 %.4 to i64
  %259 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %229, i64 0, i32 21, i64 %258
  store %struct.tilebox* null, %struct.tilebox** %259, align 8
  br label %260

260:                                              ; preds = %257
  %261 = add nuw nsw i32 %.4, 1
  br label %255, !llvm.loop !11

262:                                              ; preds = %255
  %263 = sdiv i32 %45, -2
  %264 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i64 0, i32 11
  store i32 %263, i32* %264, align 8
  %265 = sdiv i32 %45, -2
  %266 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i64 0, i32 0
  %267 = load %struct.tilebox*, %struct.tilebox** %266, align 8
  %268 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %267, i64 0, i32 11
  store i32 %265, i32* %268, align 8
  %269 = sdiv i32 %45, 2
  %270 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i64 0, i32 12
  store i32 %269, i32* %270, align 4
  %271 = sdiv i32 %45, 2
  %272 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i64 0, i32 0
  %273 = load %struct.tilebox*, %struct.tilebox** %272, align 8
  %274 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %273, i64 0, i32 12
  store i32 %271, i32* %274, align 4
  %275 = sub nsw i32 0, %35
  %276 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i64 0, i32 9
  store i32 %275, i32* %276, align 8
  %277 = sub nsw i32 0, %35
  %278 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i64 0, i32 0
  %279 = load %struct.tilebox*, %struct.tilebox** %278, align 8
  %280 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %279, i64 0, i32 9
  store i32 %277, i32* %280, align 8
  %281 = add i32 %30, %35
  %282 = sub i32 %31, %281
  %283 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i64 0, i32 10
  store i32 %282, i32* %283, align 4
  %284 = add i32 %30, %35
  %285 = sub i32 %31, %284
  %286 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %247, i64 0, i32 0
  %287 = load %struct.tilebox*, %struct.tilebox** %286, align 8
  %288 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %287, i64 0, i32 10
  store i32 %285, i32* %288, align 4
  br label %456

289:                                              ; preds = %44
  %290 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %291 = load i32, i32* @numcells, align 4
  %292 = load i32, i32* @numpads, align 4
  %293 = add nsw i32 %291, %292
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %290, i64 %295
  %297 = load %struct.cellbox*, %struct.cellbox** %296, align 8
  %.neg = sdiv i32 %45, -2
  %298 = add i32 %.neg, %30
  %299 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %297, i64 0, i32 2
  store i32 %298, i32* %299, align 4
  %300 = add nsw i32 %33, %32
  %301 = sdiv i32 %300, 2
  %302 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %297, i64 0, i32 3
  store i32 %301, i32* %302, align 8
  %303 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %297, i64 0, i32 21, i64 0
  %304 = load %struct.tilebox*, %struct.tilebox** %303, align 8
  %305 = sdiv i32 %45, -2
  %306 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %304, i64 0, i32 9
  store i32 %305, i32* %306, align 8
  %307 = sdiv i32 %45, -2
  %308 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %304, i64 0, i32 0
  %309 = load %struct.tilebox*, %struct.tilebox** %308, align 8
  %310 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %309, i64 0, i32 9
  store i32 %307, i32* %310, align 8
  %311 = sdiv i32 %45, 2
  %312 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %304, i64 0, i32 10
  store i32 %311, i32* %312, align 4
  %313 = sdiv i32 %45, 2
  %314 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %304, i64 0, i32 0
  %315 = load %struct.tilebox*, %struct.tilebox** %314, align 8
  %316 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %315, i64 0, i32 10
  store i32 %313, i32* %316, align 4
  %317 = sub nsw i32 0, %37
  %318 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %304, i64 0, i32 11
  store i32 %317, i32* %318, align 8
  %319 = sub nsw i32 0, %37
  %320 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %304, i64 0, i32 0
  %321 = load %struct.tilebox*, %struct.tilebox** %320, align 8
  %322 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %321, i64 0, i32 11
  store i32 %319, i32* %322, align 8
  %323 = add i32 %32, %37
  %324 = sub i32 %33, %323
  %325 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %304, i64 0, i32 12
  store i32 %324, i32* %325, align 4
  %326 = add i32 %32, %37
  %327 = sub i32 %33, %326
  %328 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %304, i64 0, i32 0
  %329 = load %struct.tilebox*, %struct.tilebox** %328, align 8
  %330 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %329, i64 0, i32 12
  store i32 %327, i32* %330, align 4
  %331 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %332 = load i32, i32* @numcells, align 4
  %333 = load i32, i32* @numpads, align 4
  %334 = add nsw i32 %332, %333
  %335 = add nsw i32 %334, 2
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %331, i64 %336
  %338 = load %struct.cellbox*, %struct.cellbox** %337, align 8
  %339 = sdiv i32 %45, 2
  %340 = add nsw i32 %31, %339
  %341 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %338, i64 0, i32 2
  store i32 %340, i32* %341, align 4
  %342 = add nsw i32 %33, %32
  %343 = sdiv i32 %342, 2
  %344 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %338, i64 0, i32 3
  store i32 %343, i32* %344, align 8
  %345 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %338, i64 0, i32 21, i64 0
  %346 = load %struct.tilebox*, %struct.tilebox** %345, align 8
  %347 = sdiv i32 %45, -2
  %348 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %346, i64 0, i32 9
  store i32 %347, i32* %348, align 8
  %349 = sdiv i32 %45, -2
  %350 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %346, i64 0, i32 0
  %351 = load %struct.tilebox*, %struct.tilebox** %350, align 8
  %352 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %351, i64 0, i32 9
  store i32 %349, i32* %352, align 8
  %353 = sdiv i32 %45, 2
  %354 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %346, i64 0, i32 10
  store i32 %353, i32* %354, align 4
  %355 = sdiv i32 %45, 2
  %356 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %346, i64 0, i32 0
  %357 = load %struct.tilebox*, %struct.tilebox** %356, align 8
  %358 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %357, i64 0, i32 10
  store i32 %355, i32* %358, align 4
  %359 = sub nsw i32 0, %37
  %360 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %346, i64 0, i32 11
  store i32 %359, i32* %360, align 8
  %361 = sub nsw i32 0, %37
  %362 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %346, i64 0, i32 0
  %363 = load %struct.tilebox*, %struct.tilebox** %362, align 8
  %364 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %363, i64 0, i32 11
  store i32 %361, i32* %364, align 8
  %365 = add i32 %32, %37
  %366 = sub i32 %33, %365
  %367 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %346, i64 0, i32 12
  store i32 %366, i32* %367, align 4
  %368 = add i32 %32, %37
  %369 = sub i32 %33, %368
  %370 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %346, i64 0, i32 0
  %371 = load %struct.tilebox*, %struct.tilebox** %370, align 8
  %372 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %371, i64 0, i32 12
  store i32 %369, i32* %372, align 4
  %373 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %374 = load i32, i32* @numcells, align 4
  %375 = load i32, i32* @numpads, align 4
  %376 = add nsw i32 %374, %375
  %377 = add nsw i32 %376, 3
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %373, i64 %378
  %380 = load %struct.cellbox*, %struct.cellbox** %379, align 8
  %381 = add nsw i32 %30, %31
  %382 = sdiv i32 %381, 2
  %383 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %380, i64 0, i32 2
  store i32 %382, i32* %383, align 4
  %.neg24 = sdiv i32 %45, -2
  %384 = add i32 %.neg24, %32
  %385 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %380, i64 0, i32 3
  store i32 %384, i32* %385, align 8
  %386 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %380, i64 0, i32 21, i64 0
  %387 = load %struct.tilebox*, %struct.tilebox** %386, align 8
  %388 = sdiv i32 %45, -2
  %389 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %387, i64 0, i32 11
  store i32 %388, i32* %389, align 8
  %390 = sdiv i32 %45, -2
  %391 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %387, i64 0, i32 0
  %392 = load %struct.tilebox*, %struct.tilebox** %391, align 8
  %393 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %392, i64 0, i32 11
  store i32 %390, i32* %393, align 8
  %394 = sdiv i32 %45, 2
  %395 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %387, i64 0, i32 12
  store i32 %394, i32* %395, align 4
  %396 = sdiv i32 %45, 2
  %397 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %387, i64 0, i32 0
  %398 = load %struct.tilebox*, %struct.tilebox** %397, align 8
  %399 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %398, i64 0, i32 12
  store i32 %396, i32* %399, align 4
  %400 = sub nsw i32 0, %35
  %401 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %387, i64 0, i32 9
  store i32 %400, i32* %401, align 8
  %402 = sub nsw i32 0, %35
  %403 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %387, i64 0, i32 0
  %404 = load %struct.tilebox*, %struct.tilebox** %403, align 8
  %405 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %404, i64 0, i32 9
  store i32 %402, i32* %405, align 8
  %406 = add i32 %30, %35
  %407 = sub i32 %31, %406
  %408 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %387, i64 0, i32 10
  store i32 %407, i32* %408, align 4
  %409 = add i32 %30, %35
  %410 = sub i32 %31, %409
  %411 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %387, i64 0, i32 0
  %412 = load %struct.tilebox*, %struct.tilebox** %411, align 8
  %413 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %412, i64 0, i32 10
  store i32 %410, i32* %413, align 4
  %414 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %415 = load i32, i32* @numcells, align 4
  %416 = load i32, i32* @numpads, align 4
  %417 = add nsw i32 %415, %416
  %418 = add nsw i32 %417, 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %414, i64 %419
  %421 = load %struct.cellbox*, %struct.cellbox** %420, align 8
  %422 = add nsw i32 %30, %31
  %423 = sdiv i32 %422, 2
  %424 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %421, i64 0, i32 2
  store i32 %423, i32* %424, align 4
  %425 = sdiv i32 %45, 2
  %426 = add nsw i32 %33, %425
  %427 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %421, i64 0, i32 3
  store i32 %426, i32* %427, align 8
  %428 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %421, i64 0, i32 21, i64 0
  %429 = load %struct.tilebox*, %struct.tilebox** %428, align 8
  %430 = sdiv i32 %45, -2
  %431 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %429, i64 0, i32 11
  store i32 %430, i32* %431, align 8
  %432 = sdiv i32 %45, -2
  %433 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %429, i64 0, i32 0
  %434 = load %struct.tilebox*, %struct.tilebox** %433, align 8
  %435 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %434, i64 0, i32 11
  store i32 %432, i32* %435, align 8
  %436 = sdiv i32 %45, 2
  %437 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %429, i64 0, i32 12
  store i32 %436, i32* %437, align 4
  %438 = sdiv i32 %45, 2
  %439 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %429, i64 0, i32 0
  %440 = load %struct.tilebox*, %struct.tilebox** %439, align 8
  %441 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %440, i64 0, i32 12
  store i32 %438, i32* %441, align 4
  %442 = sub nsw i32 0, %35
  %443 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %429, i64 0, i32 9
  store i32 %442, i32* %443, align 8
  %444 = sub nsw i32 0, %35
  %445 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %429, i64 0, i32 0
  %446 = load %struct.tilebox*, %struct.tilebox** %445, align 8
  %447 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %446, i64 0, i32 9
  store i32 %444, i32* %447, align 8
  %448 = add i32 %30, %35
  %449 = sub i32 %31, %448
  %450 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %429, i64 0, i32 10
  store i32 %449, i32* %450, align 4
  %451 = add i32 %30, %35
  %452 = sub i32 %31, %451
  %453 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %429, i64 0, i32 0
  %454 = load %struct.tilebox*, %struct.tilebox** %453, align 8
  %455 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %454, i64 0, i32 10
  store i32 %452, i32* %455, align 4
  br label %456

456:                                              ; preds = %289, %262
  br label %457

457:                                              ; preds = %598, %456
  %.0 = phi i32 [ 1, %456 ], [ %599, %598 ]
  %458 = load i32, i32* @numcells, align 4
  %459 = load i32, i32* @numpads, align 4
  %460 = add nsw i32 %458, %459
  %461 = add nsw i32 %460, 4
  %.not25 = icmp sgt i32 %.0, %461
  br i1 %.not25, label %600, label %462

462:                                              ; preds = %457
  %463 = load i32, i32* @numcells, align 4
  %464 = icmp sgt i32 %.0, %463
  br i1 %464, label %465, label %470

465:                                              ; preds = %462
  %466 = load i32, i32* @numcells, align 4
  %467 = load i32, i32* @numpads, align 4
  %468 = add nsw i32 %466, %467
  %.not28 = icmp sgt i32 %.0, %468
  br i1 %.not28, label %470, label %469

469:                                              ; preds = %465
  br label %598

470:                                              ; preds = %465, %462
  %471 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %472 = zext i32 %.0 to i64
  %473 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %471, i64 %472
  %474 = load %struct.cellbox*, %struct.cellbox** %473, align 8
  %475 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %474, i64 0, i32 5
  %476 = load i32, i32* %475, align 8
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %474, i64 0, i32 21, i64 %477
  %479 = load %struct.tilebox*, %struct.tilebox** %478, align 8
  %480 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %474, i64 0, i32 2
  %481 = load i32, i32* %480, align 4
  %482 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 9
  %483 = load i32, i32* %482, align 8
  %484 = add nsw i32 %481, %483
  %485 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 10
  %486 = load i32, i32* %485, align 4
  %487 = add nsw i32 %481, %486
  %488 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %474, i64 0, i32 3
  %489 = load i32, i32* %488, align 8
  %490 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 11
  %491 = load i32, i32* %490, align 8
  %492 = add nsw i32 %489, %491
  %493 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 12
  %494 = load i32, i32* %493, align 4
  %495 = add nsw i32 %489, %494
  %496 = load i32, i32* @numcells, align 4
  %.not26 = icmp sgt i32 %.0, %496
  br i1 %.not26, label %527, label %497

497:                                              ; preds = %470
  %498 = load i32, i32* @finalShot, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %515

500:                                              ; preds = %497
  %501 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 1
  %502 = load double, double* %501, align 8
  %503 = call i32 @wireestx(i32 noundef %484, i32 noundef %492, i32 noundef %495, double noundef %502) #3
  %504 = sub nsw i32 %484, %503
  %505 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 2
  %506 = load double, double* %505, align 8
  %507 = call i32 @wireestx(i32 noundef %487, i32 noundef %492, i32 noundef %495, double noundef %506) #3
  %508 = add nsw i32 %487, %507
  %509 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 3
  %510 = load double, double* %509, align 8
  %511 = call i32 @wireesty(i32 noundef %492, i32 noundef %504, i32 noundef %508, double noundef %510) #3
  %512 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 4
  %513 = load double, double* %512, align 8
  %514 = call i32 @wireesty(i32 noundef %495, i32 noundef %504, i32 noundef %508, double noundef %513) #3
  br label %526

515:                                              ; preds = %497
  %516 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 5
  %517 = load i32, i32* %516, align 8
  %518 = sub nsw i32 %484, %517
  %519 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 6
  %520 = load i32, i32* %519, align 4
  %521 = add nsw i32 %487, %520
  %522 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 7
  %523 = load i32, i32* %522, align 8
  %524 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %479, i64 0, i32 8
  %525 = load i32, i32* %524, align 4
  br label %526

526:                                              ; preds = %515, %500
  %.pn = phi i32 [ %514, %500 ], [ %525, %515 ]
  %.pn27 = phi i32 [ %511, %500 ], [ %523, %515 ]
  %.08 = phi i32 [ %508, %500 ], [ %521, %515 ]
  %.06 = phi i32 [ %504, %500 ], [ %518, %515 ]
  %.010 = sub nsw i32 %492, %.pn27
  %.012 = add nsw i32 %495, %.pn
  br label %527

527:                                              ; preds = %526, %470
  %.113 = phi i32 [ %.012, %526 ], [ %495, %470 ]
  %.111 = phi i32 [ %.010, %526 ], [ %492, %470 ]
  %.19 = phi i32 [ %.08, %526 ], [ %487, %470 ]
  %.17 = phi i32 [ %.06, %526 ], [ %484, %470 ]
  %528 = load i32, i32* @binOffsetX, align 4
  %529 = sub nsw i32 %.17, %528
  %530 = load i32, i32* @binWidthX, align 4
  %531 = sdiv i32 %529, %530
  %532 = icmp slt i32 %531, 1
  br i1 %532, label %533, label %534

533:                                              ; preds = %527
  br label %540

534:                                              ; preds = %527
  %535 = load i32, i32* @numBinsX, align 4
  %536 = icmp sgt i32 %531, %535
  br i1 %536, label %537, label %539

537:                                              ; preds = %534
  %538 = load i32, i32* @numBinsX, align 4
  br label %539

539:                                              ; preds = %537, %534
  %.016 = phi i32 [ %538, %537 ], [ %531, %534 ]
  br label %540

540:                                              ; preds = %539, %533
  %.117 = phi i32 [ 1, %533 ], [ %.016, %539 ]
  %541 = load i32, i32* @binOffsetX, align 4
  %542 = sub nsw i32 %.19, %541
  %543 = load i32, i32* @binWidthX, align 4
  %544 = sdiv i32 %542, %543
  %545 = load i32, i32* @numBinsX, align 4
  %546 = icmp sgt i32 %544, %545
  br i1 %546, label %547, label %549

547:                                              ; preds = %540
  %548 = load i32, i32* @numBinsX, align 4
  br label %553

549:                                              ; preds = %540
  %550 = icmp slt i32 %544, 1
  br i1 %550, label %551, label %552

551:                                              ; preds = %549
  br label %552

552:                                              ; preds = %551, %549
  %.018 = phi i32 [ 1, %551 ], [ %544, %549 ]
  br label %553

553:                                              ; preds = %552, %547
  %.119 = phi i32 [ %548, %547 ], [ %.018, %552 ]
  %554 = icmp eq i32 %.117, %.119
  br i1 %554, label %555, label %592

555:                                              ; preds = %553
  %556 = load i32, i32* @binOffsetY, align 4
  %557 = sub nsw i32 %.111, %556
  %558 = load i32, i32* @binWidthY, align 4
  %559 = sdiv i32 %557, %558
  %560 = icmp slt i32 %559, 1
  br i1 %560, label %561, label %562

561:                                              ; preds = %555
  br label %568

562:                                              ; preds = %555
  %563 = load i32, i32* @numBinsY, align 4
  %564 = icmp sgt i32 %559, %563
  br i1 %564, label %565, label %567

565:                                              ; preds = %562
  %566 = load i32, i32* @numBinsY, align 4
  br label %567

567:                                              ; preds = %565, %562
  %.020 = phi i32 [ %566, %565 ], [ %559, %562 ]
  br label %568

568:                                              ; preds = %567, %561
  %.121 = phi i32 [ 1, %561 ], [ %.020, %567 ]
  %569 = load i32, i32* @binOffsetY, align 4
  %570 = sub nsw i32 %.113, %569
  %571 = load i32, i32* @binWidthY, align 4
  %572 = sdiv i32 %570, %571
  %573 = load i32, i32* @numBinsY, align 4
  %574 = icmp sgt i32 %572, %573
  br i1 %574, label %575, label %577

575:                                              ; preds = %568
  %576 = load i32, i32* @numBinsY, align 4
  br label %581

577:                                              ; preds = %568
  %578 = icmp slt i32 %572, 1
  br i1 %578, label %579, label %580

579:                                              ; preds = %577
  br label %580

580:                                              ; preds = %579, %577
  %.01 = phi i32 [ 1, %579 ], [ %572, %577 ]
  br label %581

581:                                              ; preds = %580, %575
  %.1 = phi i32 [ %576, %575 ], [ %.01, %580 ]
  %582 = icmp eq i32 %.121, %.1
  br i1 %582, label %583, label %590

583:                                              ; preds = %581
  %584 = load i32***, i32**** @blockarray, align 8
  %585 = sext i32 %.117 to i64
  %586 = getelementptr inbounds i32**, i32*** %584, i64 %585
  %587 = load i32**, i32*** %586, align 8
  %588 = sext i32 %.121 to i64
  %589 = getelementptr inbounds i32*, i32** %587, i64 %588
  br label %591

590:                                              ; preds = %581
  br label %591

591:                                              ; preds = %590, %583
  %.014.in = phi i32** [ %589, %583 ], [ @bucket, %590 ]
  br label %593

592:                                              ; preds = %553
  br label %593

593:                                              ; preds = %592, %591
  %.115.in = phi i32** [ %.014.in, %591 ], [ @bucket, %592 ]
  %.115 = load i32*, i32** %.115.in, align 8
  %594 = load i32, i32* %.115, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %.115, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %.115, i64 %596
  store i32 %.0, i32* %597, align 4
  br label %598

598:                                              ; preds = %593, %469
  %599 = add nuw nsw i32 %.0, 1
  br label %457, !llvm.loop !12

600:                                              ; preds = %457
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @wireestx(i32 noundef, i32 noundef, i32 noundef, double noundef) #2

declare dso_local i32 @wireesty(i32 noundef, i32 noundef, i32 noundef, double noundef) #2

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
