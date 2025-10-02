; ModuleID = './ufixnet.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/ufixnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }

@termarray = external dso_local global %struct.termnets**, align 8
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @ufixnet(%struct.termbox* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %160, %1
  %.05 = phi %struct.termbox* [ %0, %1 ], [ %162, %160 ]
  %.03 = phi i32 [ 0, %1 ], [ %.14, %160 ]
  %.not = icmp eq %struct.termbox* %.05, null
  br i1 %.not, label %163, label %3

3:                                                ; preds = %2
  %4 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %5 = getelementptr inbounds %struct.termbox, %struct.termbox* %.05, i64 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.termnets*, %struct.termnets** %4, i64 %7
  %9 = load %struct.termnets*, %struct.termnets** %8, align 8
  %10 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %11 = getelementptr inbounds %struct.termnets, %struct.termnets* %9, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %10, i64 %13
  %15 = load %struct.dimbox*, %struct.dimbox** %14, align 8
  %16 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %3
  br label %160

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 7
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 0
  br label %27

27:                                               ; preds = %61, %24
  %.02.in = phi %struct.netbox** [ %26, %24 ], [ %62, %61 ]
  %.02 = load %struct.netbox*, %struct.netbox** %.02.in, align 8
  %28 = icmp eq %struct.netbox* %.02, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %63

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %61

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 5
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 10
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 6
  store i32 0, i32* %48, align 4
  br label %58

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 5
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 10
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 8
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %49, %39
  %59 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 0
  %60 = load %struct.netbox*, %struct.netbox** %59, align 8
  br label %63

61:                                               ; preds = %34
  %62 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 0
  br label %27

63:                                               ; preds = %58, %29
  %.1 = phi %struct.netbox* [ %.02, %29 ], [ %60, %58 ]
  br label %64

64:                                               ; preds = %112, %63
  %.2 = phi %struct.netbox* [ %.1, %63 ], [ %114, %112 ]
  %.not8 = icmp eq %struct.netbox* %.2, null
  br i1 %.not8, label %115, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %112

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 6
  store i32 0, i32* %79, align 4
  br label %85

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 2
  %84 = load i32, i32* %83, align 4
  br label %85

85:                                               ; preds = %80, %74
  %.01 = phi i32 [ %76, %74 ], [ %82, %80 ]
  %.0 = phi i32 [ %78, %74 ], [ %84, %80 ]
  %86 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %.01, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 3
  store i32 %.01, i32* %90, align 8
  br label %98

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %.01, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 5
  store i32 %.01, i32* %96, align 8
  br label %97

97:                                               ; preds = %95, %91
  br label %98

98:                                               ; preds = %97, %89
  %99 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %.0, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 8
  store i32 %.0, i32* %103, align 4
  br label %111

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 10
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %.0, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 10
  store i32 %.0, i32* %109, align 4
  br label %110

110:                                              ; preds = %108, %104
  br label %111

111:                                              ; preds = %110, %102
  br label %112

112:                                              ; preds = %111, %69
  %113 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 0
  %114 = load %struct.netbox*, %struct.netbox** %113, align 8
  br label %64, !llvm.loop !4

115:                                              ; preds = %64
  %116 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 11
  %117 = load double, double* %116, align 8
  %118 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %119, %121
  %123 = sitofp i32 %122 to double
  %124 = fmul double %117, %123
  %125 = fptosi double %124 to i32
  %126 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 11
  %127 = load double, double* %126, align 8
  %128 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %129, %131
  %133 = sitofp i32 %132 to double
  %134 = fmul double %127, %133
  %135 = fptosi double %134 to i32
  %136 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 12
  %137 = load double, double* %136, align 8
  %138 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 10
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 8
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %139, %141
  %143 = sitofp i32 %142 to double
  %144 = fmul double %137, %143
  %145 = fptosi double %144 to i32
  %146 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 12
  %147 = load double, double* %146, align 8
  %148 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 9
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %15, i64 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %149, %151
  %153 = sitofp i32 %152 to double
  %154 = fmul double %147, %153
  %155 = fptosi double %154 to i32
  %156 = add i32 %125, %145
  %157 = add i32 %135, %155
  %158 = sub i32 %156, %157
  %159 = add nsw i32 %.03, %158
  br label %160

160:                                              ; preds = %115, %23
  %.14 = phi i32 [ %.03, %23 ], [ %159, %115 ]
  %161 = getelementptr inbounds %struct.termbox, %struct.termbox* %.05, i64 0, i32 0
  %162 = load %struct.termbox*, %struct.termbox** %161, align 8
  br label %2, !llvm.loop !6

163:                                              ; preds = %2
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
