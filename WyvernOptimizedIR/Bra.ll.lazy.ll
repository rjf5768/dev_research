; ModuleID = './Bra.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Bra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i64 @ARM_Convert(i8* nocapture noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ult i64 %1, 4
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %57

7:                                                ; preds = %4
  %8 = add i64 %1, -4
  %9 = add i32 %2, 8
  br label %10

10:                                               ; preds = %54, %7
  %.02 = phi i64 [ 0, %7 ], [ %55, %54 ]
  %.not = icmp ugt i64 %.02, %8
  br i1 %.not, label %56, label %11

11:                                               ; preds = %10
  %12 = or i64 %.02, 3
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = icmp eq i8 %14, -21
  br i1 %15, label %16, label %53

16:                                               ; preds = %11
  %17 = or i64 %.02, 2
  %18 = getelementptr inbounds i8, i8* %0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 16
  %22 = or i64 %.02, 1
  %23 = getelementptr inbounds i8, i8* %0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = or i32 %21, %26
  %28 = getelementptr inbounds i8, i8* %0, i64 %.02
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %27, %30
  %32 = shl nuw nsw i32 %31, 2
  %.not3 = icmp eq i32 %3, 0
  br i1 %.not3, label %37, label %33

33:                                               ; preds = %16
  %34 = trunc i64 %.02 to i32
  %35 = add i32 %9, %34
  %36 = add i32 %35, %32
  br label %41

37:                                               ; preds = %16
  %38 = trunc i64 %.02 to i32
  %39 = add i32 %9, %38
  %40 = sub i32 %32, %39
  br label %41

41:                                               ; preds = %37, %33
  %.01 = phi i32 [ %36, %33 ], [ %40, %37 ]
  %42 = lshr i32 %.01, 2
  %43 = lshr i32 %.01, 18
  %44 = trunc i32 %43 to i8
  %45 = or i64 %.02, 2
  %46 = getelementptr inbounds i8, i8* %0, i64 %45
  store i8 %44, i8* %46, align 1
  %47 = lshr i32 %.01, 10
  %48 = trunc i32 %47 to i8
  %49 = or i64 %.02, 1
  %50 = getelementptr inbounds i8, i8* %0, i64 %49
  store i8 %48, i8* %50, align 1
  %51 = trunc i32 %42 to i8
  %52 = getelementptr inbounds i8, i8* %0, i64 %.02
  store i8 %51, i8* %52, align 1
  br label %53

53:                                               ; preds = %41, %11
  br label %54

54:                                               ; preds = %53
  %55 = add i64 %.02, 4
  br label %10, !llvm.loop !4

56:                                               ; preds = %10
  br label %57

