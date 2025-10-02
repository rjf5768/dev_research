; ModuleID = './wireest.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/wireest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@blockmx = external dso_local global i32, align 4
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockmy = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@slopeX = external dso_local global double, align 8
@basefactor = external dso_local global double, align 8
@slopeY = external dso_local global double, align 8
@aveChanWid = external dso_local global i32, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local i32 @wireestx(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3) #0 {
  %5 = load i32, i32* @blockmx, align 4
  %.not = icmp slt i32 %5, %0
  br i1 %.not, label %12, label %6

6:                                                ; preds = %4
  %7 = load i32, i32* @blockl, align 4
  %8 = sub nsw i32 %0, %7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10, %6
  %.01 = phi i32 [ 0, %10 ], [ %8, %6 ]
  br label %18

12:                                               ; preds = %4
  %13 = load i32, i32* @blockr, align 4
  %14 = sub nsw i32 %13, %0
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %12
  %.12 = phi i32 [ 0, %16 ], [ %14, %12 ]
  br label %18

18:                                               ; preds = %17, %11
  %.23 = phi i32 [ %.01, %11 ], [ %.12, %17 ]
  %19 = load i32, i32* @blockmy, align 4
  %.not4 = icmp sgt i32 %19, %2
  br i1 %.not4, label %27, label %20

20:                                               ; preds = %18
  %21 = load i32, i32* @blockmy, align 4
  %.not9 = icmp slt i32 %21, %1
  br i1 %.not9, label %27, label %22

22:                                               ; preds = %20
  %23 = load i32, i32* @blockt, align 4
  %24 = load i32, i32* @blockb, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sdiv i32 %25, 2
  br label %57

27:                                               ; preds = %20, %18
  %28 = load i32, i32* @blockmy, align 4
  %.not5 = icmp sgt i32 %28, %1
  br i1 %.not5, label %32, label %29

29:                                               ; preds = %27
  %30 = load i32, i32* @blockmy, align 4
  %31 = sub nsw i32 %1, %30
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @blockmy, align 4
  %.neg = sub i32 %33, %1
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %31, %29 ], [ %.neg, %32 ]
  %36 = load i32, i32* @blockmy, align 4
  %.not6 = icmp sgt i32 %36, %2
  br i1 %.not6, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @blockmy, align 4
  %39 = sub nsw i32 %2, %38
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @blockmy, align 4
  %.neg7 = sub i32 %41, %2
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %.neg7, %40 ]
  %.not8 = icmp sgt i32 %35, %43
  br i1 %.not8, label %50, label %44

44:                                               ; preds = %42
  %45 = load i32, i32* @blockt, align 4
  %46 = sub nsw i32 %45, %1
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %44
  %.0 = phi i32 [ 0, %48 ], [ %46, %44 ]
  br label %56

50:                                               ; preds = %42
  %51 = load i32, i32* @blockb, align 4
  %52 = sub nsw i32 %2, %51
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %50
  %.1 = phi i32 [ 0, %54 ], [ %52, %50 ]
  br label %56

56:                                               ; preds = %55, %49
  %.2 = phi i32 [ %.0, %49 ], [ %.1, %55 ]
  br label %57

57:                                               ; preds = %56, %22
  %.3 = phi i32 [ %26, %22 ], [ %.2, %56 ]
  %58 = load double, double* @slopeX, align 8
  %59 = sitofp i32 %.23 to double
  %60 = load double, double* @basefactor, align 8
  %61 = call double @llvm.fmuladd.f64(double %58, double %59, double %60)
  %62 = load double, double* @slopeY, align 8
  %63 = sitofp i32 %.3 to double
  %64 = call double @llvm.fmuladd.f64(double %62, double %63, double %60)
  %65 = fmul double %61, %64
  %66 = fmul double %65, %3
  %67 = load i32, i32* @aveChanWid, align 4
  %68 = sitofp i32 %67 to double
  %69 = fmul double %66, %68
  %70 = fmul double %69, 5.000000e-01
  %71 = fptosi double %70 to i32
  ret i32 %71
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local i32 @wireesty(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3) #0 {
  %5 = load i32, i32* @blockmy, align 4
  %.not = icmp slt i32 %5, %0
  br i1 %.not, label %12, label %6

