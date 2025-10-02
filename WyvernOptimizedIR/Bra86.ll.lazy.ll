; ModuleID = './Bra86.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Bra86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kMaskToAllowedStatus = dso_local constant [8 x i8] c"\01\01\01\00\01\00\00\00", align 1
@kMaskToBitNumber = dso_local constant [8 x i8] c"\00\01\02\02\03\03\03\03", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i64 @x86_Convert(i8* noundef %0, i64 noundef %1, i32 noundef %2, i32* nocapture noundef %3, i32 noundef %4) #0 {
  %6 = icmp ult i64 %1, 5
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %151

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 7
  %11 = add i32 %2, 5
  br label %12

12:                                               ; preds = %.backedge, %8
  %.07 = phi i64 [ -1, %8 ], [ %29, %.backedge ]
  %.05 = phi i64 [ 0, %8 ], [ %.05.be, %.backedge ]
  %.04 = phi i32 [ %10, %8 ], [ %.04.be, %.backedge ]
  %13 = getelementptr inbounds i8, i8* %0, i64 %.05
  %14 = getelementptr inbounds i8, i8* %0, i64 %1
  %15 = getelementptr inbounds i8, i8* %14, i64 -4
  br label %16

16:                                               ; preds = %24, %12
  %.03 = phi i8* [ %13, %12 ], [ %25, %24 ]
  %17 = icmp ult i8* %.03, %15
  br i1 %17, label %18, label %.loopexit

18:                                               ; preds = %16
  %19 = load i8, i8* %.03, align 1
  %20 = and i8 %19, -2
  %21 = icmp eq i8 %20, -24
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %26

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds i8, i8* %.03, i64 1
  br label %16, !llvm.loop !4

.loopexit:                                        ; preds = %16
  br label %26

26:                                               ; preds = %.loopexit, %22
  %27 = ptrtoint i8* %.03 to i64
  %28 = ptrtoint i8* %0 to i64
  %29 = sub i64 %27, %28
  %.not = icmp ult i8* %.03, %15
  br i1 %.not, label %31, label %30

30:                                               ; preds = %26
  br label %140

31:                                               ; preds = %26
  %32 = sub i64 %29, %.07
  %33 = icmp ugt i64 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %62

35:                                               ; preds = %31
  %36 = trunc i64 %32 to i32
  %37 = add nsw i32 %36, -1
  %38 = shl i32 %.04, %37
  %39 = and i32 %38, 7
  %.not15 = icmp eq i32 %39, 0
  br i1 %.not15, label %61, label %40

40:                                               ; preds = %35
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* @kMaskToBitNumber, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = sub nsw i64 4, %44
  %46 = getelementptr inbounds i8, i8* %.03, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i32 %39 to i64
  %49 = lshr i64 232, %48
  %50 = and i64 %49, 1
  %.not17.not = icmp eq i64 %50, 0
  br i1 %.not17.not, label %51, label %55

51:                                               ; preds = %40
  %52 = icmp eq i8 %47, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %51
  %54 = icmp eq i8 %47, -1
  br i1 %54, label %55, label %60

55:                                               ; preds = %53, %51, %40
  %56 = shl nuw nsw i32 %39, 1
  %57 = and i32 %56, 6
  %58 = or i32 %57, 1
  %59 = add i64 %29, 1
  br label %.backedge

.backedge:                                        ; preds = %55, %139
  %.05.be = phi i64 [ %.16, %139 ], [ %59, %55 ]
  %.04.be = phi i32 [ %.2, %139 ], [ %58, %55 ]
  br label %12

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %35
  br label %62

62:                                               ; preds = %61, %34
  %.1 = phi i32 [ 0, %34 ], [ %39, %61 ]
  %63 = getelementptr inbounds i8, i8* %.03, i64 4
  %64 = load i8, i8* %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %.03, i64 4
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, -1
  br i1 %69, label %70, label %134

70:                                               ; preds = %66, %62
  %71 = getelementptr inbounds i8, i8* %.03, i64 4
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl nuw i32 %73, 24
  %75 = getelementptr inbounds i8, i8* %.03, i64 3
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 16
  %79 = or i32 %74, %78
  %80 = getelementptr inbounds i8, i8* %.03, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 8
  %84 = or i32 %79, %83
  %85 = getelementptr inbounds i8, i8* %.03, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %84, %87
  br label %89

89:                                               ; preds = %115, %70
  %.02 = phi i32 [ %88, %70 ], [ %118, %115 ]
  %.not16 = icmp eq i32 %4, 0
  br i1 %.not16, label %94, label %90

90:                                               ; preds = %89
  %91 = trunc i64 %29 to i32
  %92 = add i32 %11, %91
  %93 = add i32 %92, %.02
  br label %98

94:                                               ; preds = %89
  %95 = trunc i64 %29 to i32
  %96 = add i32 %11, %95
  %97 = sub i32 %.02, %96
  br label %98

98:                                               ; preds = %94, %90
  %.01 = phi i32 [ %93, %90 ], [ %97, %94 ]
  %99 = icmp eq i32 %.1, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  br label %119

101:                                              ; preds = %98
  %102 = zext i32 %.1 to i64
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* @kMaskToBitNumber, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 3
  %107 = sub nsw i32 24, %106
  %108 = lshr i32 %.01, %107
  %109 = and i32 %108, 255
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %101
  %112 = and i32 %108, 255
  %113 = icmp eq i32 %112, 255
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  br label %119

115:                                              ; preds = %111, %101
  %116 = sub nsw i32 32, %106
  %notmask = shl nsw i32 -1, %116
  %117 = xor i32 %notmask, %.01
  %118 = xor i32 %117, -1
  br label %89

119:                                              ; preds = %114, %100
  %120 = lshr i32 %.01, 24
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = sub nsw i8 0, %122
  %124 = getelementptr inbounds i8, i8* %.03, i64 4
  store i8 %123, i8* %124, align 1
  %125 = lshr i32 %.01, 16
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds i8, i8* %.03, i64 3
  store i8 %126, i8* %127, align 1
  %128 = lshr i32 %.01, 8
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds i8, i8* %.03, i64 2
  store i8 %129, i8* %130, align 1
  %131 = trunc i32 %.01 to i8
  %132 = getelementptr inbounds i8, i8* %.03, i64 1
  store i8 %131, i8* %132, align 1
  %133 = add i64 %29, 5
  br label %139

134:                                              ; preds = %66
  %135 = shl nuw nsw i32 %.1, 1
  %136 = and i32 %135, 6
  %137 = or i32 %136, 1
  %138 = add i64 %29, 1
  br label %139

139:                                              ; preds = %134, %119
  %.16 = phi i64 [ %133, %119 ], [ %138, %134 ]
  %.2 = phi i32 [ %.1, %119 ], [ %137, %134 ]
  br label %.backedge

140:                                              ; preds = %30
  %141 = sub i64 %29, %.07
  %142 = icmp ugt i64 %141, 3
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %149

144:                                              ; preds = %140
  %145 = trunc i64 %141 to i32
  %146 = add nsw i32 %145, -1
  %147 = shl i32 %.04, %146
  %148 = and i32 %147, 7
  br label %149

149:                                              ; preds = %144, %143
  %150 = phi i32 [ 0, %143 ], [ %148, %144 ]
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %7
  %.0 = phi i64 [ 0, %7 ], [ %29, %149 ]
  ret i64 %.0
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