57:                                               ; preds = %56, %6
  %.0 = phi i64 [ 0, %6 ], [ %.02, %56 ]
  ret i64 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i64 @ARMT_Convert(i8* nocapture noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ult i64 %1, 4
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %79

7:                                                ; preds = %4
  %8 = add i64 %1, -4
  %9 = add i32 %2, 4
  br label %10

10:                                               ; preds = %76, %7
  %.02 = phi i64 [ 0, %7 ], [ %77, %76 ]
  %.not = icmp ugt i64 %.02, %8
  br i1 %.not, label %78, label %11

11:                                               ; preds = %10
  %12 = add i64 %.02, 1
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = and i8 %14, -8
  %16 = icmp eq i8 %15, -16
  br i1 %16, label %17, label %75

17:                                               ; preds = %11
  %18 = add i64 %.02, 3
  %19 = getelementptr inbounds i8, i8* %0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = icmp ugt i8 %20, -9
  br i1 %21, label %22, label %75

22:                                               ; preds = %17
  %23 = add i64 %.02, 1
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = and i8 %25, 7
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 19
  %29 = getelementptr inbounds i8, i8* %0, i64 %.02
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 11
  %33 = or i32 %28, %32
  %34 = add i64 %.02, 3
  %35 = getelementptr inbounds i8, i8* %0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = and i8 %36, 7
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = or i32 %33, %39
  %41 = add i64 %.02, 2
  %42 = getelementptr inbounds i8, i8* %0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %40, %44
  %46 = shl nuw nsw i32 %45, 1
  %.not3 = icmp eq i32 %3, 0
  br i1 %.not3, label %51, label %47

47:                                               ; preds = %22
  %48 = trunc i64 %.02 to i32
  %49 = add i32 %9, %48
  %50 = add i32 %49, %46
  br label %55

51:                                               ; preds = %22
  %52 = trunc i64 %.02 to i32
  %53 = add i32 %9, %52
  %54 = sub i32 %46, %53
  br label %55

55:                                               ; preds = %51, %47
  %.01 = phi i32 [ %50, %47 ], [ %54, %51 ]
  %56 = lshr i32 %.01, 1
  %57 = lshr i32 %.01, 20
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 7
  %60 = or i8 %59, -16
  %61 = add i64 %.02, 1
  %62 = getelementptr inbounds i8, i8* %0, i64 %61
  store i8 %60, i8* %62, align 1
  %63 = lshr i32 %.01, 12
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds i8, i8* %0, i64 %.02
  store i8 %64, i8* %65, align 1
  %66 = lshr i32 %.01, 9
  %67 = trunc i32 %66 to i8
  %68 = or i8 %67, -8
  %69 = add i64 %.02, 3
  %70 = getelementptr inbounds i8, i8* %0, i64 %69
  store i8 %68, i8* %70, align 1
  %71 = trunc i32 %56 to i8
  %72 = add i64 %.02, 2
  %73 = getelementptr inbounds i8, i8* %0, i64 %72
  store i8 %71, i8* %73, align 1
  %74 = add i64 %.02, 2
  br label %75

75:                                               ; preds = %55, %17, %11
  %.1 = phi i64 [ %74, %55 ], [ %.02, %17 ], [ %.02, %11 ]
  br label %76

76:                                               ; preds = %75
  %77 = add i64 %.1, 2
  br label %10, !llvm.loop !6

78:                                               ; preds = %10
  br label %79

79:                                               ; preds = %78, %6
  %.0 = phi i64 [ 0, %6 ], [ %.02, %78 ]
  ret i64 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i64 @PPC_Convert(i8* nocapture noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ult i64 %1, 4
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %79

7:                                                ; preds = %4
  %8 = add i64 %1, -4
  br label %9

9:                                                ; preds = %76, %7
  %.02 = phi i64 [ 0, %7 ], [ %77, %76 ]
  %.not = icmp ugt i64 %.02, %8
  br i1 %.not, label %78, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds i8, i8* %0, i64 %.02
  %12 = load i8, i8* %11, align 1
  %.mask = and i8 %12, -4
  %13 = icmp eq i8 %.mask, 72
  br i1 %13, label %14, label %75

14:                                               ; preds = %10
  %15 = or i64 %.02, 3
  %16 = getelementptr inbounds i8, i8* %0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = and i8 %17, 3
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %75

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, i8* %0, i64 %.02
  %22 = load i8, i8* %21, align 1
  %23 = and i8 %22, 3
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 24
  %26 = or i64 %.02, 1
  %27 = getelementptr inbounds i8, i8* %0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %25, %30
  %32 = or i64 %.02, 2
  %33 = getelementptr inbounds i8, i8* %0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or i32 %31, %36
  %38 = or i64 %.02, 3
  %39 = getelementptr inbounds i8, i8* %0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = and i8 %40, -4
  %42 = zext i8 %41 to i32
  %43 = or i32 %37, %42
  %.not3 = icmp eq i32 %3, 0
  br i1 %.not3, label %48, label %44

44:                                               ; preds = %20
  %45 = trunc i64 %.02 to i32
  %46 = add i32 %45, %2
  %47 = add i32 %46, %43
  br label %52

48:                                               ; preds = %20
  %49 = trunc i64 %.02 to i32
  %50 = add i32 %49, %2
  %51 = sub i32 %43, %50
  br label %52

52:                                               ; preds = %48, %44
  %.01 = phi i32 [ %47, %44 ], [ %51, %48 ]
  %53 = lshr i32 %.01, 24
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 3
  %56 = or i8 %55, 72
  %57 = getelementptr inbounds i8, i8* %0, i64 %.02
  store i8 %56, i8* %57, align 1
  %58 = lshr i32 %.01, 16
  %59 = trunc i32 %58 to i8
  %60 = or i64 %.02, 1
  %61 = getelementptr inbounds i8, i8* %0, i64 %60
  store i8 %59, i8* %61, align 1
  %62 = lshr i32 %.01, 8
  %63 = trunc i32 %62 to i8
  %64 = or i64 %.02, 2
  %65 = getelementptr inbounds i8, i8* %0, i64 %64
  store i8 %63, i8* %65, align 1
  %66 = or i64 %.02, 3
  %67 = getelementptr inbounds i8, i8* %0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = and i8 %68, 3
  store i8 %69, i8* %67, align 1
  %70 = or i64 %.02, 3
  %71 = getelementptr inbounds i8, i8* %0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = trunc i32 %.01 to i8
  %74 = or i8 %72, %73
  store i8 %74, i8* %71, align 1
  br label %75

75:                                               ; preds = %52, %14, %10
  br label %76

76:                                               ; preds = %75
  %77 = add i64 %.02, 4
  br label %9, !llvm.loop !7

78:                                               ; preds = %9
  br label %79

79:                                               ; preds = %78, %6
  %.0 = phi i64 [ 0, %6 ], [ %.02, %78 ]
  ret i64 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i64 @SPARC_Convert(i8* nocapture noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ult i64 %1, 4
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %98

7:                                                ; preds = %4
  %8 = add i64 %1, -4
  br label %9

9:                                                ; preds = %94, %7
  %.02 = phi i32 [ 0, %7 ], [ %95, %94 ]
  %10 = zext i32 %.02 to i64
  %.not = icmp ult i64 %8, %10
  br i1 %.not, label %96, label %11

11:                                               ; preds = %9
  %12 = zext i32 %.02 to i64
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = icmp eq i8 %14, 64
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = or i32 %.02, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = icmp ult i8 %20, 64
  br i1 %21, label %33, label %22

22:                                               ; preds = %16, %11
  %23 = zext i32 %.02 to i64
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = icmp eq i8 %25, 127
  br i1 %26, label %27, label %93

27:                                               ; preds = %22
  %28 = or i32 %.02, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = icmp ugt i8 %31, -65
  br i1 %32, label %33, label %93

33:                                               ; preds = %27, %16
  %34 = zext i32 %.02 to i64
  %35 = getelementptr inbounds i8, i8* %0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 %37, 24
  %39 = or i32 %.02, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 16
  %45 = or i32 %38, %44
  %46 = or i32 %.02, 2
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 8
  %52 = or i32 %45, %51
  %53 = or i32 %.02, 3
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %52, %57
  %59 = shl i32 %58, 2
  %.not3 = icmp eq i32 %3, 0
  br i1 %.not3, label %63, label %60

60:                                               ; preds = %33
  %61 = add i32 %.02, %2
  %62 = add i32 %61, %59
  br label %66

63:                                               ; preds = %33
  %64 = add i32 %.02, %2
  %65 = sub i32 %59, %64
  br label %66

66:                                               ; preds = %63, %60
  %.01 = phi i32 [ %62, %60 ], [ %65, %63 ]
  %67 = lshr i32 %.01, 2
  %68 = lshr i32 %.01, 2
  %69 = and i32 %68, 4194304
  %70 = sub nsw i32 0, %69
  %71 = and i32 %67, 4128768
  %72 = or i32 %71, %70
  %73 = lshr i32 %70, 24
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 63
  %76 = or i8 %75, 64
  %77 = zext i32 %.02 to i64
  %78 = getelementptr inbounds i8, i8* %0, i64 %77
  store i8 %76, i8* %78, align 1
  %79 = lshr exact i32 %72, 16
  %80 = trunc i32 %79 to i8
  %81 = or i32 %.02, 1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %0, i64 %82
  store i8 %80, i8* %83, align 1
  %84 = lshr i32 %.01, 10
  %85 = trunc i32 %84 to i8
  %86 = or i32 %.02, 2
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %0, i64 %87
  store i8 %85, i8* %88, align 1
  %89 = trunc i32 %67 to i8
  %90 = or i32 %.02, 3
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %0, i64 %91
  store i8 %89, i8* %92, align 1
  br label %93

93:                                               ; preds = %66, %27, %22
  br label %94

94:                                               ; preds = %93
  %95 = add i32 %.02, 4
  br label %9, !llvm.loop !8

96:                                               ; preds = %9
  %97 = zext i32 %.02 to i64
  br label %98

98:                                               ; preds = %96, %6
  %.0 = phi i64 [ 0, %6 ], [ %97, %96 ]
  ret i64 %.0
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
