; ModuleID = './findside.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/findside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psidebox = type { i32, double, i32, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@pSideArray = external dso_local global %struct.psidebox*, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @findside(%struct.cellbox* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %90, %3
  %.05 = phi i32 [ 1, %3 ], [ %91, %90 ]
  %.01 = phi i32 [ 10000000, %3 ], [ %.34, %90 ]
  %.0 = phi i32 [ undef, %3 ], [ %.3, %90 ]
  %5 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 7
  %6 = load i32, i32* %5, align 8
  %.not = icmp sgt i32 %.05, %6
  br i1 %.not, label %92, label %7

7:                                                ; preds = %4
  %8 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %9 = zext i32 %.05 to i64
  %10 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %8, i64 %9, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %51

13:                                               ; preds = %7
  %14 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %15 = zext i32 %.05 to i64
  %16 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %14, i64 %15, i32 3
  %17 = load i32, i32* %16, align 4
  %.not9 = icmp sgt i32 %17, %1
  br i1 %.not9, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %20 = zext i32 %.05 to i64
  %21 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %19, i64 %20, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %1, %22
  br label %29

24:                                               ; preds = %13
  %25 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %26 = zext i32 %.05 to i64
  %27 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %25, i64 %26, i32 3
  %28 = load i32, i32* %27, align 4
  %.neg10 = sub i32 %28, %1
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi i32 [ %23, %18 ], [ %.neg10, %24 ]
  %31 = icmp slt i32 %30, %.01
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %34 = zext i32 %.05 to i64
  %35 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %33, i64 %34, i32 3
  %36 = load i32, i32* %35, align 4
  %.not11 = icmp sgt i32 %36, %1
  br i1 %.not11, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %39 = zext i32 %.05 to i64
  %40 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %38, i64 %39, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %1, %41
  br label %48

43:                                               ; preds = %32
  %44 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %45 = zext i32 %.05 to i64
  %46 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %44, i64 %45, i32 3
  %47 = load i32, i32* %46, align 4
  %.neg12 = sub i32 %47, %1
  br label %48

48:                                               ; preds = %43, %37
  %49 = phi i32 [ %42, %37 ], [ %.neg12, %43 ]
  br label %50

50:                                               ; preds = %48, %29
  %.12 = phi i32 [ %49, %48 ], [ %.01, %29 ]
  %.1 = phi i32 [ %.05, %48 ], [ %.0, %29 ]
  br label %89

51:                                               ; preds = %7
  %52 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %53 = zext i32 %.05 to i64
  %54 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %52, i64 %53, i32 3
  %55 = load i32, i32* %54, align 4
  %.not6 = icmp sgt i32 %55, %2
  br i1 %.not6, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %58 = zext i32 %.05 to i64
  %59 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %57, i64 %58, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %2, %60
  br label %67

62:                                               ; preds = %51
  %63 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %64 = zext i32 %.05 to i64
  %65 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %63, i64 %64, i32 3
  %66 = load i32, i32* %65, align 4
  %.neg = sub i32 %66, %2
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi i32 [ %61, %56 ], [ %.neg, %62 ]
  %69 = icmp slt i32 %68, %.01
  br i1 %69, label %70, label %88

70:                                               ; preds = %67
  %71 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %72 = zext i32 %.05 to i64
  %73 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %71, i64 %72, i32 3
  %74 = load i32, i32* %73, align 4
  %.not7 = icmp sgt i32 %74, %2
  br i1 %.not7, label %81, label %75

75:                                               ; preds = %70
  %76 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %77 = zext i32 %.05 to i64
  %78 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %76, i64 %77, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %2, %79
  br label %86

81:                                               ; preds = %70
  %82 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %83 = zext i32 %.05 to i64
  %84 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %82, i64 %83, i32 3
  %85 = load i32, i32* %84, align 4
  %.neg8 = sub i32 %85, %2
  br label %86

86:                                               ; preds = %81, %75
  %87 = phi i32 [ %80, %75 ], [ %.neg8, %81 ]
  br label %88

88:                                               ; preds = %86, %67
  %.23 = phi i32 [ %87, %86 ], [ %.01, %67 ]
  %.2 = phi i32 [ %.05, %86 ], [ %.0, %67 ]
  br label %89

89:                                               ; preds = %88, %50
  %.34 = phi i32 [ %.12, %50 ], [ %.23, %88 ]
  %.3 = phi i32 [ %.1, %50 ], [ %.2, %88 ]
  br label %90

90:                                               ; preds = %89
  %91 = add nuw nsw i32 %.05, 1
  br label %4, !llvm.loop !4

92:                                               ; preds = %4
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @loadside(i32 noundef %0, double noundef %1) #1 {
  %3 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %3, i64 %4, i32 1
  %6 = load double, double* %5, align 8
  %7 = fadd double %6, %1
  store double %7, double* %5, align 8
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
