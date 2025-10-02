; ModuleID = './blas.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/sgefa/blas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @isamax(i32 noundef %0, float* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %93

6:                                                ; preds = %3
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %56, label %7

7:                                                ; preds = %6
  %8 = icmp slt i32 %2, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = sub i32 1, %0
  %11 = mul nsw i32 %10, %2
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds float, float* %1, i64 %13
  br label %15

15:                                               ; preds = %9, %7
  %.02 = phi float* [ %14, %9 ], [ %1, %7 ]
  %16 = load float, float* %.02, align 4
  %17 = fcmp ogt float %16, 0.000000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load float, float* %.02, align 4
  br label %23

20:                                               ; preds = %15
  %21 = load float, float* %.02, align 4
  %22 = fneg float %21
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi float [ %19, %18 ], [ %22, %20 ]
  %25 = sext i32 %2 to i64
  %26 = getelementptr inbounds float, float* %.02, i64 %25
  br label %27

27:                                               ; preds = %51, %23
  %.07 = phi float [ %24, %23 ], [ %.18, %51 ]
  %.05 = phi i32 [ 1, %23 ], [ %52, %51 ]
  %.13 = phi float* [ %26, %23 ], [ %54, %51 ]
  %.01 = phi i32 [ 0, %23 ], [ %.1, %51 ]
  %28 = icmp slt i32 %.05, %0
  br i1 %28, label %29, label %55

29:                                               ; preds = %27
  %30 = load float, float* %.13, align 4
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load float, float* %.13, align 4
  br label %37

34:                                               ; preds = %29
  %35 = load float, float* %.13, align 4
  %36 = fneg float %35
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi float [ %33, %32 ], [ %36, %34 ]
  %39 = fcmp ogt float %38, %.07
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load float, float* %.13, align 4
  %42 = fcmp ogt float %41, 0.000000e+00
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load float, float* %.13, align 4
  br label %48

45:                                               ; preds = %40
  %46 = load float, float* %.13, align 4
  %47 = fneg float %46
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi float [ %44, %43 ], [ %47, %45 ]
  br label %50

50:                                               ; preds = %48, %37
  %.18 = phi float [ %49, %48 ], [ %.07, %37 ]
  %.1 = phi i32 [ %.05, %48 ], [ %.01, %37 ]
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %.05, 1
  %53 = sext i32 %2 to i64
  %54 = getelementptr inbounds float, float* %.13, i64 %53
  br label %27, !llvm.loop !4

55:                                               ; preds = %27
  br label %93

56:                                               ; preds = %6
  %57 = load float, float* %1, align 4
  %58 = fcmp ogt float %57, 0.000000e+00
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load float, float* %1, align 4
  br label %64

61:                                               ; preds = %56
  %62 = load float, float* %1, align 4
  %63 = fneg float %62
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi float [ %60, %59 ], [ %63, %61 ]
  br label %66

66:                                               ; preds = %90, %64
  %.29 = phi float [ %65, %64 ], [ %.310, %90 ]
  %.16 = phi i32 [ 1, %64 ], [ %91, %90 ]
  %.pn = phi float* [ %1, %64 ], [ %.24, %90 ]
  %.2 = phi i32 [ 0, %64 ], [ %.3, %90 ]
  %.24 = getelementptr inbounds float, float* %.pn, i64 1
  %67 = icmp slt i32 %.16, %0
  br i1 %67, label %68, label %92

68:                                               ; preds = %66
  %69 = load float, float* %.24, align 4
  %70 = fcmp ogt float %69, 0.000000e+00
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load float, float* %.24, align 4
  br label %76

73:                                               ; preds = %68
  %74 = load float, float* %.24, align 4
  %75 = fneg float %74
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi float [ %72, %71 ], [ %75, %73 ]
  %78 = fcmp ogt float %77, %.29
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load float, float* %.24, align 4
  %81 = fcmp ogt float %80, 0.000000e+00
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load float, float* %.24, align 4
  br label %87

84:                                               ; preds = %79
  %85 = load float, float* %.24, align 4
  %86 = fneg float %85
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi float [ %83, %82 ], [ %86, %84 ]
  br label %89

89:                                               ; preds = %87, %76
  %.310 = phi float [ %88, %87 ], [ %.29, %76 ]
  %.3 = phi i32 [ %.16, %87 ], [ %.2, %76 ]
  br label %90

90:                                               ; preds = %89
  %91 = add nuw nsw i32 %.16, 1
  br label %66, !llvm.loop !6

92:                                               ; preds = %66
  br label %93

