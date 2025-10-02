; ModuleID = './addpins.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/addpins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@numnets = external dso_local global i32, align 4
@Hdefault = external dso_local global double, align 8
@Vdefault = external dso_local global double, align 8
@pinnames = external dso_local global i8**, align 8
@maxterm = external dso_local global i32, align 4
@.str = private unnamed_addr constant [8 x i8] c"PHANTOM\00", align 1
@termarray = external dso_local global %struct.termnets**, align 8
@cellarray = external dso_local global %struct.cellbox**, align 8
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @addpins() #0 {
  %1 = load i32, i32* @numcells, align 4
  %2 = load i8*, i8** bitcast (%struct.dimbox*** @netarray to i8**), align 8
  %3 = load i32, i32* @numnets, align 4
  %4 = add nsw i32 %3, %1
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = call i8* @realloc(i8* noundef %2, i64 noundef %7) #3
  store i8* %8, i8** bitcast (%struct.dimbox*** @netarray to i8**), align 8
  %9 = load i32, i32* @numnets, align 4
  br label %10

10:                                               ; preds = %36, %0
  %.0.in = phi i32 [ %9, %0 ], [ %.0, %36 ]
  %.0 = add nsw i32 %.0.in, 1
  %11 = load i32, i32* @numnets, align 4
  %12 = add nsw i32 %11, %1
  %.not.not = icmp slt i32 %.0.in, %12
  br i1 %.not.not, label %13, label %37

13:                                               ; preds = %10
  %14 = call noalias dereferenceable_or_null(72) i8* @malloc(i64 noundef 72) #3
  %15 = bitcast i8* %14 to %struct.dimbox*
  %16 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %17 = sext i32 %.0 to i64
  %18 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %16, i64 %17
  %19 = bitcast %struct.dimbox** %18 to i8**
  store i8* %14, i8** %19, align 8
  %20 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 0
  store %struct.netbox* null, %struct.netbox** %20, align 8
  %21 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 13
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 7
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 3
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 4
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 5
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 6
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 8
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 9
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 10
  store i32 0, i32* %31, align 4
  %32 = load double, double* @Hdefault, align 8
  %33 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 11
  store double %32, double* %33, align 8
  %34 = load double, double* @Vdefault, align 8
  %35 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 12
  store double %34, double* %35, align 8
  br label %36

36:                                               ; preds = %13
  br label %10, !llvm.loop !4

37:                                               ; preds = %10
  %38 = load i8*, i8** bitcast (i8*** @pinnames to i8**), align 8
  %39 = load i32, i32* @maxterm, align 4
  %40 = shl nsw i32 %1, 1
  %41 = add nsw i32 %39, %40
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 3
  %45 = call i8* @realloc(i8* noundef %38, i64 noundef %44) #3
  store i8* %45, i8** bitcast (i8*** @pinnames to i8**), align 8
  %46 = load i32, i32* @maxterm, align 4
  br label %47

47:                                               ; preds = %61, %37
  %.01.in = phi i32 [ %46, %37 ], [ %.01, %61 ]
  %.01 = add nsw i32 %.01.in, 1
  %48 = load i32, i32* @maxterm, align 4
  %49 = shl nsw i32 %1, 1
  %50 = add nsw i32 %48, %49
  %.not.not3 = icmp slt i32 %.01.in, %50
  br i1 %.not.not3, label %51, label %62

51:                                               ; preds = %47
  %52 = call noalias dereferenceable_or_null(9) i8* @malloc(i64 noundef 9) #3
  %53 = load i8**, i8*** @pinnames, align 8
  %54 = sext i32 %.01 to i64
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  store i8* %52, i8** %55, align 8
  %56 = load i8**, i8*** @pinnames, align 8
  %57 = sext i32 %.01 to i64
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = bitcast i8** %58 to i64**
  %60 = load i64*, i64** %59, align 8
  store i64 21760796715468880, i64* %60, align 1
  br label %61

