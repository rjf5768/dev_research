; ModuleID = './watesides.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/watesides.c"
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

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @watesides(%struct.cellbox* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 21, i64 0
  br label %3

3:                                                ; preds = %153, %1
  %.01.in = phi %struct.tilebox** [ %2, %1 ], [ %154, %153 ]
  %.01 = load %struct.tilebox*, %struct.tilebox** %.01.in, align 8
  %.not = icmp eq %struct.tilebox* %.01, null
  br i1 %.not, label %155, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 9
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %6, %8
  %10 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 1
  store double -1.000000e+00, double* %10, align 8
  br label %11

11:                                               ; preds = %39, %4
  %.0 = phi i32 [ 1, %4 ], [ %40, %39 ]
  %12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 7
  %13 = load i32, i32* %12, align 8
  %.not2 = icmp sgt i32 %.0, %13
  br i1 %.not2, label %41, label %14

14:                                               ; preds = %11
  %15 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %15, i64 %16, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %21, i64 %22, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %28 = zext i32 %.0 to i64
  %29 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %27, i64 %28, i32 1
  %30 = load double, double* %29, align 8
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %27, i64 %31, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %30, %34
  %36 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 1
  store double %35, double* %36, align 8
  br label %37

37:                                               ; preds = %26, %20
  br label %38

38:                                               ; preds = %37, %14
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !4

41:                                               ; preds = %11
  %42 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 10
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %43, %45
  %47 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 2
  store double -1.000000e+00, double* %47, align 8
  br label %48

48:                                               ; preds = %76, %41
  %.1 = phi i32 [ 1, %41 ], [ %77, %76 ]
  %49 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 7
  %50 = load i32, i32* %49, align 8
  %.not3 = icmp sgt i32 %.1, %50
  br i1 %.not3, label %78, label %51

51:                                               ; preds = %48
  %52 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %53 = zext i32 %.1 to i64
  %54 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %52, i64 %53, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %59 = zext i32 %.1 to i64
  %60 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %58, i64 %59, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, %46
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %65 = zext i32 %.1 to i64
  %66 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %64, i64 %65, i32 1
  %67 = load double, double* %66, align 8
  %68 = zext i32 %.1 to i64
  %69 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %64, i64 %68, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %67, %71
  %73 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 2
  store double %72, double* %73, align 8
  br label %74

74:                                               ; preds = %63, %57
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75
  %77 = add nuw nsw i32 %.1, 1
  br label %48, !llvm.loop !6

78:                                               ; preds = %48
  %79 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 11
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %80, %82
  %84 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 3
  store double -1.000000e+00, double* %84, align 8
  br label %85

85:                                               ; preds = %113, %78
  %.2 = phi i32 [ 1, %78 ], [ %114, %113 ]
  %86 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 7
  %87 = load i32, i32* %86, align 8
  %.not4 = icmp sgt i32 %.2, %87
  br i1 %.not4, label %115, label %88

88:                                               ; preds = %85
  %89 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %90 = zext i32 %.2 to i64
  %91 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %89, i64 %90, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %96 = zext i32 %.2 to i64
  %97 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %95, i64 %96, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, %83
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %102 = zext i32 %.2 to i64
  %103 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %101, i64 %102, i32 1
  %104 = load double, double* %103, align 8
  %105 = zext i32 %.2 to i64
  %106 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %101, i64 %105, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sitofp i32 %107 to double
  %109 = fdiv double %104, %108
  %110 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 3
  store double %109, double* %110, align 8
  br label %111

111:                                              ; preds = %100, %94
  br label %112

112:                                              ; preds = %111, %88
  br label %113

113:                                              ; preds = %112
  %114 = add nuw nsw i32 %.2, 1
  br label %85, !llvm.loop !7

115:                                              ; preds = %85
  %116 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 12
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %117, %119
  %121 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 4
  store double -1.000000e+00, double* %121, align 8
  br label %122

122:                                              ; preds = %150, %115
  %.3 = phi i32 [ 1, %115 ], [ %151, %150 ]
  %123 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 7
  %124 = load i32, i32* %123, align 8
  %.not5 = icmp sgt i32 %.3, %124
  br i1 %.not5, label %152, label %125

125:                                              ; preds = %122
  %126 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %127 = zext i32 %.3 to i64
  %128 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %126, i64 %127, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %125
  %132 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %133 = zext i32 %.3 to i64
  %134 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %132, i64 %133, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, %120
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  %138 = load %struct.psidebox*, %struct.psidebox** @pSideArray, align 8
  %139 = zext i32 %.3 to i64
  %140 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %138, i64 %139, i32 1
  %141 = load double, double* %140, align 8
  %142 = zext i32 %.3 to i64
  %143 = getelementptr inbounds %struct.psidebox, %struct.psidebox* %138, i64 %142, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sitofp i32 %144 to double
  %146 = fdiv double %141, %145
  %147 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 4
  store double %146, double* %147, align 8
  br label %148

148:                                              ; preds = %137, %131
  br label %149

149:                                              ; preds = %148, %125
  br label %150

150:                                              ; preds = %149
  %151 = add nuw nsw i32 %.3, 1
  br label %122, !llvm.loop !8

152:                                              ; preds = %122
  br label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.01, i64 0, i32 0
  br label %3, !llvm.loop !9

155:                                              ; preds = %3
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
