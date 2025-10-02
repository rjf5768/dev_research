; ModuleID = './matrix_dec.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/matrix_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @unmix16(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i16* nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %37, label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %32, %8
  %.01 = phi i16* [ %2, %8 ], [ %34, %32 ]
  %.0 = phi i32 [ 0, %8 ], [ %35, %32 ]
  %10 = icmp slt i32 %.0, %4
  br i1 %10, label %11, label %36

11:                                               ; preds = %9
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i32, i32* %1, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds i32, i32* %1, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, %6
  %23 = ashr i32 %22, %5
  %24 = sub nsw i32 %18, %23
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds i32, i32* %1, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = trunc i32 %24 to i16
  store i16 %29, i16* %.01, align 2
  %30 = trunc i32 %28 to i16
  %31 = getelementptr inbounds i16, i16* %.01, i64 1
  store i16 %30, i16* %31, align 2
  br label %32

32:                                               ; preds = %11
  %33 = zext i32 %3 to i64
  %34 = getelementptr inbounds i16, i16* %.01, i64 %33
  %35 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !4

36:                                               ; preds = %9
  br label %55

37:                                               ; preds = %7
  br label %38

38:                                               ; preds = %50, %37
  %.12 = phi i16* [ %2, %37 ], [ %52, %50 ]
  %.1 = phi i32 [ 0, %37 ], [ %53, %50 ]
  %39 = icmp slt i32 %.1, %4
  br i1 %39, label %40, label %54

40:                                               ; preds = %38
  %41 = zext i32 %.1 to i64
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %.12, align 2
  %45 = zext i32 %.1 to i64
  %46 = getelementptr inbounds i32, i32* %1, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds i16, i16* %.12, i64 1
  store i16 %48, i16* %49, align 2
  br label %50

