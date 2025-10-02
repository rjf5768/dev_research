; ModuleID = './pathfinderKernel.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Rodinia/pathfinder/pathfinderKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @pathFinderKernel(i32 noundef %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32* nocapture noundef %3, i32* nocapture noundef %4) #0 {
  %6 = zext i32 %1 to i64
  br label %7

7:                                                ; preds = %130, %5
  %.02 = phi i32 [ 0, %5 ], [ %131, %130 ]
  %8 = add nsw i32 %0, -1
  %9 = icmp slt i32 %.02, %8
  br i1 %9, label %10, label %132

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %19, %10
  %.01 = phi i32 [ 0, %10 ], [ %20, %19 ]
  %12 = icmp slt i32 %.01, %1
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = zext i32 %.01 to i64
  %15 = getelementptr inbounds i32, i32* %3, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds i32, i32* %4, i64 %17
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %13
  %20 = add nuw nsw i32 %.01, 1
  br label %11, !llvm.loop !4

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %127, %21
  %.0 = phi i32 [ 0, %21 ], [ %128, %127 ]
  %23 = icmp slt i32 %.0, %1
  br i1 %23, label %24, label %129

24:                                               ; preds = %22
  %25 = icmp eq i32 %.0, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %24
  %27 = add nuw nsw i32 %.02, 1
  %28 = zext i32 %27 to i64
  %29 = mul nuw nsw i64 %28, %6
  %30 = getelementptr inbounds i32, i32* %2, i64 %29
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %.0 to i64
  %35 = getelementptr inbounds i32, i32* %4, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nuw nsw i32 %.0, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %4, i64 %38
  %40 = load i32, i32* %39, align 4
  %.not12 = icmp sgt i32 %36, %40
  br i1 %.not12, label %42, label %41

41:                                               ; preds = %26
  br label %44

42:                                               ; preds = %26
  %43 = add nuw nsw i32 %.0, 1
  br label %44

44:                                               ; preds = %42, %41
  %.pn14.in = phi i32 [ %.0, %41 ], [ %43, %42 ]
  %.pn14 = zext i32 %.pn14.in to i64
  %.in13 = getelementptr inbounds i32, i32* %4, i64 %.pn14
  %45 = load i32, i32* %.in13, align 4
  %46 = add nsw i32 %33, %45
  %47 = zext i32 %.0 to i64
  %48 = getelementptr inbounds i32, i32* %3, i64 %47
  store i32 %46, i32* %48, align 4
  br label %126

49:                                               ; preds = %24
  %50 = add nsw i32 %1, -1
  %51 = icmp eq i32 %.0, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = add nuw nsw i32 %.02, 1
  %54 = zext i32 %53 to i64
  %55 = mul nuw nsw i64 %54, %6
  %56 = getelementptr inbounds i32, i32* %2, i64 %55
  %57 = zext i32 %.0 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %.0 to i64
  %61 = getelementptr inbounds i32, i32* %4, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %1, -2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %4, i64 %64
  %66 = load i32, i32* %65, align 4
  %.not9 = icmp sgt i32 %62, %66
  br i1 %.not9, label %68, label %67

67:                                               ; preds = %52
  br label %70

68:                                               ; preds = %52
  %69 = add nsw i32 %1, -2
  br label %70

70:                                               ; preds = %68, %67
  %.pn11.in = phi i32 [ %.0, %67 ], [ %69, %68 ]
  %.pn11 = sext i32 %.pn11.in to i64
  %.in10 = getelementptr inbounds i32, i32* %4, i64 %.pn11
  %71 = load i32, i32* %.in10, align 4
  %72 = add nsw i32 %59, %71
  %73 = zext i32 %.0 to i64
  %74 = getelementptr inbounds i32, i32* %3, i64 %73
  store i32 %72, i32* %74, align 4
  br label %125

75:                                               ; preds = %49
  %76 = add nuw nsw i32 %.02, 1
  %77 = zext i32 %76 to i64
  %78 = mul nuw nsw i64 %77, %6
  %79 = getelementptr inbounds i32, i32* %2, i64 %78
  %80 = zext i32 %.0 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %.0 to i64
  %84 = getelementptr inbounds i32, i32* %4, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %.0, -1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %4, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nuw nsw i32 %.0, 1
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %4, i64 %91
  %93 = load i32, i32* %92, align 4
  %.not = icmp sgt i32 %89, %93
  br i1 %.not, label %97, label %94

94:                                               ; preds = %75
  %95 = add nsw i32 %.0, -1
  %96 = sext i32 %95 to i64
  br label %100

97:                                               ; preds = %75
  %98 = add nuw nsw i32 %.0, 1
  %99 = zext i32 %98 to i64
  br label %100

100:                                              ; preds = %97, %94
  %.pn = phi i64 [ %96, %94 ], [ %99, %97 ]
  %.in = getelementptr inbounds i32, i32* %4, i64 %.pn
  %101 = load i32, i32* %.in, align 4
  %.not3 = icmp sgt i32 %85, %101
  br i1 %.not3, label %104, label %102

102:                                              ; preds = %100
  %103 = zext i32 %.0 to i64
  br label %120

104:                                              ; preds = %100
  %105 = add nsw i32 %.0, -1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %4, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nuw nsw i32 %.0, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %4, i64 %110
  %112 = load i32, i32* %111, align 4
  %.not4 = icmp sgt i32 %108, %112
  br i1 %.not4, label %116, label %113

113:                                              ; preds = %104
  %114 = add nsw i32 %.0, -1
  %115 = sext i32 %114 to i64
  br label %119

116:                                              ; preds = %104
  %117 = add nuw nsw i32 %.0, 1
  %118 = zext i32 %117 to i64
  br label %119

119:                                              ; preds = %116, %113
  %.pn6 = phi i64 [ %115, %113 ], [ %118, %116 ]
  br label %120

120:                                              ; preds = %119, %102
  %.pn8 = phi i64 [ %103, %102 ], [ %.pn6, %119 ]
  %.in7 = getelementptr inbounds i32, i32* %4, i64 %.pn8
  %121 = load i32, i32* %.in7, align 4
  %122 = add nsw i32 %82, %121
  %123 = zext i32 %.0 to i64
  %124 = getelementptr inbounds i32, i32* %3, i64 %123
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %70
  br label %126

126:                                              ; preds = %125, %44
  br label %127

127:                                              ; preds = %126
  %128 = add nuw nsw i32 %.0, 1
  br label %22, !llvm.loop !6

129:                                              ; preds = %22
  br label %130

130:                                              ; preds = %129
  %131 = add nuw nsw i32 %.02, 1
  br label %7, !llvm.loop !7

132:                                              ; preds = %7
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
!7 = distinct !{!7, !5}
