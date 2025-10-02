; ModuleID = './setpwates.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/setpwates.c"
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
@pinsPerLen = external dso_local global double, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @setpwates() #0 {
  br label %1

1:                                                ; preds = %62, %0
  %.01 = phi i32 [ 1, %0 ], [ %63, %62 ]
  %2 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.01, %2
  br i1 %.not, label %64, label %3

3:                                                ; preds = %1
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %5
  %7 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 0
  br label %9

9:                                                ; preds = %59, %3
  %.0.in = phi %struct.tilebox** [ %8, %3 ], [ %60, %59 ]
  %.0 = load %struct.tilebox*, %struct.tilebox** %.0.in, align 8
  %.not2 = icmp eq %struct.tilebox* %.0, null
  br i1 %.not2, label %61, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = load double, double* @pinsPerLen, align 8
  %14 = fcmp ogt double %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load double, double* @pinsPerLen, align 8
  %17 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = fdiv double %18, %16
  store double %19, double* %17, align 8
  br label %22

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 1
  store double 1.000000e+00, double* %21, align 8
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 2
  %24 = load double, double* %23, align 8
  %25 = load double, double* @pinsPerLen, align 8
  %26 = fcmp ogt double %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load double, double* @pinsPerLen, align 8
  %29 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 2
  %30 = load double, double* %29, align 8
  %31 = fdiv double %30, %28
  store double %31, double* %29, align 8
  br label %34

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 2
  store double 1.000000e+00, double* %33, align 8
  br label %34

34:                                               ; preds = %32, %27
  %35 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 3
  %36 = load double, double* %35, align 8
  %37 = load double, double* @pinsPerLen, align 8
  %38 = fcmp ogt double %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load double, double* @pinsPerLen, align 8
  %41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 3
  %42 = load double, double* %41, align 8
  %43 = fdiv double %42, %40
  store double %43, double* %41, align 8
  br label %46

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 3
  store double 1.000000e+00, double* %45, align 8
  br label %46

46:                                               ; preds = %44, %39
  %47 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 4
  %48 = load double, double* %47, align 8
  %49 = load double, double* @pinsPerLen, align 8
  %50 = fcmp ogt double %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load double, double* @pinsPerLen, align 8
  %53 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 4
  %54 = load double, double* %53, align 8
  %55 = fdiv double %54, %52
  store double %55, double* %53, align 8
  br label %58

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 4
  store double 1.000000e+00, double* %57, align 8
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 0
  br label %9, !llvm.loop !4

61:                                               ; preds = %9
  br label %62

62:                                               ; preds = %61
  %63 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

64:                                               ; preds = %1
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
