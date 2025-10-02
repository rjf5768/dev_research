; ModuleID = './wirecosts.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/wirecosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @wirecosts(i32* nocapture noundef %0, i32* nocapture noundef %1) #0 {
  store i32 0, i32* %0, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %106, %2
  %.0 = phi i32 [ 1, %2 ], [ %107, %106 ]
  %4 = load i32, i32* @numnets, align 4
  %.not = icmp sgt i32 %.0, %4
  br i1 %.not, label %108, label %5

5:                                                ; preds = %3
  %6 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %6, i64 %7
  %9 = load %struct.dimbox*, %struct.dimbox** %8, align 8
  %10 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %9, i64 0, i32 0
  br label %11

11:                                               ; preds = %26, %5
  %.02.in = phi %struct.netbox** [ %10, %5 ], [ %27, %26 ]
  %.02 = load %struct.netbox*, %struct.netbox** %.02.in, align 8
  %12 = icmp eq %struct.netbox* %.02, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %28

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %26

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 0
  %25 = load %struct.netbox*, %struct.netbox** %24, align 8
  br label %28

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 0
  br label %11

28:                                               ; preds = %19, %13
  %.07 = phi i32 [ 0, %13 ], [ %21, %19 ]
  %.13 = phi %struct.netbox* [ %.02, %13 ], [ %25, %19 ]
  %.01 = phi i32 [ 0, %13 ], [ %23, %19 ]
  br label %29

29:                                               ; preds = %54, %28
  %.124 = phi i32 [ %.01, %28 ], [ %.326, %54 ]
  %.115 = phi i32 [ %.07, %28 ], [ %.418, %54 ]
  %.18 = phi i32 [ %.07, %28 ], [ %.310, %54 ]
  %.24 = phi %struct.netbox* [ %.13, %28 ], [ %56, %54 ]
  %.1 = phi i32 [ %.01, %28 ], [ %.4, %54 ]
  %.not31 = icmp eq %struct.netbox* %.24, null
  br i1 %.not31, label %57, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.netbox, %struct.netbox* %.24, i64 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %54

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.netbox, %struct.netbox* %.24, i64 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.netbox, %struct.netbox* %.24, i64 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %37, %.18
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %35
  %43 = icmp sgt i32 %37, %.115
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %42
  %.216 = phi i32 [ %37, %44 ], [ %.115, %42 ]
  br label %46

46:                                               ; preds = %45, %41
  %.317 = phi i32 [ %.115, %41 ], [ %.216, %45 ]
  %.29 = phi i32 [ %37, %41 ], [ %.18, %45 ]
  %47 = icmp slt i32 %39, %.124
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  br label %53

49:                                               ; preds = %46
  %50 = icmp sgt i32 %39, %.1
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %49
  %.2 = phi i32 [ %39, %51 ], [ %.1, %49 ]
  br label %53

53:                                               ; preds = %52, %48
  %.225 = phi i32 [ %39, %48 ], [ %.124, %52 ]
  %.3 = phi i32 [ %.1, %48 ], [ %.2, %52 ]
  br label %54

54:                                               ; preds = %53, %34
  %.326 = phi i32 [ %.124, %34 ], [ %.225, %53 ]
  %.418 = phi i32 [ %.115, %34 ], [ %.317, %53 ]
  %.310 = phi i32 [ %.18, %34 ], [ %.29, %53 ]
  %.4 = phi i32 [ %.1, %34 ], [ %.3, %53 ]
  %55 = getelementptr inbounds %struct.netbox, %struct.netbox* %.24, i64 0, i32 0
  %56 = load %struct.netbox*, %struct.netbox** %55, align 8
  br label %29, !llvm.loop !4

57:                                               ; preds = %29
  %58 = sub nsw i32 %.115, %.18
  %59 = sub nsw i32 %.1, %.124
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %1, align 4
  %63 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %64 = zext i32 %.0 to i64
  %65 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %63, i64 %64
  %66 = load %struct.dimbox*, %struct.dimbox** %65, align 8
  %67 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %66, i64 0, i32 0
  %68 = load %struct.netbox*, %struct.netbox** %67, align 8
  %.not32 = icmp eq %struct.netbox* %68, null
  br i1 %.not32, label %76, label %69

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.netbox, %struct.netbox* %68, i64 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.netbox, %struct.netbox* %68, i64 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.netbox, %struct.netbox* %68, i64 0, i32 0
  %75 = load %struct.netbox*, %struct.netbox** %74, align 8
  br label %76

76:                                               ; preds = %69, %57
  %.411 = phi i32 [ %71, %69 ], [ 0, %57 ]
  %.35 = phi %struct.netbox* [ %75, %69 ], [ %68, %57 ]
  %.5 = phi i32 [ %73, %69 ], [ 0, %57 ]
  br label %77

77:                                               ; preds = %97, %76
  %.528 = phi i32 [ %.5, %76 ], [ %.629, %97 ]
  %.620 = phi i32 [ %.411, %76 ], [ %.822, %97 ]
  %.512 = phi i32 [ %.411, %76 ], [ %.613, %97 ]
  %.46 = phi %struct.netbox* [ %.35, %76 ], [ %99, %97 ]
  %.6 = phi i32 [ %.5, %76 ], [ %.8, %97 ]
  %.not33 = icmp eq %struct.netbox* %.46, null
  br i1 %.not33, label %100, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.netbox, %struct.netbox* %.46, i64 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.netbox, %struct.netbox* %.46, i64 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %80, %.512
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %89

85:                                               ; preds = %78
  %86 = icmp sgt i32 %80, %.620
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %87, %85
  %.721 = phi i32 [ %80, %87 ], [ %.620, %85 ]
  br label %89

89:                                               ; preds = %88, %84
  %.822 = phi i32 [ %.620, %84 ], [ %.721, %88 ]
  %.613 = phi i32 [ %80, %84 ], [ %.512, %88 ]
  %90 = icmp slt i32 %82, %.528
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  br label %96

92:                                               ; preds = %89
  %93 = icmp sgt i32 %82, %.6
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %92
  %.7 = phi i32 [ %82, %94 ], [ %.6, %92 ]
  br label %96

96:                                               ; preds = %95, %91
  %.629 = phi i32 [ %82, %91 ], [ %.528, %95 ]
  %.8 = phi i32 [ %.6, %91 ], [ %.7, %95 ]
  br label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.netbox, %struct.netbox* %.46, i64 0, i32 0
  %99 = load %struct.netbox*, %struct.netbox** %98, align 8
  br label %77, !llvm.loop !6

100:                                              ; preds = %77
  %101 = sub nsw i32 %.620, %.512
  %102 = sub nsw i32 %.6, %.528
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %0, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %0, align 4
  br label %106

106:                                              ; preds = %100
  %107 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !7

108:                                              ; preds = %3
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
