; ModuleID = './Sort.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @HeapSort(i32* noundef %0, i32 noundef %1) #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %113

5:                                                ; preds = %2
  %6 = getelementptr inbounds i32, i32* %0, i64 -1
  %7 = lshr i32 %1, 1
  br label %8

8:                                                ; preds = %43, %5
  %.01 = phi i32 [ %7, %5 ], [ %44, %43 ]
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load i32, i32* %10, align 4
  br label %12

12:                                               ; preds = %34, %8
  %.03 = phi i32 [ %.01, %8 ], [ %.04, %34 ]
  %13 = shl i32 %.03, 1
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %40

16:                                               ; preds = %12
  %17 = icmp ult i32 %13, %1
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = or i32 %13, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %6, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %13 to i64
  %24 = getelementptr inbounds i32, i32* %6, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = or i32 %13, 1
  br label %29

29:                                               ; preds = %27, %18, %16
  %.04 = phi i32 [ %28, %27 ], [ %13, %18 ], [ %13, %16 ]
  %30 = zext i32 %.04 to i64
  %31 = getelementptr inbounds i32, i32* %6, i64 %30
  %32 = load i32, i32* %31, align 4
  %.not = icmp ult i32 %11, %32
  br i1 %.not, label %34, label %33

33:                                               ; preds = %29
  br label %40

34:                                               ; preds = %29
  %35 = zext i32 %.04 to i64
  %36 = getelementptr inbounds i32, i32* %6, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %.03 to i64
  %39 = getelementptr inbounds i32, i32* %6, i64 %38
  store i32 %37, i32* %39, align 4
  br label %12

40:                                               ; preds = %33, %15
  %41 = zext i32 %.03 to i64
  %42 = getelementptr inbounds i32, i32* %6, i64 %41
  store i32 %11, i32* %42, align 4
  br label %43

43:                                               ; preds = %40
  %44 = add i32 %.01, -1
  %.not10 = icmp eq i32 %44, 0
  br i1 %.not10, label %45, label %8, !llvm.loop !4

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %93, %45
  %.0 = phi i32 [ %1, %45 ], [ %59, %93 ]
  %47 = icmp ugt i32 %.0, 3
  br i1 %47, label %48, label %96

48:                                               ; preds = %46
  %49 = zext i32 %.0 to i64
  %50 = getelementptr inbounds i32, i32* %6, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds i32, i32* %0, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds i32, i32* %0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ugt i32 %53, %55
  %57 = select i1 %56, i32 3, i32 2
  %58 = load i32, i32* %0, align 4
  %59 = add i32 %.0, -1
  %60 = zext i32 %.0 to i64
  %61 = getelementptr inbounds i32, i32* %6, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = zext i32 %57 to i64
  %63 = getelementptr inbounds i32, i32* %6, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %0, align 4
  br label %65

65:                                               ; preds = %87, %48
  %.05 = phi i32 [ %57, %48 ], [ %.02, %87 ]
  %66 = shl i32 %.05, 1
  %67 = icmp ugt i32 %66, %59
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %93

69:                                               ; preds = %65
  %70 = icmp ult i32 %66, %59
  br i1 %70, label %71, label %82

71:                                               ; preds = %69
  %72 = or i32 %66, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %6, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %66 to i64
  %77 = getelementptr inbounds i32, i32* %6, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ugt i32 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = or i32 %66, 1
  br label %82

82:                                               ; preds = %80, %71, %69
  %.02 = phi i32 [ %81, %80 ], [ %66, %71 ], [ %66, %69 ]
  %83 = zext i32 %.02 to i64
  %84 = getelementptr inbounds i32, i32* %6, i64 %83
  %85 = load i32, i32* %84, align 4
  %.not11 = icmp ult i32 %51, %85
  br i1 %.not11, label %87, label %86

86:                                               ; preds = %82
  br label %93

87:                                               ; preds = %82
  %88 = zext i32 %.02 to i64
  %89 = getelementptr inbounds i32, i32* %6, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %.05 to i64
  %92 = getelementptr inbounds i32, i32* %6, i64 %91
  store i32 %90, i32* %92, align 4
  br label %65

93:                                               ; preds = %86, %68
  %94 = zext i32 %.05 to i64
  %95 = getelementptr inbounds i32, i32* %6, i64 %94
  store i32 %51, i32* %95, align 4
  br label %46, !llvm.loop !6

96:                                               ; preds = %46
  %97 = zext i32 %.0 to i64
  %98 = getelementptr inbounds i32, i32* %6, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %0, align 4
  %101 = zext i32 %.0 to i64
  %102 = getelementptr inbounds i32, i32* %6, i64 %101
  store i32 %100, i32* %102, align 4
  %103 = icmp eq i32 %.0, 3
  br i1 %103, label %104, label %112

104:                                              ; preds = %96
  %105 = getelementptr inbounds i32, i32* %0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ult i32 %106, %99
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds i32, i32* %0, i64 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %0, align 4
  %111 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 %99, i32* %111, align 4
  br label %113

112:                                              ; preds = %104, %96
  store i32 %99, i32* %0, align 4
  br label %113

113:                                              ; preds = %112, %108, %4
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
