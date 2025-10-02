; ModuleID = './neworient.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/neworient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@randVar = external dso_local global i32, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @newOrient(%struct.cellbox* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 5
  %4 = load i32, i32* %3, align 8
  %5 = icmp eq i32 %1, 4
  br i1 %5, label %6, label %101

6:                                                ; preds = %2
  %7 = icmp sgt i32 %4, 3
  br i1 %7, label %8, label %54

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %19, %8
  %.02 = phi i32 [ 0, %8 ], [ %.13, %19 ]
  %.01 = phi i32 [ 0, %8 ], [ %20, %19 ]
  %10 = icmp ult i32 %.01, 4
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 4, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = add nsw i32 %.02, 1
  br label %18

18:                                               ; preds = %16, %11
  %.13 = phi i32 [ %17, %16 ], [ %.02, %11 ]
  br label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %.01, 1
  br label %9, !llvm.loop !4

21:                                               ; preds = %9
  %22 = icmp eq i32 %.02, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %153

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %35, %24
  %26 = sitofp i32 %.02 to double
  %27 = load i32, i32* @randVar, align 4
  %28 = mul nsw i32 %27, 1103515245
  %29 = add nsw i32 %28, 12345
  store i32 %29, i32* @randVar, align 4
  %30 = and i32 %29, 2147483647
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 0x41DFFFFFFFC00000
  %33 = fmul double %32, %26
  %34 = fptosi double %33 to i32
  br label %35

35:                                               ; preds = %25
  %36 = icmp eq i32 %.02, %34
  br i1 %36, label %25, label %37, !llvm.loop !6

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %51, %37
  %.24 = phi i32 [ 0, %37 ], [ %.35, %51 ]
  %.1 = phi i32 [ 0, %37 ], [ %52, %51 ]
  %39 = icmp ult i32 %.1, 4
  br i1 %39, label %40, label %53

40:                                               ; preds = %38
  %41 = zext i32 %.1 to i64
  %42 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 4, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = icmp eq i32 %.24, %34
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %153

48:                                               ; preds = %45
  %49 = add nsw i32 %.24, 1
  br label %50

50:                                               ; preds = %48, %40
  %.35 = phi i32 [ %49, %48 ], [ %.24, %40 ]
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %.1, 1
  br label %38, !llvm.loop !7

53:                                               ; preds = %38
  br label %100

54:                                               ; preds = %6
  br label %55

55:                                               ; preds = %65, %54
  %.46 = phi i32 [ 0, %54 ], [ %.57, %65 ]
  %.2 = phi i32 [ 4, %54 ], [ %66, %65 ]
  %56 = icmp ult i32 %.2, 8
  br i1 %56, label %57, label %67

57:                                               ; preds = %55
  %58 = zext i32 %.2 to i64
  %59 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 4, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = add nsw i32 %.46, 1
  br label %64

64:                                               ; preds = %62, %57
  %.57 = phi i32 [ %63, %62 ], [ %.46, %57 ]
  br label %65

65:                                               ; preds = %64
  %66 = add nuw nsw i32 %.2, 1
  br label %55, !llvm.loop !8

67:                                               ; preds = %55
  %68 = icmp eq i32 %.46, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  br label %153

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %81, %70
  %72 = sitofp i32 %.46 to double
  %73 = load i32, i32* @randVar, align 4
  %74 = mul nsw i32 %73, 1103515245
  %75 = add nsw i32 %74, 12345
  store i32 %75, i32* @randVar, align 4
  %76 = and i32 %75, 2147483647
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %77, 0x41DFFFFFFFC00000
  %79 = fmul double %78, %72
  %80 = fptosi double %79 to i32
  br label %81

81:                                               ; preds = %71
  %82 = icmp eq i32 %.46, %80
  br i1 %82, label %71, label %83, !llvm.loop !9

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %97, %83
  %.6 = phi i32 [ 0, %83 ], [ %.7, %97 ]
  %.3 = phi i32 [ 4, %83 ], [ %98, %97 ]
  %85 = icmp ult i32 %.3, 8
  br i1 %85, label %86, label %99

