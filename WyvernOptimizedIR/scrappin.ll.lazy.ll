; ModuleID = './scrappin.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/scrappin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@numcells = external dso_local global i32, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @scrappin() #0 {
  br label %1

1:                                                ; preds = %21, %0
  %.0 = phi i32 [ 1, %0 ], [ %22, %21 ]
  %2 = load i32, i32* @numnets, align 4
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %23, label %3

3:                                                ; preds = %1
  %4 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %4, i64 %5
  %7 = load %struct.dimbox*, %struct.dimbox** %6, align 8
  %8 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 0
  br label %9

9:                                                ; preds = %18, %3
  %.01.in = phi %struct.netbox** [ %8, %3 ], [ %19, %18 ]
  %.01 = load %struct.netbox*, %struct.netbox** %.01.in, align 8
  %.not2 = icmp eq %struct.netbox* %.01, null
  br i1 %.not2, label %20, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @numcells, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 9
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %15, %10
  br label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.netbox, %struct.netbox* %.01, i64 0, i32 0
  br label %9, !llvm.loop !4

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

23:                                               ; preds = %1
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