93:                                               ; preds = %92, %55, %5
  %.0 = phi i32 [ 0, %5 ], [ %.01, %55 ], [ %.2, %92 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @saxpy(i32 noundef %0, double noundef %1, float* nocapture noundef readonly %2, i32 noundef %3, float* nocapture noundef %4, i32 noundef %5) #1 {
  %7 = fptrunc double %1 to float
  %8 = icmp slt i32 %0, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = fcmp oeq float %7, 0.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %9, %6
  br label %74

12:                                               ; preds = %9
  %13 = icmp eq i32 %3, %5
  br i1 %13, label %14, label %45

14:                                               ; preds = %12
  %15 = icmp eq i32 %3, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %23, %16
  %.04 = phi float* [ %2, %16 ], [ %26, %23 ]
  %.01 = phi float* [ %4, %16 ], [ %25, %23 ]
  %.0 = phi i32 [ 0, %16 ], [ %24, %23 ]
  %18 = icmp slt i32 %.0, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = load float, float* %.04, align 4
  %21 = load float, float* %.01, align 4
  %22 = call float @llvm.fmuladd.f32(float %7, float %20, float %21)
  store float %22, float* %.01, align 4
  br label %23

23:                                               ; preds = %19
  %24 = add nuw nsw i32 %.0, 1
  %25 = getelementptr inbounds float, float* %.01, i64 1
  %26 = getelementptr inbounds float, float* %.04, i64 1
  br label %17, !llvm.loop !7

27:                                               ; preds = %17
  br label %74

28:                                               ; preds = %14
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %37, %30
  %.15 = phi float* [ %2, %30 ], [ %40, %37 ]
  %.12 = phi float* [ %4, %30 ], [ %42, %37 ]
  %.1 = phi i32 [ 0, %30 ], [ %38, %37 ]
  %32 = icmp slt i32 %.1, %0
  br i1 %32, label %33, label %43

33:                                               ; preds = %31
  %34 = load float, float* %.15, align 4
  %35 = load float, float* %.12, align 4
  %36 = call float @llvm.fmuladd.f32(float %7, float %34, float %35)
  store float %36, float* %.12, align 4
  br label %37

37:                                               ; preds = %33
  %38 = add nuw nsw i32 %.1, 1
  %39 = sext i32 %3 to i64
  %40 = getelementptr inbounds float, float* %.15, i64 %39
  %41 = sext i32 %3 to i64
  %42 = getelementptr inbounds float, float* %.12, i64 %41
  br label %31, !llvm.loop !8

43:                                               ; preds = %31
  br label %74

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %12
  %46 = icmp slt i32 %3, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = sub i32 1, %0
  %49 = mul nsw i32 %48, %3
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %2, i64 %51
  br label %53

53:                                               ; preds = %47, %45
  %.26 = phi float* [ %52, %47 ], [ %2, %45 ]
  %54 = icmp slt i32 %5, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %53
  %56 = sub i32 1, %0
  %57 = mul nsw i32 %56, %5
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %4, i64 %59
  br label %61

61:                                               ; preds = %55, %53
  %.23 = phi float* [ %60, %55 ], [ %4, %53 ]
  br label %62

62:                                               ; preds = %68, %61
  %.37 = phi float* [ %.26, %61 ], [ %71, %68 ]
  %.3 = phi float* [ %.23, %61 ], [ %73, %68 ]
  %.2 = phi i32 [ 0, %61 ], [ %69, %68 ]
  %63 = icmp slt i32 %.2, %0
  br i1 %63, label %64, label %.loopexit

64:                                               ; preds = %62
  %65 = load float, float* %.37, align 4
  %66 = load float, float* %.3, align 4
  %67 = call float @llvm.fmuladd.f32(float %7, float %65, float %66)
  store float %67, float* %.3, align 4
  br label %68

68:                                               ; preds = %64
  %69 = add nuw nsw i32 %.2, 1
  %70 = sext i32 %3 to i64
  %71 = getelementptr inbounds float, float* %.37, i64 %70
  %72 = sext i32 %5 to i64
  %73 = getelementptr inbounds float, float* %.3, i64 %72
  br label %62, !llvm.loop !9

.loopexit:                                        ; preds = %62
  br label %74

74:                                               ; preds = %.loopexit, %43, %27, %11
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @saxpyx(i32 noundef %0, double noundef %1, float* nocapture noundef %2, i32 noundef %3, float* nocapture noundef readonly %4, i32 noundef %5) #1 {
  %7 = fptrunc double %1 to float
  %8 = icmp slt i32 %0, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = fcmp oeq float %7, 0.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %9, %6
  br label %74

12:                                               ; preds = %9
  %13 = icmp eq i32 %3, %5
  br i1 %13, label %14, label %45

14:                                               ; preds = %12
  %15 = icmp eq i32 %3, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %23, %16
  %.04 = phi float* [ %2, %16 ], [ %25, %23 ]
  %.01 = phi float* [ %4, %16 ], [ %26, %23 ]
  %.0 = phi i32 [ 0, %16 ], [ %24, %23 ]
  %18 = icmp slt i32 %.0, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = load float, float* %.01, align 4
  %21 = load float, float* %.04, align 4
  %22 = call float @llvm.fmuladd.f32(float %7, float %21, float %20)
  store float %22, float* %.04, align 4
  br label %23

23:                                               ; preds = %19
  %24 = add nuw nsw i32 %.0, 1
  %25 = getelementptr inbounds float, float* %.04, i64 1
  %26 = getelementptr inbounds float, float* %.01, i64 1
  br label %17, !llvm.loop !10

27:                                               ; preds = %17
  br label %74

28:                                               ; preds = %14
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %37, %30
  %.15 = phi float* [ %2, %30 ], [ %40, %37 ]
  %.12 = phi float* [ %4, %30 ], [ %42, %37 ]
  %.1 = phi i32 [ 0, %30 ], [ %38, %37 ]
  %32 = icmp slt i32 %.1, %0
  br i1 %32, label %33, label %43

33:                                               ; preds = %31
  %34 = load float, float* %.12, align 4
  %35 = load float, float* %.15, align 4
  %36 = call float @llvm.fmuladd.f32(float %7, float %35, float %34)
  store float %36, float* %.15, align 4
  br label %37

37:                                               ; preds = %33
  %38 = add nuw nsw i32 %.1, 1
  %39 = sext i32 %3 to i64
  %40 = getelementptr inbounds float, float* %.15, i64 %39
  %41 = sext i32 %3 to i64
  %42 = getelementptr inbounds float, float* %.12, i64 %41
  br label %31, !llvm.loop !11

43:                                               ; preds = %31
  br label %74

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %12
  %46 = icmp slt i32 %3, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = sub i32 1, %0
  %49 = mul nsw i32 %48, %3
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %2, i64 %51
  br label %53

53:                                               ; preds = %47, %45
  %.26 = phi float* [ %52, %47 ], [ %2, %45 ]
  %54 = icmp slt i32 %5, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %53
  %56 = sub i32 1, %0
  %57 = mul nsw i32 %56, %5
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %4, i64 %59
  br label %61

61:                                               ; preds = %55, %53
  %.23 = phi float* [ %60, %55 ], [ %4, %53 ]
  br label %62

62:                                               ; preds = %68, %61
  %.37 = phi float* [ %.26, %61 ], [ %71, %68 ]
  %.3 = phi float* [ %.23, %61 ], [ %73, %68 ]
  %.2 = phi i32 [ 0, %61 ], [ %69, %68 ]
  %63 = icmp slt i32 %.2, %0
  br i1 %63, label %64, label %.loopexit

64:                                               ; preds = %62
  %65 = load float, float* %.3, align 4
  %66 = load float, float* %.37, align 4
  %67 = call float @llvm.fmuladd.f32(float %7, float %66, float %65)
  store float %67, float* %.37, align 4
  br label %68

68:                                               ; preds = %64
  %69 = add nuw nsw i32 %.2, 1
  %70 = sext i32 %3 to i64
  %71 = getelementptr inbounds float, float* %.37, i64 %70
  %72 = sext i32 %5 to i64
  %73 = getelementptr inbounds float, float* %.3, i64 %72
  br label %62, !llvm.loop !12

.loopexit:                                        ; preds = %62
  br label %74

74:                                               ; preds = %.loopexit, %43, %27, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @scopy(i32 noundef %0, float* nocapture noundef %1, i32 noundef %2, float* nocapture noundef %3, i32 noundef %4) #3 {
  %6 = icmp slt i32 %0, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %65

8:                                                ; preds = %5
  %9 = icmp eq i32 %2, %4
  br i1 %9, label %10, label %37

10:                                               ; preds = %8
  %11 = icmp eq i32 %2, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %17, %12
  %.04 = phi float* [ %3, %12 ], [ %18, %17 ]
  %.01 = phi float* [ %1, %12 ], [ %19, %17 ]
  %.0 = phi i32 [ 0, %12 ], [ %20, %17 ]
  %14 = icmp slt i32 %.0, %0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load float, float* %.01, align 4
  store float %16, float* %.04, align 4
  br label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds float, float* %.04, i64 1
  %19 = getelementptr inbounds float, float* %.01, i64 1
  %20 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !13

21:                                               ; preds = %13
  br label %65

22:                                               ; preds = %10
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %29, %24
  %.15 = phi float* [ %3, %24 ], [ %34, %29 ]
  %.12 = phi float* [ %1, %24 ], [ %32, %29 ]
  %.1 = phi i32 [ 0, %24 ], [ %30, %29 ]
  %26 = icmp slt i32 %.1, %0
  br i1 %26, label %27, label %35

27:                                               ; preds = %25
  %28 = load float, float* %.12, align 4
  store float %28, float* %.15, align 4
  br label %29

29:                                               ; preds = %27
  %30 = add nuw nsw i32 %.1, 1
  %31 = sext i32 %2 to i64
  %32 = getelementptr inbounds float, float* %.12, i64 %31
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds float, float* %.15, i64 %33
  br label %25, !llvm.loop !14

35:                                               ; preds = %25
  br label %65

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %8
  %38 = icmp slt i32 %2, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  %40 = sub i32 1, %0
  %41 = mul nsw i32 %40, %2
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %1, i64 %43
  br label %45

45:                                               ; preds = %39, %37
  %.23 = phi float* [ %44, %39 ], [ %1, %37 ]
  %46 = icmp slt i32 %4, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = sub i32 1, %0
  %49 = mul nsw i32 %48, %4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %3, i64 %51
  br label %53

53:                                               ; preds = %47, %45
  %.26 = phi float* [ %52, %47 ], [ %3, %45 ]
  br label %54

54:                                               ; preds = %58, %53
  %.37 = phi float* [ %.26, %53 ], [ %63, %58 ]
  %.3 = phi float* [ %.23, %53 ], [ %61, %58 ]
  %.2 = phi i32 [ 0, %53 ], [ %59, %58 ]
  %55 = icmp slt i32 %.2, %0
  br i1 %55, label %56, label %64

56:                                               ; preds = %54
  %57 = load float, float* %.37, align 4
  store float %57, float* %.3, align 4
  br label %58

58:                                               ; preds = %56
  %59 = add nuw nsw i32 %.2, 1
  %60 = sext i32 %2 to i64
  %61 = getelementptr inbounds float, float* %.3, i64 %60
  %62 = sext i32 %4 to i64
  %63 = getelementptr inbounds float, float* %.37, i64 %62
  br label %54, !llvm.loop !15

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %35, %21, %7
  ret void
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local double @sdot(i32 noundef %0, float* nocapture noundef readonly %1, i32 noundef %2, float* nocapture noundef readonly %3, i32 noundef %4) #4 {
  %6 = icmp slt i32 %0, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %74

8:                                                ; preds = %5
  %9 = icmp eq i32 %2, %4
  br i1 %9, label %10, label %43

10:                                               ; preds = %8
  %11 = icmp eq i32 %2, 1
  br i1 %11, label %12, label %25

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %16, %12
  %.08 = phi float* [ %3, %12 ], [ %22, %16 ]
  %.05 = phi i32 [ 0, %12 ], [ %20, %16 ]
  %.02 = phi float* [ %1, %12 ], [ %21, %16 ]
  %.01 = phi float [ 0.000000e+00, %12 ], [ %19, %16 ]
  %14 = icmp slt i32 %.05, %0
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %15
  %17 = load float, float* %.02, align 4
  %18 = load float, float* %.08, align 4
  %19 = call float @llvm.fmuladd.f32(float %17, float %18, float %.01)
  %20 = add nuw nsw i32 %.05, 1
  %21 = getelementptr inbounds float, float* %.02, i64 1
  %22 = getelementptr inbounds float, float* %.08, i64 1
  br label %13, !llvm.loop !16

23:                                               ; preds = %13
  %24 = fpext float %.01 to double
  br label %74

25:                                               ; preds = %10
  %26 = icmp sgt i32 %2, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %31, %27
  %.19 = phi float* [ %3, %27 ], [ %39, %31 ]
  %.16 = phi i32 [ 0, %27 ], [ %35, %31 ]
  %.13 = phi float* [ %1, %27 ], [ %37, %31 ]
  %.1 = phi float [ 0.000000e+00, %27 ], [ %34, %31 ]
  %29 = icmp slt i32 %.16, %0
  br i1 %29, label %30, label %40

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load float, float* %.13, align 4
  %33 = load float, float* %.19, align 4
  %34 = call float @llvm.fmuladd.f32(float %32, float %33, float %.1)
  %35 = add nuw nsw i32 %.16, 1
  %36 = sext i32 %2 to i64
  %37 = getelementptr inbounds float, float* %.13, i64 %36
  %38 = sext i32 %2 to i64
  %39 = getelementptr inbounds float, float* %.19, i64 %38
  br label %28, !llvm.loop !17

40:                                               ; preds = %28
  %41 = fpext float %.1 to double
  br label %74

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %8
  %44 = icmp slt i32 %2, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = sub i32 1, %0
  %47 = mul nsw i32 %46, %2
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %1, i64 %49
  br label %51

51:                                               ; preds = %45, %43
  %.24 = phi float* [ %50, %45 ], [ %1, %43 ]
  %52 = icmp slt i32 %4, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = sub i32 1, %0
  %55 = mul nsw i32 %54, %4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %3, i64 %57
  br label %59

59:                                               ; preds = %53, %51
  %.210 = phi float* [ %58, %53 ], [ %3, %51 ]
  br label %60

60:                                               ; preds = %63, %59
  %.311 = phi float* [ %.210, %59 ], [ %71, %63 ]
  %.27 = phi i32 [ 0, %59 ], [ %67, %63 ]
  %.3 = phi float* [ %.24, %59 ], [ %69, %63 ]
  %.2 = phi float [ 0.000000e+00, %59 ], [ %66, %63 ]
  %61 = icmp slt i32 %.27, %0
  br i1 %61, label %62, label %72

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62
  %64 = load float, float* %.3, align 4
  %65 = load float, float* %.311, align 4
  %66 = call float @llvm.fmuladd.f32(float %64, float %65, float %.2)
  %67 = add nuw nsw i32 %.27, 1
  %68 = sext i32 %2 to i64
  %69 = getelementptr inbounds float, float* %.3, i64 %68
  %70 = sext i32 %4 to i64
  %71 = getelementptr inbounds float, float* %.311, i64 %70
  br label %60, !llvm.loop !18

72:                                               ; preds = %60
  %73 = fpext float %.2 to double
  br label %74

74:                                               ; preds = %72, %40, %23, %7
  %.0 = phi double [ 0.000000e+00, %7 ], [ %24, %23 ], [ %41, %40 ], [ %73, %72 ]
  ret double %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @snrm2(i32 noundef %0, float* nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp slt i32 %0, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = icmp slt i32 %2, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %5, %3
  br label %203

8:                                                ; preds = %5
  %9 = call double @r1mach()
  %10 = fdiv double 0x3696D601AD376AB9, %9
  %11 = call double @sqrt(double noundef %10) #10
  %12 = call double @sqrt(double noundef 0x47D2CED32A16A1B1) #10
  %13 = sitofp i32 %0 to double
  %14 = fdiv double 1.000000e+19, %13
  br label %15

15:                                               ; preds = %22, %8
  %.011 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %.02 = phi float* [ %1, %8 ], [ %25, %22 ]
  %16 = icmp slt i32 %.011, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load float, float* %.02, align 4
  %19 = fcmp oeq float %18, 0.000000e+00
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i1 [ false, %15 ], [ %19, %17 ]
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = add nuw nsw i32 %.011, 1
  %24 = sext i32 %2 to i64
  %25 = getelementptr inbounds float, float* %.02, i64 %24
  br label %15, !llvm.loop !19

26:                                               ; preds = %20
  %.not = icmp slt i32 %.011, %0
  br i1 %.not, label %28, label %27

27:                                               ; preds = %26
  br label %203

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %95, %28
  %.112 = phi i32 [ %.011, %28 ], [ %.314, %95 ]
  %.06 = phi double [ 0.000000e+00, %28 ], [ %99, %95 ]
  %.13 = phi float* [ %.02, %28 ], [ %.35, %95 ]
  %30 = load float, float* %.13, align 4
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load float, float* %.13, align 4
  br label %37

34:                                               ; preds = %29
  %35 = load float, float* %.13, align 4
  %36 = fneg float %35
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi float [ %33, %32 ], [ %36, %34 ]
  %39 = fpext float %38 to double
  %40 = fcmp olt double %11, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %58, %41
  %.213 = phi i32 [ %.112, %41 ], [ %63, %58 ]
  %.17 = phi double [ %.06, %41 ], [ %62, %58 ]
  %.24 = phi float* [ %.13, %41 ], [ %65, %58 ]
  %43 = icmp slt i32 %.213, %0
  br i1 %43, label %44, label %66

44:                                               ; preds = %42
  %45 = load float, float* %.24, align 4
  %46 = fcmp ogt float %45, 0.000000e+00
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load float, float* %.24, align 4
  br label %52

49:                                               ; preds = %44
  %50 = load float, float* %.24, align 4
  %51 = fneg float %50
  br label %52

52:                                               ; preds = %49, %47
  %53 = phi float [ %48, %47 ], [ %51, %49 ]
  %54 = fpext float %53 to double
  %55 = fcmp olt double %14, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %142

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  %59 = load float, float* %.24, align 4
  %60 = fmul float %59, %59
  %61 = fpext float %60 to double
  %62 = fadd double %.17, %61
  %63 = add nsw i32 %.213, 1
  %64 = sext i32 %2 to i64
  %65 = getelementptr inbounds float, float* %.24, i64 %64
  br label %42, !llvm.loop !20

66:                                               ; preds = %42
  %67 = call double @sqrt(double noundef %.17) #10
  br label %203

68:                                               ; preds = %37
  %69 = load float, float* %.13, align 4
  %70 = fcmp ogt float %69, 0.000000e+00
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load float, float* %.13, align 4
  br label %76

73:                                               ; preds = %68
  %74 = load float, float* %.13, align 4
  %75 = fneg float %74
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi float [ %72, %71 ], [ %75, %73 ]
  %78 = sext i32 %2 to i64
  %79 = getelementptr inbounds float, float* %.13, i64 %78
  %80 = fadd double %.06, 1.000000e+00
  br label %81

81:                                               ; preds = %135, %76
  %.314.in = phi i32 [ %.112, %76 ], [ %.314, %135 ]
  %.28 = phi double [ %80, %76 ], [ %.39, %135 ]
  %.35 = phi float* [ %79, %76 ], [ %137, %135 ]
  %.01 = phi float [ %77, %76 ], [ %.1, %135 ]
  %.314 = add nsw i32 %.314.in, 1
  %82 = icmp slt i32 %.314, %0
  br i1 %82, label %83, label %138

83:                                               ; preds = %81
  %84 = load float, float* %.35, align 4
  %85 = fcmp ogt float %84, 0.000000e+00
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load float, float* %.35, align 4
  br label %91

88:                                               ; preds = %83
  %89 = load float, float* %.35, align 4
  %90 = fneg float %89
  br label %91

91:                                               ; preds = %88, %86
  %92 = phi float [ %87, %86 ], [ %90, %88 ]
  %93 = fpext float %92 to double
  %94 = fcmp olt double %11, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = fpext float %.01 to double
  %97 = fmul double %.28, %96
  %98 = fpext float %.01 to double
  %99 = fmul double %97, %98
  br label %29

100:                                              ; preds = %91
  %101 = load float, float* %.35, align 4
  %102 = fcmp ogt float %101, 0.000000e+00
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load float, float* %.35, align 4
  br label %108

105:                                              ; preds = %100
  %106 = load float, float* %.35, align 4
  %107 = fneg float %106
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi float [ %104, %103 ], [ %107, %105 ]
  %110 = fcmp ogt float %109, %.01
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = load float, float* %.35, align 4
  %113 = fdiv float %.01, %112
  %114 = fpext float %113 to double
  %115 = fmul double %.28, %114
  %116 = fdiv float %.01, %112
  %117 = fpext float %116 to double
  %118 = call double @llvm.fmuladd.f64(double %115, double %117, double 1.000000e+00)
  %119 = load float, float* %.35, align 4
  %120 = fcmp ogt float %119, 0.000000e+00
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load float, float* %.35, align 4
  br label %126

123:                                              ; preds = %111
  %124 = load float, float* %.35, align 4
  %125 = fneg float %124
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi float [ %122, %121 ], [ %125, %123 ]
  br label %135

128:                                              ; preds = %108
  %129 = load float, float* %.35, align 4
  %130 = fdiv float %129, %.01
  %131 = fdiv float %129, %.01
  %132 = fmul float %130, %131
  %133 = fpext float %132 to double
  %134 = fadd double %.28, %133
  br label %135

135:                                              ; preds = %128, %126
  %.39 = phi double [ %118, %126 ], [ %134, %128 ]
  %.1 = phi float [ %127, %126 ], [ %.01, %128 ]
  %136 = sext i32 %2 to i64
  %137 = getelementptr inbounds float, float* %.35, i64 %136
  br label %81, !llvm.loop !21

138:                                              ; preds = %81
  %139 = fpext float %.01 to double
  %140 = call double @sqrt(double noundef %.28) #10
  %141 = fmul double %140, %139
  br label %203

142:                                              ; preds = %56
  %143 = load float, float* %.24, align 4
  %144 = fpext float %143 to double
  %145 = fdiv double %.17, %144
  %146 = fpext float %143 to double
  %147 = fdiv double %145, %146
  %148 = fadd double %147, 1.000000e+00
  %149 = fcmp ogt float %143, 0.000000e+00
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load float, float* %.24, align 4
  br label %155

152:                                              ; preds = %142
  %153 = load float, float* %.24, align 4
  %154 = fneg float %153
  br label %155

155:                                              ; preds = %152, %150
  %156 = phi float [ %151, %150 ], [ %154, %152 ]
  %157 = sext i32 %2 to i64
  %158 = getelementptr inbounds float, float* %.24, i64 %157
  br label %159

159:                                              ; preds = %196, %155
  %.415.in = phi i32 [ %.213, %155 ], [ %.415, %196 ]
  %.410 = phi double [ %148, %155 ], [ %.5, %196 ]
  %.4 = phi float* [ %158, %155 ], [ %198, %196 ]
  %.2 = phi float [ %156, %155 ], [ %.3, %196 ]
  %.415 = add nsw i32 %.415.in, 1
  %160 = icmp slt i32 %.415, %0
  br i1 %160, label %161, label %199

161:                                              ; preds = %159
  %162 = load float, float* %.4, align 4
  %163 = fcmp ogt float %162, 0.000000e+00
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load float, float* %.4, align 4
  br label %169

166:                                              ; preds = %161
  %167 = load float, float* %.4, align 4
  %168 = fneg float %167
  br label %169

169:                                              ; preds = %166, %164
  %170 = phi float [ %165, %164 ], [ %168, %166 ]
  %171 = fcmp ogt float %170, %.2
  br i1 %171, label %172, label %189

172:                                              ; preds = %169
  %173 = load float, float* %.4, align 4
  %174 = fdiv float %.2, %173
  %175 = fpext float %174 to double
  %176 = fmul double %.410, %175
  %177 = fdiv float %.2, %173
  %178 = fpext float %177 to double
  %179 = call double @llvm.fmuladd.f64(double %176, double %178, double 1.000000e+00)
  %180 = load float, float* %.4, align 4
  %181 = fcmp ogt float %180, 0.000000e+00
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = load float, float* %.4, align 4
  br label %187

184:                                              ; preds = %172
  %185 = load float, float* %.4, align 4
  %186 = fneg float %185
  br label %187

187:                                              ; preds = %184, %182
  %188 = phi float [ %183, %182 ], [ %186, %184 ]
  br label %196

189:                                              ; preds = %169
  %190 = load float, float* %.4, align 4
  %191 = fdiv float %190, %.2
  %192 = fdiv float %190, %.2
  %193 = fmul float %191, %192
  %194 = fpext float %193 to double
  %195 = fadd double %.410, %194
  br label %196

196:                                              ; preds = %189, %187
  %.5 = phi double [ %179, %187 ], [ %195, %189 ]
  %.3 = phi float [ %188, %187 ], [ %.2, %189 ]
  %197 = sext i32 %2 to i64
  %198 = getelementptr inbounds float, float* %.4, i64 %197
  br label %159, !llvm.loop !22

199:                                              ; preds = %159
  %200 = fpext float %.2 to double
  %201 = call double @sqrt(double noundef %.410) #10
  %202 = fmul double %201, %200
  br label %203

203:                                              ; preds = %199, %138, %66, %27, %7
  %.0 = phi double [ 0.000000e+00, %7 ], [ 0.000000e+00, %27 ], [ %202, %199 ], [ %67, %66 ], [ %141, %138 ]
  ret double %.0
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local double @r1mach() #7 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi float [ 1.000000e+00, %0 ], [ %2, %3 ]
  %2 = fmul float %.0, 5.000000e-01
  br label %3

3:                                                ; preds = %1
  %4 = fadd float %2, 1.000000e+00
  %5 = fcmp une float %4, 1.000000e+00
  br i1 %5, label %1, label %6, !llvm.loop !23

6:                                                ; preds = %3
  %7 = fpext float %2 to double
  %8 = fmul double %7, 2.000000e+00
  ret double %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @min0(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) #8 {
  %17 = icmp slt i32 %0, 1
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = icmp sgt i32 %0, 15
  br i1 %19, label %20, label %21

20:                                               ; preds = %18, %16
  br label %106

21:                                               ; preds = %18
  %22 = icmp eq i32 %0, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %106

24:                                               ; preds = %21
  %25 = icmp sgt i32 %1, %2
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26, %24
  %.01 = phi i32 [ %2, %26 ], [ %1, %24 ]
  %28 = icmp eq i32 %0, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %106

30:                                               ; preds = %27
  %31 = icmp sgt i32 %.01, %3
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32, %30
  %.1 = phi i32 [ %3, %32 ], [ %.01, %30 ]
  %34 = icmp eq i32 %0, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  br label %106

36:                                               ; preds = %33
  %37 = icmp sgt i32 %.1, %4
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38, %36
  %.2 = phi i32 [ %4, %38 ], [ %.1, %36 ]
  %40 = icmp eq i32 %0, 4
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  br label %106

42:                                               ; preds = %39
  %43 = icmp sgt i32 %.2, %5
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %42
  %.3 = phi i32 [ %5, %44 ], [ %.2, %42 ]
  %46 = icmp eq i32 %0, 5
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %106

48:                                               ; preds = %45
  %49 = icmp sgt i32 %.3, %6
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %48
  %.4 = phi i32 [ %6, %50 ], [ %.3, %48 ]
  %52 = icmp eq i32 %0, 6
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  br label %106

54:                                               ; preds = %51
  %55 = icmp sgt i32 %.4, %7
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %54
  %.5 = phi i32 [ %7, %56 ], [ %.4, %54 ]
  %58 = icmp eq i32 %0, 7
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  br label %106

60:                                               ; preds = %57
  %61 = icmp sgt i32 %.5, %8
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62, %60
  %.6 = phi i32 [ %8, %62 ], [ %.5, %60 ]
  %64 = icmp eq i32 %0, 8
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  br label %106

66:                                               ; preds = %63
  %67 = icmp sgt i32 %.6, %9
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %66
  %.7 = phi i32 [ %9, %68 ], [ %.6, %66 ]
  %70 = icmp eq i32 %0, 9
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  br label %106

72:                                               ; preds = %69
  %73 = icmp sgt i32 %.7, %10
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74, %72
  %.8 = phi i32 [ %10, %74 ], [ %.7, %72 ]
  %76 = icmp eq i32 %0, 10
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  br label %106

78:                                               ; preds = %75
  %79 = icmp sgt i32 %.8, %11
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80, %78
  %.9 = phi i32 [ %11, %80 ], [ %.8, %78 ]
  %82 = icmp eq i32 %0, 11
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  br label %106

84:                                               ; preds = %81
  %85 = icmp sgt i32 %.9, %12
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86, %84
  %.10 = phi i32 [ %12, %86 ], [ %.9, %84 ]
  %88 = icmp eq i32 %0, 12
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br label %106

90:                                               ; preds = %87
  %91 = icmp sgt i32 %.10, %13
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %90
  %.11 = phi i32 [ %13, %92 ], [ %.10, %90 ]
  %94 = icmp eq i32 %0, 13
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  br label %106

96:                                               ; preds = %93
  %97 = icmp sgt i32 %.11, %14
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98, %96
  %.12 = phi i32 [ %14, %98 ], [ %.11, %96 ]
  %100 = icmp eq i32 %0, 14
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  br label %106

102:                                              ; preds = %99
  %103 = icmp sgt i32 %.12, %15
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %104, %102
  %.13 = phi i32 [ %15, %104 ], [ %.12, %102 ]
  br label %106

106:                                              ; preds = %105, %101, %95, %89, %83, %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %20
  %.0 = phi i32 [ -1, %20 ], [ %1, %23 ], [ %.01, %29 ], [ %.1, %35 ], [ %.2, %41 ], [ %.3, %47 ], [ %.4, %53 ], [ %.5, %59 ], [ %.6, %65 ], [ %.7, %71 ], [ %.8, %77 ], [ %.9, %83 ], [ %.10, %89 ], [ %.11, %95 ], [ %.12, %101 ], [ %.13, %105 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @sscal(i32 noundef %0, double noundef %1, float* nocapture noundef %2, i32 noundef %3) #3 {
  %5 = fptrunc double %1 to float
  %6 = icmp slt i32 %0, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %37

8:                                                ; preds = %4
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %27, label %9

9:                                                ; preds = %8
  %10 = icmp slt i32 %3, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = sub i32 1, %0
  %13 = mul nsw i32 %12, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, float* %2, i64 %14
  br label %16

16:                                               ; preds = %11, %9
  %.02 = phi float* [ %15, %11 ], [ %2, %9 ]
  br label %17

17:                                               ; preds = %22, %16
  %.13 = phi float* [ %.02, %16 ], [ %25, %22 ]
  %.01 = phi i32 [ 0, %16 ], [ %23, %22 ]
  %18 = icmp slt i32 %.01, %0
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = load float, float* %.13, align 4
  %21 = fmul float %20, %5
  store float %21, float* %.13, align 4
  br label %22

22:                                               ; preds = %19
  %23 = add nuw nsw i32 %.01, 1
  %24 = sext i32 %3 to i64
  %25 = getelementptr inbounds float, float* %.13, i64 %24
  br label %17, !llvm.loop !24

26:                                               ; preds = %17
  br label %37

27:                                               ; preds = %8
  br label %28

28:                                               ; preds = %33, %27
  %.2 = phi float* [ %2, %27 ], [ %35, %33 ]
  %.1 = phi i32 [ 0, %27 ], [ %34, %33 ]
  %29 = icmp slt i32 %.1, %0
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = load float, float* %.2, align 4
  %32 = fmul float %31, %5
  store float %32, float* %.2, align 4
  br label %33

33:                                               ; preds = %30
  %34 = add nuw nsw i32 %.1, 1
  %35 = getelementptr inbounds float, float* %.2, i64 1
  br label %28, !llvm.loop !25

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %26, %7
  %.0 = phi i32 [ 1, %7 ], [ 0, %26 ], [ 0, %36 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @vexopy(i32 noundef %0, float* nocapture noundef writeonly %1, float* nocapture noundef readonly %2, float* nocapture noundef readonly %3, i32 noundef %4) #3 {
  %6 = icmp slt i32 %0, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %36

8:                                                ; preds = %5
  %9 = icmp eq i32 %4, 1
  br i1 %9, label %10, label %23

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %17, %10
  %.05 = phi float* [ %3, %10 ], [ %20, %17 ]
  %.03 = phi float* [ %2, %10 ], [ %19, %17 ]
  %.01 = phi float* [ %1, %10 ], [ %21, %17 ]
  %.0 = phi i32 [ 0, %10 ], [ %18, %17 ]
  %12 = icmp slt i32 %.0, %0
  br i1 %12, label %13, label %22

13:                                               ; preds = %11
  %14 = load float, float* %.03, align 4
  %15 = load float, float* %.05, align 4
  %16 = fadd float %14, %15
  store float %16, float* %.01, align 4
  br label %17

17:                                               ; preds = %13
  %18 = add nuw nsw i32 %.0, 1
  %19 = getelementptr inbounds float, float* %.03, i64 1
  %20 = getelementptr inbounds float, float* %.05, i64 1
  %21 = getelementptr inbounds float, float* %.01, i64 1
  br label %11, !llvm.loop !26

22:                                               ; preds = %11
  br label %36

23:                                               ; preds = %8
  br label %24

24:                                               ; preds = %30, %23
  %.16 = phi float* [ %3, %23 ], [ %33, %30 ]
  %.14 = phi float* [ %2, %23 ], [ %32, %30 ]
  %.12 = phi float* [ %1, %23 ], [ %34, %30 ]
  %.1 = phi i32 [ 0, %23 ], [ %31, %30 ]
  %25 = icmp slt i32 %.1, %0
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = load float, float* %.14, align 4
  %28 = load float, float* %.16, align 4
  %29 = fsub float %27, %28
  store float %29, float* %.12, align 4
  br label %30

30:                                               ; preds = %26
  %31 = add nuw nsw i32 %.1, 1
  %32 = getelementptr inbounds float, float* %.14, i64 1
  %33 = getelementptr inbounds float, float* %.16, i64 1
  %34 = getelementptr inbounds float, float* %.12, i64 1
  br label %24, !llvm.loop !27

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %22, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @vfill(i32 noundef %0, float* nocapture noundef writeonly %1, double noundef %2) #9 {
  %4 = fptrunc double %2 to float
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %14

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %11, %7
  %.01 = phi float* [ %1, %7 ], [ %13, %11 ]
  %.0 = phi i32 [ 0, %7 ], [ %12, %11 ]
  %9 = icmp slt i32 %.0, %0
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %8
  store float %4, float* %.01, align 4
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.0, 1
  %13 = getelementptr inbounds float, float* %.01, i64 1
  br label %8, !llvm.loop !28

.loopexit:                                        ; preds = %8
  br label %14

14:                                               ; preds = %.loopexit, %6
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

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
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