86:                                               ; preds = %84
  %87 = zext i32 %.3 to i64
  %88 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 4, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = icmp eq i32 %.6, %80
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  br label %153

94:                                               ; preds = %91
  %95 = add nsw i32 %.6, 1
  br label %96

96:                                               ; preds = %94, %86
  %.7 = phi i32 [ %95, %94 ], [ %.6, %86 ]
  br label %97

97:                                               ; preds = %96
  %98 = add nuw nsw i32 %.3, 1
  br label %84, !llvm.loop !10

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %53
  br label %153

101:                                              ; preds = %2
  br label %102

102:                                              ; preds = %115, %101
  %.8 = phi i32 [ 0, %101 ], [ %.10, %115 ]
  %.4 = phi i32 [ 0, %101 ], [ %116, %115 ]
  %103 = icmp ult i32 %.4, 8
  br i1 %103, label %104, label %117

104:                                              ; preds = %102
  %105 = icmp eq i32 %.4, %4
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  br label %115

107:                                              ; preds = %104
  %108 = zext i32 %.4 to i64
  %109 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 4, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = add nsw i32 %.8, 1
  br label %114

114:                                              ; preds = %112, %107
  %.9 = phi i32 [ %113, %112 ], [ %.8, %107 ]
  br label %115

115:                                              ; preds = %114, %106
  %.10 = phi i32 [ %.8, %106 ], [ %.9, %114 ]
  %116 = add nuw nsw i32 %.4, 1
  br label %102, !llvm.loop !11

117:                                              ; preds = %102
  %118 = icmp eq i32 %.8, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %117
  br label %153

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %131, %120
  %122 = sitofp i32 %.8 to double
  %123 = load i32, i32* @randVar, align 4
  %124 = mul nsw i32 %123, 1103515245
  %125 = add nsw i32 %124, 12345
  store i32 %125, i32* @randVar, align 4
  %126 = and i32 %125, 2147483647
  %127 = sitofp i32 %126 to double
  %128 = fdiv double %127, 0x41DFFFFFFFC00000
  %129 = fmul double %128, %122
  %130 = fptosi double %129 to i32
  br label %131

131:                                              ; preds = %121
  %132 = icmp eq i32 %.8, %130
  br i1 %132, label %121, label %133, !llvm.loop !12

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %150, %133
  %.11 = phi i32 [ 0, %133 ], [ %.138, %150 ]
  %.5 = phi i32 [ 0, %133 ], [ %151, %150 ]
  %135 = icmp ult i32 %.5, 8
  br i1 %135, label %136, label %152

136:                                              ; preds = %134
  %137 = icmp eq i32 %.5, %4
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  br label %150

139:                                              ; preds = %136
  %140 = zext i32 %.5 to i64
  %141 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i64 0, i32 4, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = icmp eq i32 %.11, %130
  br i1 %145, label %146, label %147

146:                                              ; preds = %144
  br label %153

147:                                              ; preds = %144
  %148 = add nsw i32 %.11, 1
  br label %149

149:                                              ; preds = %147, %139
  %.12 = phi i32 [ %148, %147 ], [ %.11, %139 ]
  br label %150

150:                                              ; preds = %149, %138
  %.138 = phi i32 [ %.11, %138 ], [ %.12, %149 ]
  %151 = add nuw nsw i32 %.5, 1
  br label %134, !llvm.loop !13

152:                                              ; preds = %134
  br label %153

153:                                              ; preds = %152, %146, %119, %100, %93, %69, %47, %23
  %.0 = phi i32 [ -1, %23 ], [ %.1, %47 ], [ undef, %100 ], [ -1, %69 ], [ %.3, %93 ], [ -1, %119 ], [ %.5, %146 ], [ undef, %152 ]
  ret i32 %.0
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