61:                                               ; preds = %51
  br label %47, !llvm.loop !6

62:                                               ; preds = %47
  %63 = load i8*, i8** bitcast (%struct.termnets*** @termarray to i8**), align 8
  %64 = load i32, i32* @maxterm, align 4
  %65 = shl nsw i32 %1, 1
  %66 = add nsw i32 %64, %65
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 3
  %70 = call i8* @realloc(i8* noundef %63, i64 noundef %69) #3
  store i8* %70, i8** bitcast (%struct.termnets*** @termarray to i8**), align 8
  %71 = load i32, i32* @maxterm, align 4
  br label %72

72:                                               ; preds = %82, %62
  %.1.in = phi i32 [ %71, %62 ], [ %.1, %82 ]
  %.1 = add nsw i32 %.1.in, 1
  %73 = load i32, i32* @maxterm, align 4
  %74 = shl nsw i32 %1, 1
  %75 = add nsw i32 %73, %74
  %.not.not4 = icmp slt i32 %.1.in, %75
  br i1 %.not.not4, label %76, label %83

76:                                               ; preds = %72
  %77 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %78 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %79 = sext i32 %.1 to i64
  %80 = getelementptr inbounds %struct.termnets*, %struct.termnets** %78, i64 %79
  %81 = bitcast %struct.termnets** %80 to i8**
  store i8* %77, i8** %81, align 8
  br label %82

82:                                               ; preds = %76
  br label %72, !llvm.loop !7

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %188, %83
  %.02 = phi i32 [ 1, %83 ], [ %189, %188 ]
  %85 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.02, %85
  br i1 %.not, label %190, label %86

