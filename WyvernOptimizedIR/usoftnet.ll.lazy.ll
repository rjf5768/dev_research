; ModuleID = './usoftnet.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/usoftnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@termarray = external dso_local global %struct.termnets**, align 8
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @usoftnet(%struct.cellbox* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 20
  %3 = load %struct.uncombox*, %struct.uncombox** %2, align 8
  br label %4

4:                                                ; preds = %165, %1
  %.05 = phi i32 [ 1, %1 ], [ %166, %165 ]
  %.03 = phi i32 [ 0, %1 ], [ %.14, %165 ]
  %5 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 18
  %6 = load i32, i32* %5, align 4
  %.not = icmp sgt i32 %.05, %6
  br i1 %.not, label %167, label %7

7:                                                ; preds = %4
  %8 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %9 = zext i32 %.05 to i64
  %10 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %3, i64 %9, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.termnets*, %struct.termnets** %8, i64 %12
  %14 = load %struct.termnets*, %struct.termnets** %13, align 8
  %15 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %16 = getelementptr inbounds %struct.termnets, %struct.termnets* %14, i64 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %15, i64 %18
  %20 = load %struct.dimbox*, %struct.dimbox** %19, align 8
  %21 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %7
  br label %165

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 7
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 0
  br label %32

32:                                               ; preds = %66, %29
  %.02.in = phi %struct.netbox** [ %31, %29 ], [ %67, %66 ]
  %.02 = load %struct.netbox*, %struct.netbox** %.02.in, align 8
  %33 = icmp eq %struct.netbox* %.02, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  br label %68

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %66

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 5
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 10
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 6
  store i32 0, i32* %53, align 4
  br label %63

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 5
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 10
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 8
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %44
  %64 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 0
  %65 = load %struct.netbox*, %struct.netbox** %64, align 8
  br label %68

66:                                               ; preds = %39
  %67 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 0
  br label %32

68:                                               ; preds = %63, %34
  %.1 = phi %struct.netbox* [ %.02, %34 ], [ %65, %63 ]
  br label %69

69:                                               ; preds = %117, %68
  %.2 = phi %struct.netbox* [ %.1, %68 ], [ %119, %117 ]
  %.not8 = icmp eq %struct.netbox* %.2, null
  br i1 %.not8, label %120, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %117

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 6
  store i32 0, i32* %84, align 4
  br label %90

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 2
  %89 = load i32, i32* %88, align 4
  br label %90

90:                                               ; preds = %85, %79
  %.01 = phi i32 [ %81, %79 ], [ %87, %85 ]
  %.0 = phi i32 [ %83, %79 ], [ %89, %85 ]
  %91 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %.01, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 3
  store i32 %.01, i32* %95, align 8
  br label %103

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %.01, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 5
  store i32 %.01, i32* %101, align 8
  br label %102

102:                                              ; preds = %100, %96
  br label %103

103:                                              ; preds = %102, %94
  %104 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %.0, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 8
  store i32 %.0, i32* %108, align 4
  br label %116

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %.0, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 10
  store i32 %.0, i32* %114, align 4
  br label %115

115:                                              ; preds = %113, %109
  br label %116

116:                                              ; preds = %115, %107
  br label %117

117:                                              ; preds = %116, %74
  %118 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 0
  %119 = load %struct.netbox*, %struct.netbox** %118, align 8
  br label %69, !llvm.loop !4

120:                                              ; preds = %69
  %121 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 11
  %122 = load double, double* %121, align 8
  %123 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %124, %126
  %128 = sitofp i32 %127 to double
  %129 = fmul double %122, %128
  %130 = fptosi double %129 to i32
  %131 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 11
  %132 = load double, double* %131, align 8
  %133 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %134, %136
  %138 = sitofp i32 %137 to double
  %139 = fmul double %132, %138
  %140 = fptosi double %139 to i32
  %141 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 12
  %142 = load double, double* %141, align 8
  %143 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 10
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %144, %146
  %148 = sitofp i32 %147 to double
  %149 = fmul double %142, %148
  %150 = fptosi double %149 to i32
  %151 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 12
  %152 = load double, double* %151, align 8
  %153 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 9
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %20, i64 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %154, %156
  %158 = sitofp i32 %157 to double
  %159 = fmul double %152, %158
  %160 = fptosi double %159 to i32
  %161 = add i32 %130, %150
  %162 = add i32 %140, %160
  %163 = sub i32 %161, %162
  %164 = add nsw i32 %.03, %163
  br label %165

165:                                              ; preds = %120, %28
  %.14 = phi i32 [ %.03, %28 ], [ %164, %120 ]
  %166 = add nuw nsw i32 %.05, 1
  br label %4, !llvm.loop !6

167:                                              ; preds = %4
  ret i32 %.03
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