6:                                                ; preds = %4
  %7 = load i32, i32* @blockb, align 4
  %8 = sub nsw i32 %0, %7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10, %6
  %.0 = phi i32 [ 0, %10 ], [ %8, %6 ]
  br label %18

12:                                               ; preds = %4
  %13 = load i32, i32* @blockt, align 4
  %14 = sub nsw i32 %13, %0
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %12
  %.1 = phi i32 [ 0, %16 ], [ %14, %12 ]
  br label %18

18:                                               ; preds = %17, %11
  %.2 = phi i32 [ %.0, %11 ], [ %.1, %17 ]
  %19 = load i32, i32* @blockmx, align 4
  %.not4 = icmp sgt i32 %19, %2
  br i1 %.not4, label %27, label %20

20:                                               ; preds = %18
  %21 = load i32, i32* @blockmx, align 4
  %.not9 = icmp slt i32 %21, %1
  br i1 %.not9, label %27, label %22

22:                                               ; preds = %20
  %23 = load i32, i32* @blockr, align 4
  %24 = load i32, i32* @blockl, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sdiv i32 %25, 2
  br label %57

27:                                               ; preds = %20, %18
  %28 = load i32, i32* @blockmx, align 4
  %.not5 = icmp sgt i32 %28, %1
  br i1 %.not5, label %32, label %29

29:                                               ; preds = %27
  %30 = load i32, i32* @blockmx, align 4
  %31 = sub nsw i32 %1, %30
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @blockmx, align 4
  %.neg = sub i32 %33, %1
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %31, %29 ], [ %.neg, %32 ]
  %36 = load i32, i32* @blockmx, align 4
  %.not6 = icmp sgt i32 %36, %2
  br i1 %.not6, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @blockmx, align 4
  %39 = sub nsw i32 %2, %38
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @blockmx, align 4
  %.neg7 = sub i32 %41, %2
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %.neg7, %40 ]
  %.not8 = icmp sgt i32 %35, %43
  br i1 %.not8, label %50, label %44

44:                                               ; preds = %42
  %45 = load i32, i32* @blockr, align 4
  %46 = sub nsw i32 %45, %1
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %44
  %.01 = phi i32 [ 0, %48 ], [ %46, %44 ]
  br label %56

50:                                               ; preds = %42
  %51 = load i32, i32* @blockl, align 4
  %52 = sub nsw i32 %2, %51
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %50
  %.12 = phi i32 [ 0, %54 ], [ %52, %50 ]
  br label %56

56:                                               ; preds = %55, %49
  %.23 = phi i32 [ %.01, %49 ], [ %.12, %55 ]
  br label %57

57:                                               ; preds = %56, %22
  %.3 = phi i32 [ %26, %22 ], [ %.23, %56 ]
  %58 = load double, double* @slopeX, align 8
  %59 = sitofp i32 %.3 to double
  %60 = load double, double* @basefactor, align 8
  %61 = call double @llvm.fmuladd.f64(double %58, double %59, double %60)
  %62 = load double, double* @slopeY, align 8
  %63 = sitofp i32 %.2 to double
  %64 = call double @llvm.fmuladd.f64(double %62, double %63, double %60)
  %65 = fmul double %61, %64
  %66 = fmul double %65, %3
  %67 = load i32, i32* @aveChanWid, align 4
  %68 = sitofp i32 %67 to double
  %69 = fmul double %66, %68
  %70 = fmul double %69, 5.000000e-01
  %71 = fptosi double %70 to i32
  ret i32 %71
}

attributes #0 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
