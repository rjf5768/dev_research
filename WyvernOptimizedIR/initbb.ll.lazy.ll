; ModuleID = './initbb.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/initbb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@bbleft = dso_local global i32 0, align 4
@bbbottom = dso_local global i32 0, align 4
@bbtop = dso_local global i32 0, align 4
@bbright = dso_local global i32 0, align 4
@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@bbbl = dso_local global i32 0, align 4
@bbbr = dso_local global i32 0, align 4
@bbbb = dso_local global i32 0, align 4
@bbbt = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @initbb() #0 {
  store i32 1000000, i32* @bbleft, align 4
  store i32 1000000, i32* @bbbottom, align 4
  store i32 0, i32* @bbtop, align 4
  store i32 0, i32* @bbright, align 4
  br label %1

1:                                                ; preds = %45, %0
  %.0 = phi i32 [ 1, %0 ], [ %46, %45 ]
  %2 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %47, label %3

3:                                                ; preds = %1
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %5
  %7 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %14
  %16 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %17 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %9, %18
  %20 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %9, %21
  %23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %11, %24
  %26 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %11, %27
  %29 = load i32, i32* @bbleft, align 4
  %30 = icmp slt i32 %19, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 %19, i32* @bbleft, align 4
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32, i32* @bbright, align 4
  %34 = icmp sgt i32 %22, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 %22, i32* @bbright, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* @bbbottom, align 4
  %38 = icmp slt i32 %25, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 %25, i32* @bbbottom, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* @bbtop, align 4
  %42 = icmp sgt i32 %28, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 %28, i32* @bbtop, align 4
  br label %44

44:                                               ; preds = %43, %40
  br label %45

45:                                               ; preds = %44
  %46 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

47:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @deltaBB(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %4, i64 %5
  %7 = load %struct.cellbox*, %struct.cellbox** %6, align 8
  %8 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %7, i64 0, i32 21, i64 %14
  %16 = load %struct.tilebox*, %struct.tilebox** %15, align 8
  %17 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %9, %18
  %20 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %9, %21
  %23 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %11, %24
  %26 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i64 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %11, %27
  %29 = load i32, i32* @bbleft, align 4
  %30 = icmp eq i32 %19, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %3
  store i32 1000000, i32* @bbbl, align 4
  br label %32

32:                                               ; preds = %56, %31
  %.01 = phi i32 [ 1, %31 ], [ %57, %56 ]
  %33 = load i32, i32* @numcells, align 4
  %.not9 = icmp sgt i32 %.01, %33
  br i1 %.not9, label %58, label %34

34:                                               ; preds = %32
  %35 = icmp eq i32 %.01, %0
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  br label %56

37:                                               ; preds = %34
  %38 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %39 = zext i32 %.01 to i64
  %40 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %38, i64 %39
  %41 = load %struct.cellbox*, %struct.cellbox** %40, align 8
  %42 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %41, i64 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %41, i64 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %41, i64 0, i32 21, i64 %46
  %48 = load %struct.tilebox*, %struct.tilebox** %47, align 8
  %49 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %48, i64 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %43, %50
  %52 = load i32, i32* @bbbl, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  store i32 %51, i32* @bbbl, align 4
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %36
  %57 = add nuw nsw i32 %.01, 1
  br label %32, !llvm.loop !6

58:                                               ; preds = %32
  %59 = load i32, i32* @bbbl, align 4
  %60 = load i32, i32* @bbleft, align 4
  %.neg10 = sub i32 %60, %59
  br label %63

61:                                               ; preds = %3
  %62 = load i32, i32* @bbleft, align 4
  store i32 %62, i32* @bbbl, align 4
  br label %63

63:                                               ; preds = %61, %58
  %.0 = phi i32 [ %.neg10, %58 ], [ 0, %61 ]
  %64 = load i32, i32* @bbright, align 4
  %65 = icmp eq i32 %22, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %63
  store i32 0, i32* @bbbr, align 4
  br label %67

67:                                               ; preds = %91, %66
  %.12 = phi i32 [ 1, %66 ], [ %92, %91 ]
  %68 = load i32, i32* @numcells, align 4
  %.not7 = icmp sgt i32 %.12, %68
  br i1 %.not7, label %93, label %69

69:                                               ; preds = %67
  %70 = icmp eq i32 %.12, %0
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  br label %91

72:                                               ; preds = %69
  %73 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %74 = zext i32 %.12 to i64
  %75 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %73, i64 %74
  %76 = load %struct.cellbox*, %struct.cellbox** %75, align 8
  %77 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %76, i64 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %76, i64 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %76, i64 0, i32 21, i64 %81
  %83 = load %struct.tilebox*, %struct.tilebox** %82, align 8
  %84 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %83, i64 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %78, %85
  %87 = load i32, i32* @bbbr, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  store i32 %86, i32* @bbbr, align 4
  br label %90

90:                                               ; preds = %89, %72
  br label %91

91:                                               ; preds = %90, %71
  %92 = add nuw nsw i32 %.12, 1
  br label %67, !llvm.loop !7

93:                                               ; preds = %67
  %94 = load i32, i32* @bbright, align 4
  %95 = load i32, i32* @bbbr, align 4
  %.neg8 = sub i32 %95, %94
  %96 = add i32 %.neg8, %.0
  br label %99

97:                                               ; preds = %63
  %98 = load i32, i32* @bbright, align 4
  store i32 %98, i32* @bbbr, align 4
  br label %99

99:                                               ; preds = %97, %93
  %.1 = phi i32 [ %96, %93 ], [ %.0, %97 ]
  %100 = load i32, i32* @bbbottom, align 4
  %101 = icmp eq i32 %25, %100
  br i1 %101, label %102, label %133

102:                                              ; preds = %99
  store i32 1000000, i32* @bbbb, align 4
  br label %103

103:                                              ; preds = %127, %102
  %.23 = phi i32 [ 1, %102 ], [ %128, %127 ]
  %104 = load i32, i32* @numcells, align 4
  %.not5 = icmp sgt i32 %.23, %104
  br i1 %.not5, label %129, label %105

105:                                              ; preds = %103
  %106 = icmp eq i32 %.23, %0
  br i1 %106, label %107, label %108

107:                                              ; preds = %105
  br label %127

108:                                              ; preds = %105
  %109 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %110 = zext i32 %.23 to i64
  %111 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %109, i64 %110
  %112 = load %struct.cellbox*, %struct.cellbox** %111, align 8
  %113 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %112, i64 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %112, i64 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %112, i64 0, i32 21, i64 %117
  %119 = load %struct.tilebox*, %struct.tilebox** %118, align 8
  %120 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %119, i64 0, i32 11
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %114, %121
  %123 = load i32, i32* @bbbb, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %108
  store i32 %122, i32* @bbbb, align 4
  br label %126

126:                                              ; preds = %125, %108
  br label %127

127:                                              ; preds = %126, %107
  %128 = add nuw nsw i32 %.23, 1
  br label %103, !llvm.loop !8

129:                                              ; preds = %103
  %130 = load i32, i32* @bbbb, align 4
  %131 = load i32, i32* @bbbottom, align 4
  %.neg6 = sub i32 %131, %130
  %132 = add i32 %.neg6, %.1
  br label %135

133:                                              ; preds = %99
  %134 = load i32, i32* @bbbottom, align 4
  store i32 %134, i32* @bbbb, align 4
  br label %135

135:                                              ; preds = %133, %129
  %.2 = phi i32 [ %132, %129 ], [ %.1, %133 ]
  %136 = load i32, i32* @bbtop, align 4
  %137 = icmp eq i32 %28, %136
  br i1 %137, label %138, label %169

138:                                              ; preds = %135
  store i32 0, i32* @bbbt, align 4
  br label %139

139:                                              ; preds = %163, %138
  %.34 = phi i32 [ 1, %138 ], [ %164, %163 ]
  %140 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.34, %140
  br i1 %.not, label %165, label %141

141:                                              ; preds = %139
  %142 = icmp eq i32 %.34, %0
  br i1 %142, label %143, label %144

143:                                              ; preds = %141
  br label %163

144:                                              ; preds = %141
  %145 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %146 = zext i32 %.34 to i64
  %147 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %145, i64 %146
  %148 = load %struct.cellbox*, %struct.cellbox** %147, align 8
  %149 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %148, i64 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %148, i64 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %148, i64 0, i32 21, i64 %153
  %155 = load %struct.tilebox*, %struct.tilebox** %154, align 8
  %156 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %155, i64 0, i32 12
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %150, %157
  %159 = load i32, i32* @bbbt, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %144
  store i32 %158, i32* @bbbt, align 4
  br label %162

162:                                              ; preds = %161, %144
  br label %163

163:                                              ; preds = %162, %143
  %164 = add nuw nsw i32 %.34, 1
  br label %139, !llvm.loop !9

165:                                              ; preds = %139
  %166 = load i32, i32* @bbtop, align 4
  %167 = load i32, i32* @bbbt, align 4
  %.neg = sub i32 %167, %166
  %168 = add i32 %.neg, %.2
  br label %171

169:                                              ; preds = %135
  %170 = load i32, i32* @bbtop, align 4
  store i32 %170, i32* @bbbt, align 4
  br label %171

171:                                              ; preds = %169, %165
  %.3 = phi i32 [ %168, %165 ], [ %.2, %169 ]
  %172 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %173 = sext i32 %0 to i64
  %174 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %172, i64 %173
  %175 = load %struct.cellbox*, %struct.cellbox** %174, align 8
  %176 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %175, i64 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %175, i64 0, i32 21, i64 %178
  %180 = load %struct.tilebox*, %struct.tilebox** %179, align 8
  %181 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %180, i64 0, i32 9
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, %1
  %184 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %180, i64 0, i32 10
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %1
  %187 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %180, i64 0, i32 11
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, %2
  %190 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %180, i64 0, i32 12
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %2
  %193 = load i32, i32* @bbbl, align 4
  %194 = icmp slt i32 %183, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %171
  store i32 %183, i32* @bbbl, align 4
  br label %196

196:                                              ; preds = %195, %171
  %197 = load i32, i32* @bbbr, align 4
  %198 = icmp sgt i32 %186, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 %186, i32* @bbbr, align 4
  br label %200

200:                                              ; preds = %199, %196
  %201 = load i32, i32* @bbbb, align 4
  %202 = icmp slt i32 %189, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 %189, i32* @bbbb, align 4
  br label %204

204:                                              ; preds = %203, %200
  %205 = load i32, i32* @bbbt, align 4
  %206 = icmp sgt i32 %192, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 %192, i32* @bbbt, align 4
  br label %208

208:                                              ; preds = %207, %204
  ret i32 %.3
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