86:                                               ; preds = %84
  %87 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %88 = zext i32 %.02 to i64
  %89 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %87, i64 %88
  %90 = load %struct.cellbox*, %struct.cellbox** %89, align 8
  %91 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %90, i64 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %90, i64 0, i32 21, i64 %93
  %95 = load %struct.tilebox*, %struct.tilebox** %94, align 8
  %96 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %95, i64 0, i32 17
  %97 = load %struct.termbox*, %struct.termbox** %96, align 8
  %98 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #3
  %99 = bitcast i8* %98 to %struct.termbox*
  %100 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %95, i64 0, i32 17
  %101 = bitcast %struct.termbox** %100 to i8**
  store i8* %98, i8** %101, align 8
  %102 = getelementptr inbounds %struct.termbox, %struct.termbox* %99, i64 0, i32 0
  store %struct.termbox* %97, %struct.termbox** %102, align 8
  %103 = getelementptr inbounds %struct.termbox, %struct.termbox* %99, i64 0, i32 1
  store i32 0, i32* %103, align 8
  %104 = getelementptr inbounds %struct.termbox, %struct.termbox* %99, i64 0, i32 2
  store i32 0, i32* %104, align 4
  %105 = load i32, i32* @maxterm, align 4
  %106 = shl nuw nsw i32 %.02, 1
  %107 = add nsw i32 %105, %106
  %108 = add nsw i32 %107, -1
  %109 = getelementptr inbounds %struct.termbox, %struct.termbox* %99, i64 0, i32 5
  store i32 %108, i32* %109, align 8
  %110 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #3
  %111 = bitcast i8* %110 to %struct.netbox*
  %112 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %113 = load i32, i32* @numnets, align 4
  %114 = add nsw i32 %113, %.02
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %112, i64 %115
  %117 = bitcast %struct.dimbox** %116 to i8***
  %118 = load i8**, i8*** %117, align 8
  store i8* %110, i8** %118, align 8
  %119 = load i32, i32* @maxterm, align 4
  %120 = shl nuw nsw i32 %.02, 1
  %121 = add nsw i32 %119, %120
  %122 = add nsw i32 %121, -1
  %123 = getelementptr inbounds %struct.netbox, %struct.netbox* %111, i64 0, i32 5
  store i32 %122, i32* %123, align 8
  %124 = getelementptr inbounds %struct.netbox, %struct.netbox* %111, i64 0, i32 7
  store i32 %.02, i32* %124, align 8
  %125 = getelementptr inbounds %struct.netbox, %struct.netbox* %111, i64 0, i32 6
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.netbox, %struct.netbox* %111, i64 0, i32 9
  store i32 0, i32* %126, align 8
  %127 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %90, i64 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.netbox, %struct.netbox* %111, i64 0, i32 1
  store i32 %128, i32* %129, align 8
  %130 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %90, i64 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.netbox, %struct.netbox* %111, i64 0, i32 2
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* @numnets, align 4
  %134 = add nsw i32 %133, %.02
  %135 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %136 = getelementptr inbounds %struct.netbox, %struct.netbox* %111, i64 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.termnets*, %struct.termnets** %135, i64 %138
  %140 = load %struct.termnets*, %struct.termnets** %139, align 8
  %141 = getelementptr inbounds %struct.termnets, %struct.termnets* %140, i64 0, i32 0
  store i32 %134, i32* %141, align 8
  %142 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %143 = getelementptr inbounds %struct.netbox, %struct.netbox* %111, i64 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.termnets*, %struct.termnets** %142, i64 %145
  %147 = load %struct.termnets*, %struct.termnets** %146, align 8
  %148 = getelementptr inbounds %struct.termnets, %struct.termnets* %147, i64 0, i32 1
  %149 = bitcast %struct.netbox** %148 to i8**
  store i8* %110, i8** %149, align 8
  %150 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #3
  %151 = bitcast i8* %150 to %struct.netbox*
  %152 = bitcast i8* %110 to i8**
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* @maxterm, align 4
  %154 = shl nuw nsw i32 %.02, 1
  %155 = add nsw i32 %153, %154
  %156 = getelementptr inbounds %struct.netbox, %struct.netbox* %151, i64 0, i32 5
  store i32 %155, i32* %156, align 8
  %157 = getelementptr inbounds %struct.netbox, %struct.netbox* %151, i64 0, i32 7
  store i32 %.02, i32* %157, align 8
  %158 = getelementptr inbounds %struct.netbox, %struct.netbox* %151, i64 0, i32 6
  store i32 0, i32* %158, align 4
  %159 = getelementptr inbounds %struct.netbox, %struct.netbox* %151, i64 0, i32 9
  store i32 0, i32* %159, align 8
  %160 = load i32, i32* @blockl, align 4
  %161 = load i32, i32* @blockr, align 4
  %162 = add nsw i32 %160, %161
  %163 = sdiv i32 %162, 2
  %164 = getelementptr inbounds %struct.netbox, %struct.netbox* %151, i64 0, i32 1
  store i32 %163, i32* %164, align 8
  %165 = load i32, i32* @blockb, align 4
  %166 = load i32, i32* @blockt, align 4
  %167 = add nsw i32 %165, %166
  %168 = sdiv i32 %167, 2
  %169 = getelementptr inbounds %struct.netbox, %struct.netbox* %151, i64 0, i32 2
  store i32 %168, i32* %169, align 4
  %170 = getelementptr inbounds %struct.netbox, %struct.netbox* %151, i64 0, i32 0
  store %struct.netbox* null, %struct.netbox** %170, align 8
  %171 = load i32, i32* @numnets, align 4
  %172 = add nsw i32 %171, %.02
  %173 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %174 = getelementptr inbounds %struct.netbox, %struct.netbox* %151, i64 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.termnets*, %struct.termnets** %173, i64 %176
  %178 = load %struct.termnets*, %struct.termnets** %177, align 8
  %179 = getelementptr inbounds %struct.termnets, %struct.termnets* %178, i64 0, i32 0
  store i32 %172, i32* %179, align 8
  %180 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %181 = getelementptr inbounds %struct.netbox, %struct.netbox* %151, i64 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.termnets*, %struct.termnets** %180, i64 %183
  %185 = load %struct.termnets*, %struct.termnets** %184, align 8
  %186 = getelementptr inbounds %struct.termnets, %struct.termnets* %185, i64 0, i32 1
  %187 = bitcast %struct.netbox** %186 to i8**
  store i8* %150, i8** %187, align 8
  br label %188

