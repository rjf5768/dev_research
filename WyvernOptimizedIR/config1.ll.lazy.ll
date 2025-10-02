; ModuleID = './config1.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/config1.c"
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
@coreGiven = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@perim = external dso_local global i32, align 4
@totChanLen = dso_local global i32 0, align 4
@aveChanWid = external dso_local global i32, align 4
@maxWeight = external dso_local global i32, align 4
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
@totNetLen = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @config1() #0 {
  br label %1

1:                                                ; preds = %52, %0
  %.02 = phi i32 [ 0, %0 ], [ %.2, %52 ]
  %.0 = phi i32 [ 1, %0 ], [ %53, %52 ]
  %2 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %54, label %3

3:                                                ; preds = %1
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %5
  %7 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %29

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
  %28 = add nsw i32 %.02, %27
  br label %51

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %32
  %34 = load %struct.tilebox*, %struct.tilebox** %33, align 8
  br label %35

35:                                               ; preds = %37, %29
  %.1 = phi i32 [ %.02, %29 ], [ %49, %37 ]
  %.pn = phi %struct.tilebox* [ %34, %29 ], [ %.01, %37 ]
  %.01.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.01 = load %struct.tilebox*, %struct.tilebox** %.01.in, align 8
  %.not7 = icmp eq %struct.tilebox* %.01, null
  br i1 %.not7, label %50, label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %39, %41
  %43 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 11
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %44, %46
  %48 = mul nsw i32 %42, %47
  %49 = add nsw i32 %.1, %48
  br label %35, !llvm.loop !4

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %11
  %.2 = phi i32 [ %28, %11 ], [ %.1, %50 ]
  br label %52

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

54:                                               ; preds = %1
  %55 = load i32, i32* @coreGiven, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = sitofp i32 %.02 to double
  %59 = call double @sqrt(double noundef %58) #3
  %60 = fptosi double %59 to i32
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @blockt, align 4
  store i32 %61, i32* @blockr, align 4
  %62 = load i32, i32* @perim, align 4
  %63 = sdiv i32 %62, 2
  %.neg6 = mul i32 %61, -2
  %64 = add i32 %.neg6, %63
  br label %72

65:                                               ; preds = %54
  %66 = sitofp i32 %.02 to double
  %67 = call double @sqrt(double noundef %66) #3
  %68 = fptosi double %67 to i32
  %69 = load i32, i32* @perim, align 4
  %70 = sdiv i32 %69, 2
  %.neg = mul i32 %68, -2
  %.neg3 = add i32 %.neg, -2
  %71 = add i32 %.neg3, %70
  br label %72

72:                                               ; preds = %65, %57
  %storemerge = phi i32 [ %71, %65 ], [ %64, %57 ]
  store i32 %storemerge, i32* @totChanLen, align 4
  store i32 0, i32* @aveChanWid, align 4
  %73 = load i32, i32* @maxWeight, align 4
  %74 = load i32, i32* @baseWeight, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sitofp i32 %75 to double
  %77 = load i32, i32* @blockr, align 4
  %78 = sitofp i32 %77 to double
  %79 = fmul double %78, 5.000000e-01
  %80 = fdiv double %76, %79
  store double %80, double* @slopeX, align 8
  %81 = load i32, i32* @maxWeight, align 4
  %82 = load i32, i32* @baseWeight, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sitofp i32 %83 to double
  %85 = load i32, i32* @blockt, align 4
  %86 = sitofp i32 %85 to double
  %87 = fmul double %86, 5.000000e-01
  %88 = fdiv double %84, %87
  store double %88, double* @slopeY, align 8
  %89 = load i32, i32* @baseWeight, align 4
  %90 = sitofp i32 %89 to double
  store double %90, double* @basefactor, align 8
  call void @placepads() #3
  %91 = load i32, i32* @blockr, align 4
  %92 = load i32, i32* @blockl, align 4
  %93 = add nsw i32 %91, %92
  %94 = sdiv i32 %93, 2
  store i32 %94, i32* @blockmx, align 4
  %95 = load i32, i32* @blockt, align 4
  %96 = load i32, i32* @blockb, align 4
  %97 = add nsw i32 %95, %96
  %98 = sdiv i32 %97, 2
  store i32 %98, i32* @blockmy, align 4
  %99 = load i32, i32* @blockr, align 4
  %100 = load i32, i32* @blockl, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32, i32* @numBinsX, align 4
  %103 = sdiv i32 %101, %102
  store i32 %103, i32* @binWidthX, align 4
  %104 = mul nsw i32 %103, %102
  %105 = add i32 %100, %104
  %106 = sub i32 %99, %105
  %107 = sdiv i32 %102, 2
  %.not4 = icmp slt i32 %106, %107
  br i1 %.not4, label %111, label %108

108:                                              ; preds = %72
  %109 = load i32, i32* @binWidthX, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @binWidthX, align 4
  br label %111

111:                                              ; preds = %108, %72
  %112 = load i32, i32* @blockl, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* @binWidthX, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* @binOffsetX, align 4
  %116 = load i32, i32* @blockt, align 4
  %117 = load i32, i32* @blockb, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* @numBinsY, align 4
  %120 = sdiv i32 %118, %119
  store i32 %120, i32* @binWidthY, align 4
  %121 = mul nsw i32 %120, %119
  %122 = add i32 %117, %121
  %123 = sub i32 %116, %122
  %124 = sdiv i32 %119, 2
  %.not5 = icmp slt i32 %123, %124
  br i1 %.not5, label %128, label %125

125:                                              ; preds = %111
  %126 = load i32, i32* @binWidthY, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @binWidthY, align 4
  br label %128

128:                                              ; preds = %125, %111
  %129 = load i32, i32* @blockb, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* @binWidthY, align 4
  %132 = sub nsw i32 %130, %131
  store i32 %132, i32* @binOffsetY, align 4
  call void @loadbins(i32 noundef 1) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

declare dso_local void @placepads() #2

declare dso_local void @loadbins(i32 noundef) #2

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
