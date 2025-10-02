; ModuleID = './usoftpin.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usoftpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@termarray = external dso_local global %struct.termnets**, align 8
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @usoftpin(%struct.cellbox* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 20
  %7 = load %struct.uncombox*, %struct.uncombox** %6, align 8
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 21, i64 %8
  %10 = load %struct.tilebox*, %struct.tilebox** %9, align 8
  %11 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %10, i64 0, i32 18
  %12 = load %struct.locbox*, %struct.locbox** %11, align 8
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %56, %14
  %.0 = phi i32 [ 1, %14 ], [ %57, %56 ]
  %16 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 18
  %17 = load i32, i32* %16, align 4
  %.not1 = icmp sgt i32 %.0, %17
  br i1 %.not1, label %58, label %18

18:                                               ; preds = %15
  %19 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %7, i64 %20, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.termnets*, %struct.termnets** %19, i64 %23
  %25 = load %struct.termnets*, %struct.termnets** %24, align 8
  %26 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %27 = getelementptr inbounds %struct.termnets, %struct.termnets* %25, i64 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %26, i64 %29
  %31 = load %struct.dimbox*, %struct.dimbox** %30, align 8
  %32 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %31, i64 0, i32 7
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.termnets, %struct.termnets* %25, i64 0, i32 1
  %34 = load %struct.netbox*, %struct.netbox** %33, align 8
  %35 = getelementptr inbounds %struct.netbox, %struct.netbox* %34, i64 0, i32 6
  store i32 1, i32* %35, align 4
  %36 = zext i32 %.0 to i64
  %37 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %7, i64 %36, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.locbox, %struct.locbox* %12, i64 %39, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %2
  %43 = getelementptr inbounds %struct.termnets, %struct.termnets* %25, i64 0, i32 1
  %44 = load %struct.netbox*, %struct.netbox** %43, align 8
  %45 = getelementptr inbounds %struct.netbox, %struct.netbox* %44, i64 0, i32 3
  store i32 %42, i32* %45, align 8
  %46 = zext i32 %.0 to i64
  %47 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %7, i64 %46, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.locbox, %struct.locbox* %12, i64 %49, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %3
  %53 = getelementptr inbounds %struct.termnets, %struct.termnets* %25, i64 0, i32 1
  %54 = load %struct.netbox*, %struct.netbox** %53, align 8
  %55 = getelementptr inbounds %struct.netbox, %struct.netbox* %54, i64 0, i32 4
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %18
  %57 = add nuw nsw i32 %.0, 1
  br label %15, !llvm.loop !4

58:                                               ; preds = %15
  br label %102

59:                                               ; preds = %5
  br label %60

60:                                               ; preds = %99, %59
  %.1 = phi i32 [ 1, %59 ], [ %100, %99 ]
  %61 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 18
  %62 = load i32, i32* %61, align 4
  %.not = icmp sgt i32 %.1, %62
  br i1 %.not, label %101, label %63

63:                                               ; preds = %60
  %64 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %65 = zext i32 %.1 to i64
  %66 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %7, i64 %65, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.termnets*, %struct.termnets** %64, i64 %68
  %70 = load %struct.termnets*, %struct.termnets** %69, align 8
  %71 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %72 = getelementptr inbounds %struct.termnets, %struct.termnets* %70, i64 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %71, i64 %74
  %76 = load %struct.dimbox*, %struct.dimbox** %75, align 8
  %77 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %76, i64 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %76, i64 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %76, i64 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %76, i64 0, i32 4
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %76, i64 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %76, i64 0, i32 6
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %76, i64 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %76, i64 0, i32 9
  store i32 %87, i32* %88, align 8
  %89 = getelementptr inbounds %struct.termnets, %struct.termnets* %70, i64 0, i32 1
  %90 = load %struct.netbox*, %struct.netbox** %89, align 8
  %91 = getelementptr inbounds %struct.netbox, %struct.netbox* %90, i64 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.netbox, %struct.netbox* %90, i64 0, i32 1
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.termnets, %struct.termnets* %70, i64 0, i32 1
  %95 = load %struct.netbox*, %struct.netbox** %94, align 8
  %96 = getelementptr inbounds %struct.netbox, %struct.netbox* %95, i64 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.netbox, %struct.netbox* %95, i64 0, i32 2
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %63
  %100 = add nuw nsw i32 %.1, 1
  br label %60, !llvm.loop !6

101:                                              ; preds = %60
  br label %102

102:                                              ; preds = %101, %58
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
