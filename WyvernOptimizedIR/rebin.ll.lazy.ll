; ModuleID = './rebin.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/rebin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numBinsX = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@numcells = external dso_local global i32, align 4
@blockarray = external dso_local global i32***, align 8
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@binOffsetX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@bucket = external dso_local global i32*, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @rebin(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %27, %1
  %.05 = phi i32 [ 0, %1 ], [ %28, %27 ]
  %3 = load i32, i32* @numBinsX, align 4
  %.not = icmp sgt i32 %.05, %3
  br i1 %.not, label %29, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %24, %4
  %.06 = phi i32 [ 0, %4 ], [ %25, %24 ]
  %6 = load i32, i32* @numBinsY, align 4
  %.not20 = icmp sgt i32 %.06, %6
  br i1 %.not20, label %26, label %7

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %21, %7
  %.07 = phi i32 [ 0, %7 ], [ %22, %21 ]
  %9 = load i32, i32* @numcells, align 4
  %10 = add nsw i32 %9, 4
  %.not21 = icmp sgt i32 %.07, %10
  br i1 %.not21, label %23, label %11

11:                                               ; preds = %8
  %12 = load i32***, i32**** @blockarray, align 8
  %13 = zext i32 %.05 to i64
  %14 = getelementptr inbounds i32**, i32*** %12, i64 %13
  %15 = load i32**, i32*** %14, align 8
  %16 = zext i32 %.06 to i64
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = zext i32 %.07 to i64
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %11
  %22 = add nuw nsw i32 %.07, 1
  br label %8, !llvm.loop !4

23:                                               ; preds = %8
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.06, 1
  br label %5, !llvm.loop !6

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.05, 1
  br label %2, !llvm.loop !7

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %156, %29
  %.08 = phi i32 [ 1, %29 ], [ %157, %156 ]
  %31 = load i32, i32* @numcells, align 4
  %32 = load i32, i32* @numpads, align 4
  %33 = add nsw i32 %31, %32
  %34 = add nsw i32 %33, 4
  %.not17 = icmp sgt i32 %.08, %34
  br i1 %.not17, label %158, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @numcells, align 4
  %37 = icmp sgt i32 %.08, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* @numcells, align 4
  %40 = load i32, i32* @numpads, align 4
  %41 = add nsw i32 %39, %40
  %.not19 = icmp sgt i32 %.08, %41
  br i1 %.not19, label %43, label %42

42:                                               ; preds = %38
  br label %156

43:                                               ; preds = %38, %35
  %44 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %45 = zext i32 %.08 to i64
  %46 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %44, i64 %45
  %47 = load %struct.cellbox*, %struct.cellbox** %46, align 8
  %48 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %47, i64 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %47, i64 0, i32 21, i64 %50
  %52 = load %struct.tilebox*, %struct.tilebox** %51, align 8
  %53 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %47, i64 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i64 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %54, %56
  %58 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i64 0, i32 10
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %54, %59
  %61 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %47, i64 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i64 0, i32 11
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %62, %64
  %66 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i64 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %62, %67
  %69 = icmp eq i32 %0, 1
  br i1 %69, label %70, label %85

70:                                               ; preds = %43
  %71 = load i32, i32* @numcells, align 4
  %.not18 = icmp sgt i32 %.08, %71
  br i1 %.not18, label %85, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i64 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %57, %74
  %76 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i64 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %60, %77
  %79 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i64 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %65, %80
  %82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i64 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %68, %83
  br label %85

85:                                               ; preds = %72, %70, %43
  %.012 = phi i32 [ %84, %72 ], [ %68, %70 ], [ %68, %43 ]
  %.011 = phi i32 [ %81, %72 ], [ %65, %70 ], [ %65, %43 ]
  %.010 = phi i32 [ %78, %72 ], [ %60, %70 ], [ %60, %43 ]
  %.09 = phi i32 [ %75, %72 ], [ %57, %70 ], [ %57, %43 ]
  %86 = load i32, i32* @binOffsetX, align 4
  %87 = sub nsw i32 %.09, %86
  %88 = load i32, i32* @binWidthX, align 4
  %89 = sdiv i32 %87, %88
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %98

92:                                               ; preds = %85
  %93 = load i32, i32* @numBinsX, align 4
  %94 = icmp sgt i32 %89, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @numBinsX, align 4
  br label %97

97:                                               ; preds = %95, %92
  %.015 = phi i32 [ %96, %95 ], [ %89, %92 ]
  br label %98

98:                                               ; preds = %97, %91
  %.116 = phi i32 [ 1, %91 ], [ %.015, %97 ]
  %99 = load i32, i32* @binOffsetX, align 4
  %100 = sub nsw i32 %.010, %99
  %101 = load i32, i32* @binWidthX, align 4
  %102 = sdiv i32 %100, %101
  %103 = load i32, i32* @numBinsX, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @numBinsX, align 4
  br label %111

107:                                              ; preds = %98
  %108 = icmp slt i32 %102, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109, %107
  %.03 = phi i32 [ 1, %109 ], [ %102, %107 ]
  br label %111

111:                                              ; preds = %110, %105
  %.14 = phi i32 [ %106, %105 ], [ %.03, %110 ]
  %112 = icmp eq i32 %.116, %.14
  br i1 %112, label %113, label %150

113:                                              ; preds = %111
  %114 = load i32, i32* @binOffsetY, align 4
  %115 = sub nsw i32 %.011, %114
  %116 = load i32, i32* @binWidthY, align 4
  %117 = sdiv i32 %115, %116
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %126

120:                                              ; preds = %113
  %121 = load i32, i32* @numBinsY, align 4
  %122 = icmp sgt i32 %117, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* @numBinsY, align 4
  br label %125

125:                                              ; preds = %123, %120
  %.01 = phi i32 [ %124, %123 ], [ %117, %120 ]
  br label %126

126:                                              ; preds = %125, %119
  %.12 = phi i32 [ 1, %119 ], [ %.01, %125 ]
  %127 = load i32, i32* @binOffsetY, align 4
  %128 = sub nsw i32 %.012, %127
  %129 = load i32, i32* @binWidthY, align 4
  %130 = sdiv i32 %128, %129
  %131 = load i32, i32* @numBinsY, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* @numBinsY, align 4
  br label %139

135:                                              ; preds = %126
  %136 = icmp slt i32 %130, 1
  br i1 %136, label %137, label %138

137:                                              ; preds = %135
  br label %138

138:                                              ; preds = %137, %135
  %.0 = phi i32 [ 1, %137 ], [ %130, %135 ]
  br label %139

139:                                              ; preds = %138, %133
  %.1 = phi i32 [ %134, %133 ], [ %.0, %138 ]
  %140 = icmp eq i32 %.12, %.1
  br i1 %140, label %141, label %148

141:                                              ; preds = %139
  %142 = load i32***, i32**** @blockarray, align 8
  %143 = sext i32 %.116 to i64
  %144 = getelementptr inbounds i32**, i32*** %142, i64 %143
  %145 = load i32**, i32*** %144, align 8
  %146 = sext i32 %.12 to i64
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  br label %149

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %141
  %.013.in = phi i32** [ %147, %141 ], [ @bucket, %148 ]
  br label %151

150:                                              ; preds = %111
  br label %151

151:                                              ; preds = %150, %149
  %.114.in = phi i32** [ %.013.in, %149 ], [ @bucket, %150 ]
  %.114 = load i32*, i32** %.114.in, align 8
  %152 = load i32, i32* %.114, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %.114, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %.114, i64 %154
  store i32 %.08, i32* %155, align 4
  br label %156

156:                                              ; preds = %151, %42
  %157 = add nuw nsw i32 %.08, 1
  br label %30, !llvm.loop !8

158:                                              ; preds = %30
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
