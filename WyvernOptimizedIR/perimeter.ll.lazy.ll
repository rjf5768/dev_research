; ModuleID = './perimeter.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/perimeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bustbox = type { i32, i32 }

@A = external dso_local global %struct.bustbox*, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @perimeter() #0 {
  br label %1

1:                                                ; preds = %119, %0
  %.01 = phi i32 [ 0, %0 ], [ %.1, %119 ]
  %.0 = phi i32 [ 1, %0 ], [ %120, %119 ]
  %2 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %3 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %2, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %.not = icmp sgt i32 %.0, %4
  br i1 %.not, label %121, label %5

5:                                                ; preds = %1
  %6 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %7 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %6, i64 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %.0, %8
  br i1 %9, label %10, label %58

10:                                               ; preds = %5
  %11 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %12 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 1, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %11, i64 %14, i32 0
  %16 = load i32, i32* %15, align 4
  %.not5 = icmp slt i32 %13, %16
  br i1 %.not5, label %25, label %17

17:                                               ; preds = %10
  %18 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %19 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 1, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %18, i64 %21, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  br label %32

25:                                               ; preds = %10
  %26 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %27 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i64 1, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %26, i64 %29, i32 0
  %31 = load i32, i32* %30, align 4
  %.neg6 = sub i32 %31, %28
  br label %32

32:                                               ; preds = %25, %17
  %33 = phi i32 [ %24, %17 ], [ %.neg6, %25 ]
  %34 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %35 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %34, i64 1, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %.0 to i64
  %38 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %34, i64 %37, i32 1
  %39 = load i32, i32* %38, align 4
  %.not7 = icmp slt i32 %36, %39
  br i1 %.not7, label %48, label %40

40:                                               ; preds = %32
  %41 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %42 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %41, i64 1, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = zext i32 %.0 to i64
  %45 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %41, i64 %44, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  br label %55

48:                                               ; preds = %32
  %49 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %50 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %49, i64 1, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %.0 to i64
  %53 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %49, i64 %52, i32 1
  %54 = load i32, i32* %53, align 4
  %.neg8 = sub i32 %54, %51
  br label %55

55:                                               ; preds = %48, %40
  %56 = phi i32 [ %47, %40 ], [ %.neg8, %48 ]
  %57 = add nsw i32 %33, %56
  br label %118

58:                                               ; preds = %5
  %59 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %60 = add nuw nsw i32 %.0, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %59, i64 %61, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %.0 to i64
  %65 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %59, i64 %64, i32 0
  %66 = load i32, i32* %65, align 4
  %.not2 = icmp slt i32 %63, %66
  br i1 %.not2, label %77, label %67

67:                                               ; preds = %58
  %68 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %69 = add nuw nsw i32 %.0, 1
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %68, i64 %70, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = zext i32 %.0 to i64
  %74 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %68, i64 %73, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %72, %75
  br label %86

77:                                               ; preds = %58
  %78 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %79 = add nuw nsw i32 %.0, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %78, i64 %80, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %.0 to i64
  %84 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %78, i64 %83, i32 0
  %85 = load i32, i32* %84, align 4
  %.neg = sub i32 %85, %82
  br label %86

86:                                               ; preds = %77, %67
  %87 = phi i32 [ %76, %67 ], [ %.neg, %77 ]
  %88 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %89 = add nuw nsw i32 %.0, 1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %88, i64 %90, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = zext i32 %.0 to i64
  %94 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %88, i64 %93, i32 1
  %95 = load i32, i32* %94, align 4
  %.not3 = icmp slt i32 %92, %95
  br i1 %.not3, label %106, label %96

96:                                               ; preds = %86
  %97 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %98 = add nuw nsw i32 %.0, 1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %97, i64 %99, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = zext i32 %.0 to i64
  %103 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %97, i64 %102, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %101, %104
  br label %115

106:                                              ; preds = %86
  %107 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %108 = add nuw nsw i32 %.0, 1
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %107, i64 %109, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %.0 to i64
  %113 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %107, i64 %112, i32 1
  %114 = load i32, i32* %113, align 4
  %.neg4 = sub i32 %114, %111
  br label %115

115:                                              ; preds = %106, %96
  %116 = phi i32 [ %105, %96 ], [ %.neg4, %106 ]
  %117 = add nsw i32 %87, %116
  br label %118

118:                                              ; preds = %115, %55
  %.pn = phi i32 [ %57, %55 ], [ %117, %115 ]
  br label %119

119:                                              ; preds = %118
  %.1 = add nsw i32 %.01, %.pn
  %120 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

121:                                              ; preds = %1
  ret i32 %.01
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