50:                                               ; preds = %40
  %51 = zext i32 %3 to i64
  %52 = getelementptr inbounds i16, i16* %.12, i64 %51
  %53 = add nuw nsw i32 %.1, 1
  br label %38, !llvm.loop !6

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %36
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @unmix20(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i8* nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %53, label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %46, %8
  %.01 = phi i8* [ %2, %8 ], [ %50, %46 ]
  %.0 = phi i32 [ 0, %8 ], [ %51, %46 ]
  %10 = icmp slt i32 %.0, %4
  br i1 %10, label %11, label %52

11:                                               ; preds = %9
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i32, i32* %1, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds i32, i32* %1, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, %6
  %23 = ashr i32 %22, %5
  %24 = sub nsw i32 %18, %23
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds i32, i32* %1, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = shl i32 %24, 4
  %30 = shl i32 %28, 4
  %31 = lshr i32 %29, 16
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %29, 8
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %35, i8* %36, align 1
  %37 = trunc i32 %29 to i8
  store i8 %37, i8* %.01, align 1
  %38 = getelementptr inbounds i8, i8* %.01, i64 3
  %39 = lshr i32 %30, 16
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds i8, i8* %.01, i64 5
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %30, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, i8* %.01, i64 4
  store i8 %43, i8* %44, align 1
  %45 = trunc i32 %30 to i8
  store i8 %45, i8* %38, align 1
  br label %46

46:                                               ; preds = %11
  %47 = mul i32 %3, 3
  %48 = add i32 %47, -3
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %38, i64 %49
  %51 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !7

52:                                               ; preds = %9
  br label %87

53:                                               ; preds = %7
  br label %54

54:                                               ; preds = %80, %53
  %.12 = phi i8* [ %2, %53 ], [ %84, %80 ]
  %.1 = phi i32 [ 0, %53 ], [ %85, %80 ]
  %55 = icmp slt i32 %.1, %4
  br i1 %55, label %56, label %86

56:                                               ; preds = %54
  %57 = zext i32 %.1 to i64
  %58 = getelementptr inbounds i32, i32* %0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 4
  %61 = lshr i32 %60, 16
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds i8, i8* %.12, i64 2
  store i8 %62, i8* %63, align 1
  %64 = lshr i32 %60, 8
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, i8* %.12, i64 1
  store i8 %65, i8* %66, align 1
  %67 = trunc i32 %60 to i8
  store i8 %67, i8* %.12, align 1
  %68 = getelementptr inbounds i8, i8* %.12, i64 3
  %69 = zext i32 %.1 to i64
  %70 = getelementptr inbounds i32, i32* %1, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 4
  %73 = lshr i32 %72, 16
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, i8* %.12, i64 5
  store i8 %74, i8* %75, align 1
  %76 = lshr i32 %72, 8
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds i8, i8* %.12, i64 4
  store i8 %77, i8* %78, align 1
  %79 = trunc i32 %72 to i8
  store i8 %79, i8* %68, align 1
  br label %80

80:                                               ; preds = %56
  %81 = mul i32 %3, 3
  %82 = add i32 %81, -3
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %68, i64 %83
  %85 = add nuw nsw i32 %.1, 1
  br label %54, !llvm.loop !8

86:                                               ; preds = %54
  br label %87

87:                                               ; preds = %86, %52
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @unmix24(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i8* nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16* nocapture noundef readonly %7, i32 noundef %8) #0 {
  %10 = shl nsw i32 %8, 3
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %113, label %11

11:                                               ; preds = %9
  %.not8 = icmp eq i32 %8, 0
  br i1 %.not8, label %69, label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %61, %12
  %.03 = phi i8* [ %2, %12 ], [ %65, %61 ]
  %.01 = phi i32 [ 0, %12 ], [ %66, %61 ]
  %.0 = phi i32 [ 0, %12 ], [ %67, %61 ]
  %14 = icmp slt i32 %.01, %4
  br i1 %14, label %15, label %68

15:                                               ; preds = %13
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %.01 to i64
  %20 = getelementptr inbounds i32, i32* %1, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = zext i32 %.01 to i64
  %24 = getelementptr inbounds i32, i32* %1, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, %6
  %27 = ashr i32 %26, %5
  %28 = sub nsw i32 %22, %27
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds i32, i32* %1, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = shl i32 %28, %10
  %34 = zext i32 %.0 to i64
  %35 = getelementptr inbounds i16, i16* %7, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = or i32 %33, %37
  %39 = shl i32 %32, %10
  %40 = or i32 %.0, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %7, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %39, %44
  %46 = lshr i32 %33, 16
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, i8* %.03, i64 2
  store i8 %47, i8* %48, align 1
  %49 = lshr i32 %38, 8
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, i8* %.03, i64 1
  store i8 %50, i8* %51, align 1
  %52 = trunc i32 %38 to i8
  store i8 %52, i8* %.03, align 1
  %53 = getelementptr inbounds i8, i8* %.03, i64 3
  %54 = lshr i32 %39, 16
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds i8, i8* %.03, i64 5
  store i8 %55, i8* %56, align 1
  %57 = lshr i32 %45, 8
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds i8, i8* %.03, i64 4
  store i8 %58, i8* %59, align 1
  %60 = trunc i32 %45 to i8
  store i8 %60, i8* %53, align 1
  br label %61

61:                                               ; preds = %15
  %62 = mul i32 %3, 3
  %63 = add i32 %62, -3
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %53, i64 %64
  %66 = add nuw nsw i32 %.01, 1
  %67 = add nuw nsw i32 %.0, 2
  br label %13, !llvm.loop !9

68:                                               ; preds = %13
  br label %112

69:                                               ; preds = %11
  br label %70

70:                                               ; preds = %105, %69
  %.14 = phi i8* [ %2, %69 ], [ %109, %105 ]
  %.12 = phi i32 [ 0, %69 ], [ %110, %105 ]
  %71 = icmp slt i32 %.12, %4
  br i1 %71, label %72, label %111

72:                                               ; preds = %70
  %73 = zext i32 %.12 to i64
  %74 = getelementptr inbounds i32, i32* %0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %.12 to i64
  %77 = getelementptr inbounds i32, i32* %1, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = zext i32 %.12 to i64
  %81 = getelementptr inbounds i32, i32* %1, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, %6
  %84 = ashr i32 %83, %5
  %85 = sub nsw i32 %79, %84
  %86 = zext i32 %.12 to i64
  %87 = getelementptr inbounds i32, i32* %1, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  %90 = lshr i32 %85, 16
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds i8, i8* %.14, i64 2
  store i8 %91, i8* %92, align 1
  %93 = lshr i32 %85, 8
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds i8, i8* %.14, i64 1
  store i8 %94, i8* %95, align 1
  %96 = trunc i32 %85 to i8
  store i8 %96, i8* %.14, align 1
  %97 = getelementptr inbounds i8, i8* %.14, i64 3
  %98 = lshr i32 %89, 16
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds i8, i8* %.14, i64 5
  store i8 %99, i8* %100, align 1
  %101 = lshr i32 %89, 8
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds i8, i8* %.14, i64 4
  store i8 %102, i8* %103, align 1
  %104 = trunc i32 %89 to i8
  store i8 %104, i8* %97, align 1
  br label %105

105:                                              ; preds = %72
  %106 = mul i32 %3, 3
  %107 = add i32 %106, -3
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %97, i64 %108
  %110 = add nuw nsw i32 %.12, 1
  br label %70, !llvm.loop !10

111:                                              ; preds = %70
  br label %112

112:                                              ; preds = %111, %68
  br label %193

113:                                              ; preds = %9
  %.not7 = icmp eq i32 %8, 0
  br i1 %.not7, label %160, label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %152, %114
  %.25 = phi i8* [ %2, %114 ], [ %156, %152 ]
  %.2 = phi i32 [ 0, %114 ], [ %157, %152 ]
  %.1 = phi i32 [ 0, %114 ], [ %158, %152 ]
  %116 = icmp slt i32 %.2, %4
  br i1 %116, label %117, label %159

117:                                              ; preds = %115
  %118 = zext i32 %.2 to i64
  %119 = getelementptr inbounds i32, i32* %0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = zext i32 %.2 to i64
  %122 = getelementptr inbounds i32, i32* %1, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %120, %10
  %125 = zext i32 %.1 to i64
  %126 = getelementptr inbounds i16, i16* %7, i64 %125
  %127 = load i16, i16* %126, align 2
  %128 = zext i16 %127 to i32
  %129 = or i32 %124, %128
  %130 = shl i32 %123, %10
  %131 = or i32 %.1, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i16, i16* %7, i64 %132
  %134 = load i16, i16* %133, align 2
  %135 = zext i16 %134 to i32
  %136 = or i32 %130, %135
  %137 = lshr i32 %124, 16
  %138 = trunc i32 %137 to i8
  %139 = getelementptr inbounds i8, i8* %.25, i64 2
  store i8 %138, i8* %139, align 1
  %140 = lshr i32 %129, 8
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds i8, i8* %.25, i64 1
  store i8 %141, i8* %142, align 1
  %143 = trunc i32 %129 to i8
  store i8 %143, i8* %.25, align 1
  %144 = getelementptr inbounds i8, i8* %.25, i64 3
  %145 = lshr i32 %130, 16
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds i8, i8* %.25, i64 5
  store i8 %146, i8* %147, align 1
  %148 = lshr i32 %136, 8
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds i8, i8* %.25, i64 4
  store i8 %149, i8* %150, align 1
  %151 = trunc i32 %136 to i8
  store i8 %151, i8* %144, align 1
  br label %152

152:                                              ; preds = %117
  %153 = mul i32 %3, 3
  %154 = add i32 %153, -3
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %144, i64 %155
  %157 = add nuw nsw i32 %.2, 1
  %158 = add nuw nsw i32 %.1, 2
  br label %115, !llvm.loop !11

159:                                              ; preds = %115
  br label %192

160:                                              ; preds = %113
  br label %161

161:                                              ; preds = %185, %160
  %.36 = phi i8* [ %2, %160 ], [ %189, %185 ]
  %.3 = phi i32 [ 0, %160 ], [ %190, %185 ]
  %162 = icmp slt i32 %.3, %4
  br i1 %162, label %163, label %191

163:                                              ; preds = %161
  %164 = zext i32 %.3 to i64
  %165 = getelementptr inbounds i32, i32* %0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = lshr i32 %166, 16
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds i8, i8* %.36, i64 2
  store i8 %168, i8* %169, align 1
  %170 = lshr i32 %166, 8
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds i8, i8* %.36, i64 1
  store i8 %171, i8* %172, align 1
  %173 = trunc i32 %166 to i8
  store i8 %173, i8* %.36, align 1
  %174 = getelementptr inbounds i8, i8* %.36, i64 3
  %175 = zext i32 %.3 to i64
  %176 = getelementptr inbounds i32, i32* %1, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = lshr i32 %177, 16
  %179 = trunc i32 %178 to i8
  %180 = getelementptr inbounds i8, i8* %.36, i64 5
  store i8 %179, i8* %180, align 1
  %181 = lshr i32 %177, 8
  %182 = trunc i32 %181 to i8
  %183 = getelementptr inbounds i8, i8* %.36, i64 4
  store i8 %182, i8* %183, align 1
  %184 = trunc i32 %177 to i8
  store i8 %184, i8* %174, align 1
  br label %185

185:                                              ; preds = %163
  %186 = mul i32 %3, 3
  %187 = add i32 %186, -3
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %174, i64 %188
  %190 = add nuw nsw i32 %.3, 1
  br label %161, !llvm.loop !12

191:                                              ; preds = %161
  br label %192

192:                                              ; preds = %191, %159
  br label %193

193:                                              ; preds = %192, %112
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @unmix32(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32* nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16* nocapture noundef readonly %7, i32 noundef %8) #0 {
  %10 = shl nsw i32 %8, 3
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %46, label %11

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %40, %11
  %.03 = phi i32* [ %2, %11 ], [ %42, %40 ]
  %.01 = phi i32 [ 0, %11 ], [ %43, %40 ]
  %.0 = phi i32 [ 0, %11 ], [ %44, %40 ]
  %13 = icmp slt i32 %.01, %4
  br i1 %13, label %14, label %45

14:                                               ; preds = %12
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds i32, i32* %1, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = mul nsw i32 %20, %6
  %23 = ashr i32 %22, %5
  %24 = sub nsw i32 %21, %23
  %25 = sub nsw i32 %24, %20
  %26 = shl i32 %24, %10
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds i16, i16* %7, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = or i32 %26, %30
  store i32 %31, i32* %.03, align 4
  %32 = shl i32 %25, %10
  %33 = or i32 %.0, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %7, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = or i32 %32, %37
  %39 = getelementptr inbounds i32, i32* %.03, i64 1
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %14
  %41 = zext i32 %3 to i64
  %42 = getelementptr inbounds i32, i32* %.03, i64 %41
  %43 = add nuw nsw i32 %.01, 1
  %44 = add nuw nsw i32 %.0, 2
  br label %12, !llvm.loop !13

45:                                               ; preds = %12
  br label %95

46:                                               ; preds = %9
  %47 = icmp eq i32 %8, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %59, %48
  %.14 = phi i32* [ %2, %48 ], [ %61, %59 ]
  %.12 = phi i32 [ 0, %48 ], [ %62, %59 ]
  %50 = icmp slt i32 %.12, %4
  br i1 %50, label %51, label %63

51:                                               ; preds = %49
  %52 = zext i32 %.12 to i64
  %53 = getelementptr inbounds i32, i32* %0, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %.14, align 4
  %55 = zext i32 %.12 to i64
  %56 = getelementptr inbounds i32, i32* %1, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %.14, i64 1
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %51
  %60 = zext i32 %3 to i64
  %61 = getelementptr inbounds i32, i32* %.14, i64 %60
  %62 = add nuw nsw i32 %.12, 1
  br label %49, !llvm.loop !14

63:                                               ; preds = %49
  br label %94

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %88, %64
  %.25 = phi i32* [ %2, %64 ], [ %90, %88 ]
  %.2 = phi i32 [ 0, %64 ], [ %91, %88 ]
  %.1 = phi i32 [ 0, %64 ], [ %92, %88 ]
  %66 = icmp slt i32 %.2, %4
  br i1 %66, label %67, label %93

67:                                               ; preds = %65
  %68 = zext i32 %.2 to i64
  %69 = getelementptr inbounds i32, i32* %0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, %10
  %72 = zext i32 %.1 to i64
  %73 = getelementptr inbounds i16, i16* %7, i64 %72
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = or i32 %71, %75
  store i32 %76, i32* %.25, align 4
  %77 = zext i32 %.2 to i64
  %78 = getelementptr inbounds i32, i32* %1, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, %10
  %81 = or i32 %.1, 1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i16, i16* %7, i64 %82
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  %86 = or i32 %80, %85
  %87 = getelementptr inbounds i32, i32* %.25, i64 1
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %67
  %89 = zext i32 %3 to i64
  %90 = getelementptr inbounds i32, i32* %.25, i64 %89
  %91 = add nuw nsw i32 %.2, 1
  %92 = add nuw nsw i32 %.1, 2
  br label %65, !llvm.loop !15

93:                                               ; preds = %65
  br label %94

94:                                               ; preds = %93, %63
  br label %95

95:                                               ; preds = %94, %45
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @copyPredictorTo24(i32* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %18, %4
  %.01 = phi i8* [ %1, %4 ], [ %21, %18 ]
  %.0 = phi i32 [ 0, %4 ], [ %22, %18 ]
  %6 = icmp slt i32 %.0, %3
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = lshr i32 %10, 16
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %12, i8* %13, align 1
  %14 = lshr i32 %10, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %15, i8* %16, align 1
  %17 = trunc i32 %10 to i8
  store i8 %17, i8* %.01, align 1
  br label %18

18:                                               ; preds = %7
  %19 = mul i32 %2, 3
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %.01, i64 %20
  %22 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !16

23:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @copyPredictorTo24Shift(i32* nocapture noundef readonly %0, i16* nocapture noundef readonly %1, i8* nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = shl nsw i32 %5, 3
  br label %8

8:                                                ; preds = %27, %6
  %.01 = phi i8* [ %2, %6 ], [ %30, %27 ]
  %.0 = phi i32 [ 0, %6 ], [ %31, %27 ]
  %9 = icmp slt i32 %.0, %4
  br i1 %9, label %10, label %32

10:                                               ; preds = %8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, %7
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i16, i16* %1, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %14, %18
  %20 = lshr i32 %14, 16
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %19, 8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %24, i8* %25, align 1
  %26 = trunc i32 %19 to i8
  store i8 %26, i8* %.01, align 1
  br label %27

27:                                               ; preds = %10
  %28 = mul i32 %3, 3
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %.01, i64 %29
  %31 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !17

32:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @copyPredictorTo20(i32* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %18, %4
  %.01 = phi i8* [ %1, %4 ], [ %21, %18 ]
  %.0 = phi i32 [ 0, %4 ], [ %22, %18 ]
  %6 = icmp slt i32 %.0, %3
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = lshr i32 %10, 12
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %12, i8* %13, align 1
  %14 = lshr i32 %10, 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %15, i8* %16, align 1
  %.tr = trunc i32 %10 to i8
  %17 = shl i8 %.tr, 4
  store i8 %17, i8* %.01, align 1
  br label %18

18:                                               ; preds = %7
  %19 = mul i32 %2, 3
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %.01, i64 %20
  %22 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !18

23:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @copyPredictorTo32(i32* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi i32 [ 0, %4 ], [ %14, %13 ]
  %.0 = phi i32 [ 0, %4 ], [ %15, %13 ]
  %6 = icmp slt i32 %.01, %3
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds i32, i32* %1, i64 %11
  store i32 %10, i32* %12, align 4
  br label %13

13:                                               ; preds = %7
  %14 = add nuw nsw i32 %.01, 1
  %15 = add i32 %.0, %2
  br label %5, !llvm.loop !19

16:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @copyPredictorTo32Shift(i32* nocapture noundef readonly %0, i16* nocapture noundef readonly %1, i32* nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = shl nsw i32 %5, 3
  br label %8

8:                                                ; preds = %20, %6
  %.01 = phi i32* [ %2, %6 ], [ %22, %20 ]
  %.0 = phi i32 [ 0, %6 ], [ %23, %20 ]
  %9 = icmp slt i32 %.0, %4
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, %7
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i16, i16* %1, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %14, %18
  store i32 %19, i32* %.01, align 4
  br label %20

20:                                               ; preds = %10
  %21 = zext i32 %3 to i64
  %22 = getelementptr inbounds i32, i32* %.01, i64 %21
  %23 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !20

24:                                               ; preds = %8
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
