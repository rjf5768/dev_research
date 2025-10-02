; ModuleID = './ufixpin.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/ufixpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }

@termarray = external dso_local global %struct.termnets**, align 8
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ufixpin(%struct.termbox* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %37, %6
  %.0 = phi %struct.termbox* [ %0, %6 ], [ %39, %37 ]
  %.not1 = icmp eq %struct.termbox* %.0, null
  br i1 %.not1, label %40, label %8

8:                                                ; preds = %7
  %9 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %10 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.termnets*, %struct.termnets** %9, i64 %12
  %14 = load %struct.termnets*, %struct.termnets** %13, align 8
  %15 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %16 = getelementptr inbounds %struct.termnets, %struct.termnets* %14, i64 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %15, i64 %18
  %20 = load %struct.dimbox*, %struct.dimbox** %19, align 8
  %21 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 7
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.termnets, %struct.termnets* %14, i64 0, i32 1
  %23 = load %struct.netbox*, %struct.netbox** %22, align 8
  %24 = getelementptr inbounds %struct.netbox, %struct.netbox* %23, i64 0, i32 6
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, %2
  %28 = getelementptr inbounds %struct.termnets, %struct.termnets* %14, i64 0, i32 1
  %29 = load %struct.netbox*, %struct.netbox** %28, align 8
  %30 = getelementptr inbounds %struct.netbox, %struct.netbox* %29, i64 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %3
  %34 = getelementptr inbounds %struct.termnets, %struct.termnets* %14, i64 0, i32 1
  %35 = load %struct.netbox*, %struct.netbox** %34, align 8
  %36 = getelementptr inbounds %struct.netbox, %struct.netbox* %35, i64 0, i32 4
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %8
  %38 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 0
  %39 = load %struct.termbox*, %struct.termbox** %38, align 8
  br label %7, !llvm.loop !4

40:                                               ; preds = %7
  br label %82

41:                                               ; preds = %4
  br label %42

42:                                               ; preds = %78, %41
  %.1 = phi %struct.termbox* [ %0, %41 ], [ %80, %78 ]
  %.not = icmp eq %struct.termbox* %.1, null
  br i1 %.not, label %81, label %43

43:                                               ; preds = %42
  %44 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %45 = getelementptr inbounds %struct.termbox, %struct.termbox* %.1, i64 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.termnets*, %struct.termnets** %44, i64 %47
  %49 = load %struct.termnets*, %struct.termnets** %48, align 8
  %50 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %51 = getelementptr inbounds %struct.termnets, %struct.termnets* %49, i64 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %50, i64 %53
  %55 = load %struct.dimbox*, %struct.dimbox** %54, align 8
  %56 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %55, i64 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %55, i64 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %55, i64 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %55, i64 0, i32 4
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %55, i64 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %55, i64 0, i32 6
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %55, i64 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %55, i64 0, i32 9
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.termnets, %struct.termnets* %49, i64 0, i32 1
  %69 = load %struct.netbox*, %struct.netbox** %68, align 8
  %70 = getelementptr inbounds %struct.netbox, %struct.netbox* %69, i64 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.netbox, %struct.netbox* %69, i64 0, i32 1
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.termnets, %struct.termnets* %49, i64 0, i32 1
  %74 = load %struct.netbox*, %struct.netbox** %73, align 8
  %75 = getelementptr inbounds %struct.netbox, %struct.netbox* %74, i64 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.netbox, %struct.netbox* %74, i64 0, i32 2
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %43
  %79 = getelementptr inbounds %struct.termbox, %struct.termbox* %.1, i64 0, i32 0
  %80 = load %struct.termbox*, %struct.termbox** %79, align 8
  br label %42, !llvm.loop !6

81:                                               ; preds = %42
  br label %82

82:                                               ; preds = %81, %40
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