188:                                              ; preds = %86
  %189 = add nuw nsw i32 %.02, 1
  br label %84, !llvm.loop !8

190:                                              ; preds = %84
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @subpins() #0 {
  %1 = load i32, i32* @numcells, align 4
  %2 = load i32, i32* @numnets, align 4
  br label %3

3:                                                ; preds = %28, %0
  %.0.in = phi i32 [ %2, %0 ], [ %.0, %28 ]
  %.0 = add nsw i32 %.0.in, 1
  %4 = load i32, i32* @numnets, align 4
  %5 = add nsw i32 %4, %1
  %.not.not = icmp slt i32 %.0.in, %5
  br i1 %.not.not, label %6, label %29

6:                                                ; preds = %3
  %7 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %8 = sext i32 %.0 to i64
  %9 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %7, i64 %8
  %10 = load %struct.dimbox*, %struct.dimbox** %9, align 8
  %11 = bitcast %struct.dimbox* %10 to i8***
  %12 = load i8**, i8*** %11, align 8
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* noundef %13) #3
  %14 = bitcast %struct.dimbox* %10 to i8**
  %15 = load i8*, i8** %14, align 8
  call void @free(i8* noundef %15) #3
  %16 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 0
  store %struct.netbox* null, %struct.netbox** %16, align 8
  %17 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 13
  store i8* null, i8** %17, align 8
  %18 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 7
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 3
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 4
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 5
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 6
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 8
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 9
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %10, i64 0, i32 10
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %6
  br label %3, !llvm.loop !9

29:                                               ; preds = %3
  %30 = load i32, i32* @maxterm, align 4
  br label %31

31:                                               ; preds = %39, %29
  %.01.in = phi i32 [ %30, %29 ], [ %.01, %39 ]
  %.01 = add nsw i32 %.01.in, 1
  %32 = load i32, i32* @maxterm, align 4
  %33 = shl nsw i32 %1, 1
  %34 = add nsw i32 %32, %33
  %.not.not3 = icmp slt i32 %.01.in, %34
  br i1 %.not.not3, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %37 = sext i32 %.01 to i64
  %38 = getelementptr inbounds %struct.termnets*, %struct.termnets** %36, i64 %37
  store %struct.termnets* null, %struct.termnets** %38, align 8
  br label %39

39:                                               ; preds = %35
  br label %31, !llvm.loop !10

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %59, %40
  %.02 = phi i32 [ 1, %40 ], [ %60, %59 ]
  %42 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.02, %42
  br i1 %.not, label %61, label %43

43:                                               ; preds = %41
  %44 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %45 = zext i32 %.02 to i64
  %46 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %44, i64 %45
  %47 = load %struct.cellbox*, %struct.cellbox** %46, align 8
  %48 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %47, i64 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %47, i64 0, i32 21, i64 %50
  %52 = load %struct.tilebox*, %struct.tilebox** %51, align 8
  %53 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i64 0, i32 17
  %54 = load %struct.termbox*, %struct.termbox** %53, align 8
  %55 = getelementptr inbounds %struct.termbox, %struct.termbox* %54, i64 0, i32 0
  %56 = load %struct.termbox*, %struct.termbox** %55, align 8
  %57 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i64 0, i32 17
  store %struct.termbox* %56, %struct.termbox** %57, align 8
  %58 = bitcast %struct.termbox* %54 to i8*
  call void @free(i8* noundef %58) #3
  br label %59

59:                                               ; preds = %43
  %60 = add nuw nsw i32 %.02, 1
  br label %41, !llvm.loop !11

61:                                               ; preds = %41
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
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
