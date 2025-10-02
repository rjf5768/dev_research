; ModuleID = './matrix_enc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/matrix_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @mix16(i16* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %33, label %8

8:                                                ; preds = %7
  %9 = shl i32 1, %5
  %10 = sub nsw i32 %9, %6
  br label %11

11:                                               ; preds = %28, %8
  %.01 = phi i16* [ %0, %8 ], [ %30, %28 ]
  %.0 = phi i32 [ 0, %8 ], [ %31, %28 ]
  %12 = icmp slt i32 %.0, %4
  br i1 %12, label %13, label %32

13:                                               ; preds = %11
  %14 = load i16, i16* %.01, align 2
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds i16, i16* %.01, i64 1
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %15, %6
  %20 = mul nsw i32 %10, %18
  %21 = add nsw i32 %19, %20
  %22 = ashr i32 %21, %5
  %23 = zext i32 %.0 to i64
  %24 = getelementptr inbounds i32, i32* %2, i64 %23
  store i32 %22, i32* %24, align 4
  %25 = sub nsw i32 %15, %18
  %26 = zext i32 %.0 to i64
  %27 = getelementptr inbounds i32, i32* %3, i64 %26
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %13
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds i16, i16* %.01, i64 %29
  %31 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !4

32:                                               ; preds = %11
  br label %51

33:                                               ; preds = %7
  br label %34

34:                                               ; preds = %46, %33
  %.12 = phi i16* [ %0, %33 ], [ %48, %46 ]
  %.1 = phi i32 [ 0, %33 ], [ %49, %46 ]
  %35 = icmp slt i32 %.1, %4
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = load i16, i16* %.12, align 2
  %38 = sext i16 %37 to i32
  %39 = zext i32 %.1 to i64
  %40 = getelementptr inbounds i32, i32* %2, i64 %39
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds i16, i16* %.12, i64 1
  %42 = load i16, i16* %41, align 2
  %43 = sext i16 %42 to i32
  %44 = zext i32 %.1 to i64
  %45 = getelementptr inbounds i32, i32* %3, i64 %44
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %36
  %47 = zext i32 %1 to i64
  %48 = getelementptr inbounds i16, i16* %.12, i64 %47
  %49 = add nuw nsw i32 %.1, 1
  br label %34, !llvm.loop !6

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %32
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @mix20(i8* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %59, label %8

8:                                                ; preds = %7
  %9 = shl i32 1, %5
  %10 = sub nsw i32 %9, %6
  br label %11

11:                                               ; preds = %52, %8
  %.01 = phi i8* [ %0, %8 ], [ %56, %52 ]
  %.0 = phi i32 [ 0, %8 ], [ %57, %52 ]
  %12 = icmp slt i32 %.0, %4
  br i1 %12, label %13, label %58

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %.01, i64 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = getelementptr inbounds i8, i8* %.01, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = load i8, i8* %.01, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = shl nuw i32 %25, 8
  %27 = ashr i32 %26, 12
  %28 = getelementptr inbounds i8, i8* %.01, i64 3
  %29 = getelementptr inbounds i8, i8* %.01, i64 5
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = getelementptr inbounds i8, i8* %.01, i64 4
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or i32 %32, %36
  %38 = load i8, i8* %28, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %37, %39
  %41 = shl nuw i32 %40, 8
  %42 = ashr i32 %41, 12
  %43 = mul nsw i32 %27, %6
  %44 = mul nsw i32 %10, %42
  %45 = add nsw i32 %43, %44
  %46 = ashr i32 %45, %5
  %47 = zext i32 %.0 to i64
  %48 = getelementptr inbounds i32, i32* %2, i64 %47
  store i32 %46, i32* %48, align 4
  %49 = sub nsw i32 %27, %42
  %50 = zext i32 %.0 to i64
  %51 = getelementptr inbounds i32, i32* %3, i64 %50
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %13
  %53 = mul i32 %1, 3
  %54 = add i32 %53, -3
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %28, i64 %55
  %57 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !7

58:                                               ; preds = %11
  br label %103

59:                                               ; preds = %7
  br label %60

60:                                               ; preds = %96, %59
  %.12 = phi i8* [ %0, %59 ], [ %100, %96 ]
  %.1 = phi i32 [ 0, %59 ], [ %101, %96 ]
  %61 = icmp slt i32 %.1, %4
  br i1 %61, label %62, label %102

62:                                               ; preds = %60
  %63 = getelementptr inbounds i8, i8* %.12, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 16
  %67 = getelementptr inbounds i8, i8* %.12, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 8
  %71 = or i32 %66, %70
  %72 = load i8, i8* %.12, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %71, %73
  %75 = shl nuw i32 %74, 8
  %76 = ashr i32 %75, 12
  %77 = zext i32 %.1 to i64
  %78 = getelementptr inbounds i32, i32* %2, i64 %77
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds i8, i8* %.12, i64 3
  %80 = getelementptr inbounds i8, i8* %.12, i64 5
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 16
  %84 = getelementptr inbounds i8, i8* %.12, i64 4
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = or i32 %83, %87
  %89 = load i8, i8* %79, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %88, %90
  %92 = shl nuw i32 %91, 8
  %93 = ashr i32 %92, 12
  %94 = zext i32 %.1 to i64
  %95 = getelementptr inbounds i32, i32* %3, i64 %94
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %62
  %97 = mul i32 %1, 3
  %98 = add i32 %97, -3
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %79, i64 %99
  %101 = add nuw nsw i32 %.1, 1
  br label %60, !llvm.loop !8

102:                                              ; preds = %60
  br label %103

103:                                              ; preds = %102, %58
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @mix24(i8* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16* nocapture noundef writeonly %7, i32 noundef %8) #0 {
  %10 = shl nsw i32 %8, 3
  %11 = zext i32 %10 to i64
  %notmask = shl nsw i64 -1, %11
  %12 = trunc i64 %notmask to i32
  %13 = xor i32 %12, -1
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %128, label %14

14:                                               ; preds = %9
  %15 = shl i32 1, %5
  %16 = sub nsw i32 %15, %6
  %.not8 = icmp eq i32 %8, 0
  br i1 %.not8, label %78, label %17

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %70, %17
  %.03 = phi i8* [ %0, %17 ], [ %74, %70 ]
  %.01 = phi i32 [ 0, %17 ], [ %75, %70 ]
  %.0 = phi i32 [ 0, %17 ], [ %76, %70 ]
  %19 = icmp slt i32 %.01, %4
  br i1 %19, label %20, label %77

20:                                               ; preds = %18
  %21 = getelementptr inbounds i8, i8* %.03, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 16
  %25 = getelementptr inbounds i8, i8* %.03, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = or i32 %24, %28
  %30 = load i8, i8* %.03, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %29, %31
  %33 = shl nuw i32 %32, 8
  %34 = ashr exact i32 %33, 8
  %35 = getelementptr inbounds i8, i8* %.03, i64 3
  %36 = getelementptr inbounds i8, i8* %.03, i64 5
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = getelementptr inbounds i8, i8* %.03, i64 4
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %39, %43
  %45 = load i8, i8* %35, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %44, %46
  %48 = shl nuw i32 %47, 8
  %49 = ashr exact i32 %48, 8
  %50 = and i32 %32, %13
  %51 = trunc i32 %50 to i16
  %52 = zext i32 %.0 to i64
  %53 = getelementptr inbounds i16, i16* %7, i64 %52
  store i16 %51, i16* %53, align 2
  %54 = and i32 %47, %13
  %55 = trunc i32 %54 to i16
  %56 = or i32 %.0, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i16, i16* %7, i64 %57
  store i16 %55, i16* %58, align 2
  %59 = ashr i32 %34, %10
  %60 = ashr i32 %49, %10
  %61 = mul nsw i32 %59, %6
  %62 = mul nsw i32 %16, %60
  %63 = add nsw i32 %61, %62
  %64 = ashr i32 %63, %5
  %65 = zext i32 %.01 to i64
  %66 = getelementptr inbounds i32, i32* %2, i64 %65
  store i32 %64, i32* %66, align 4
  %67 = sub nsw i32 %59, %60
  %68 = zext i32 %.01 to i64
  %69 = getelementptr inbounds i32, i32* %3, i64 %68
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %20
  %71 = mul i32 %1, 3
  %72 = add i32 %71, -3
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %35, i64 %73
  %75 = add nuw nsw i32 %.01, 1
  %76 = add nuw nsw i32 %.0, 2
  br label %18, !llvm.loop !9

77:                                               ; preds = %18
  br label %127

78:                                               ; preds = %14
  br label %79

79:                                               ; preds = %120, %78
  %.14 = phi i8* [ %0, %78 ], [ %124, %120 ]
  %.12 = phi i32 [ 0, %78 ], [ %125, %120 ]
  %80 = icmp slt i32 %.12, %4
  br i1 %80, label %81, label %126

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, i8* %.14, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 16
  %86 = getelementptr inbounds i8, i8* %.14, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 8
  %90 = or i32 %85, %89
  %91 = load i8, i8* %.14, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %90, %92
  %94 = shl nuw i32 %93, 8
  %95 = ashr exact i32 %94, 8
  %96 = getelementptr inbounds i8, i8* %.14, i64 3
  %97 = getelementptr inbounds i8, i8* %.14, i64 5
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 16
  %101 = getelementptr inbounds i8, i8* %.14, i64 4
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 8
  %105 = or i32 %100, %104
  %106 = load i8, i8* %96, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %105, %107
  %109 = shl nuw i32 %108, 8
  %110 = ashr exact i32 %109, 8
  %111 = mul nsw i32 %95, %6
  %112 = mul nsw i32 %16, %110
  %113 = add nsw i32 %111, %112
  %114 = ashr i32 %113, %5
  %115 = zext i32 %.12 to i64
  %116 = getelementptr inbounds i32, i32* %2, i64 %115
  store i32 %114, i32* %116, align 4
  %117 = sub nsw i32 %95, %110
  %118 = zext i32 %.12 to i64
  %119 = getelementptr inbounds i32, i32* %3, i64 %118
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %81
  %121 = mul i32 %1, 3
  %122 = add i32 %121, -3
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %96, i64 %123
  %125 = add nuw nsw i32 %.12, 1
  br label %79, !llvm.loop !10

126:                                              ; preds = %79
  br label %127

127:                                              ; preds = %126, %77
  br label %230

128:                                              ; preds = %9
  %.not7 = icmp eq i32 %8, 0
  br i1 %.not7, label %185, label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %177, %129
  %.25 = phi i8* [ %0, %129 ], [ %181, %177 ]
  %.2 = phi i32 [ 0, %129 ], [ %182, %177 ]
  %.1 = phi i32 [ 0, %129 ], [ %183, %177 ]
  %131 = icmp slt i32 %.2, %4
  br i1 %131, label %132, label %184

132:                                              ; preds = %130
  %133 = getelementptr inbounds i8, i8* %.25, i64 2
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 16
  %137 = getelementptr inbounds i8, i8* %.25, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl nuw nsw i32 %139, 8
  %141 = or i32 %136, %140
  %142 = load i8, i8* %.25, align 1
  %143 = zext i8 %142 to i32
  %144 = or i32 %141, %143
  %145 = shl nuw i32 %144, 8
  %146 = ashr exact i32 %145, 8
  %147 = getelementptr inbounds i8, i8* %.25, i64 3
  %148 = getelementptr inbounds i8, i8* %.25, i64 5
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 16
  %152 = getelementptr inbounds i8, i8* %.25, i64 4
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = shl nuw nsw i32 %154, 8
  %156 = or i32 %151, %155
  %157 = load i8, i8* %147, align 1
  %158 = zext i8 %157 to i32
  %159 = or i32 %156, %158
  %160 = shl nuw i32 %159, 8
  %161 = ashr exact i32 %160, 8
  %162 = and i32 %144, %13
  %163 = trunc i32 %162 to i16
  %164 = zext i32 %.1 to i64
  %165 = getelementptr inbounds i16, i16* %7, i64 %164
  store i16 %163, i16* %165, align 2
  %166 = and i32 %159, %13
  %167 = trunc i32 %166 to i16
  %168 = or i32 %.1, 1
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i16, i16* %7, i64 %169
  store i16 %167, i16* %170, align 2
  %171 = ashr i32 %146, %10
  %172 = ashr i32 %161, %10
  %173 = zext i32 %.2 to i64
  %174 = getelementptr inbounds i32, i32* %2, i64 %173
  store i32 %171, i32* %174, align 4
  %175 = zext i32 %.2 to i64
  %176 = getelementptr inbounds i32, i32* %3, i64 %175
  store i32 %172, i32* %176, align 4
  br label %177

177:                                              ; preds = %132
  %178 = mul i32 %1, 3
  %179 = add i32 %178, -3
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %147, i64 %180
  %182 = add nuw nsw i32 %.2, 1
  %183 = add nuw nsw i32 %.1, 2
  br label %130, !llvm.loop !11

184:                                              ; preds = %130
  br label %229

185:                                              ; preds = %128
  br label %186

186:                                              ; preds = %222, %185
  %.36 = phi i8* [ %0, %185 ], [ %226, %222 ]
  %.3 = phi i32 [ 0, %185 ], [ %227, %222 ]
  %187 = icmp slt i32 %.3, %4
  br i1 %187, label %188, label %228

188:                                              ; preds = %186
  %189 = getelementptr inbounds i8, i8* %.36, i64 2
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = shl nuw nsw i32 %191, 16
  %193 = getelementptr inbounds i8, i8* %.36, i64 1
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = shl nuw nsw i32 %195, 8
  %197 = or i32 %192, %196
  %198 = load i8, i8* %.36, align 1
  %199 = zext i8 %198 to i32
  %200 = or i32 %197, %199
  %201 = shl nuw i32 %200, 8
  %202 = ashr exact i32 %201, 8
  %203 = zext i32 %.3 to i64
  %204 = getelementptr inbounds i32, i32* %2, i64 %203
  store i32 %202, i32* %204, align 4
  %205 = getelementptr inbounds i8, i8* %.36, i64 3
  %206 = getelementptr inbounds i8, i8* %.36, i64 5
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = shl nuw nsw i32 %208, 16
  %210 = getelementptr inbounds i8, i8* %.36, i64 4
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = shl nuw nsw i32 %212, 8
  %214 = or i32 %209, %213
  %215 = load i8, i8* %205, align 1
  %216 = zext i8 %215 to i32
  %217 = or i32 %214, %216
  %218 = shl nuw i32 %217, 8
  %219 = ashr exact i32 %218, 8
  %220 = zext i32 %.3 to i64
  %221 = getelementptr inbounds i32, i32* %3, i64 %220
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %188
  %223 = mul i32 %1, 3
  %224 = add i32 %223, -3
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %205, i64 %225
  %227 = add nuw nsw i32 %.3, 1
  br label %186, !llvm.loop !12

228:                                              ; preds = %186
  br label %229

229:                                              ; preds = %228, %184
  br label %230

230:                                              ; preds = %229, %127
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @mix32(i32* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16* nocapture noundef writeonly %7, i32 noundef %8) #0 {
  %10 = shl nsw i32 %8, 3
  %11 = zext i32 %10 to i64
  %notmask = shl nsw i64 -1, %11
  %12 = trunc i64 %notmask to i32
  %13 = xor i32 %12, -1
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %49, label %14

14:                                               ; preds = %9
  %15 = shl i32 1, %5
  %16 = sub nsw i32 %15, %6
  br label %17

17:                                               ; preds = %43, %14
  %.03 = phi i32* [ %0, %14 ], [ %45, %43 ]
  %.01 = phi i32 [ 0, %14 ], [ %46, %43 ]
  %.0 = phi i32 [ 0, %14 ], [ %47, %43 ]
  %18 = icmp slt i32 %.01, %4
  br i1 %18, label %19, label %48

19:                                               ; preds = %17
  %20 = load i32, i32* %.03, align 4
  %21 = getelementptr inbounds i32, i32* %.03, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %20, %13
  %24 = trunc i32 %23 to i16
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds i16, i16* %7, i64 %25
  store i16 %24, i16* %26, align 2
  %27 = and i32 %22, %13
  %28 = trunc i32 %27 to i16
  %29 = or i32 %.0, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %7, i64 %30
  store i16 %28, i16* %31, align 2
  %32 = ashr i32 %20, %10
  %33 = ashr i32 %22, %10
  %34 = mul nsw i32 %32, %6
  %35 = mul nsw i32 %16, %33
  %36 = add nsw i32 %34, %35
  %37 = ashr i32 %36, %5
  %38 = zext i32 %.01 to i64
  %39 = getelementptr inbounds i32, i32* %2, i64 %38
  store i32 %37, i32* %39, align 4
  %40 = sub nsw i32 %32, %33
  %41 = zext i32 %.01 to i64
  %42 = getelementptr inbounds i32, i32* %3, i64 %41
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %19
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds i32, i32* %.03, i64 %44
  %46 = add nuw nsw i32 %.01, 1
  %47 = add nuw nsw i32 %.0, 2
  br label %17, !llvm.loop !13

48:                                               ; preds = %17
  br label %96

49:                                               ; preds = %9
  %50 = icmp eq i32 %8, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %62, %51
  %.14 = phi i32* [ %0, %51 ], [ %64, %62 ]
  %.12 = phi i32 [ 0, %51 ], [ %65, %62 ]
  %53 = icmp slt i32 %.12, %4
  br i1 %53, label %54, label %66

54:                                               ; preds = %52
  %55 = load i32, i32* %.14, align 4
  %56 = zext i32 %.12 to i64
  %57 = getelementptr inbounds i32, i32* %2, i64 %56
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds i32, i32* %.14, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %.12 to i64
  %61 = getelementptr inbounds i32, i32* %3, i64 %60
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %54
  %63 = zext i32 %1 to i64
  %64 = getelementptr inbounds i32, i32* %.14, i64 %63
  %65 = add nuw nsw i32 %.12, 1
  br label %52, !llvm.loop !14

66:                                               ; preds = %52
  br label %95

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %89, %67
  %.25 = phi i32* [ %0, %67 ], [ %91, %89 ]
  %.2 = phi i32 [ 0, %67 ], [ %92, %89 ]
  %.1 = phi i32 [ 0, %67 ], [ %93, %89 ]
  %69 = icmp slt i32 %.2, %4
  br i1 %69, label %70, label %94

70:                                               ; preds = %68
  %71 = load i32, i32* %.25, align 4
  %72 = getelementptr inbounds i32, i32* %.25, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %71, %13
  %75 = trunc i32 %74 to i16
  %76 = zext i32 %.1 to i64
  %77 = getelementptr inbounds i16, i16* %7, i64 %76
  store i16 %75, i16* %77, align 2
  %78 = and i32 %73, %13
  %79 = trunc i32 %78 to i16
  %80 = or i32 %.1, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i16, i16* %7, i64 %81
  store i16 %79, i16* %82, align 2
  %83 = ashr i32 %71, %10
  %84 = ashr i32 %73, %10
  %85 = zext i32 %.2 to i64
  %86 = getelementptr inbounds i32, i32* %2, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = zext i32 %.2 to i64
  %88 = getelementptr inbounds i32, i32* %3, i64 %87
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %70
  %90 = zext i32 %1 to i64
  %91 = getelementptr inbounds i32, i32* %.25, i64 %90
  %92 = add nuw nsw i32 %.2, 1
  %93 = add nuw nsw i32 %.1, 2
  br label %68, !llvm.loop !15

94:                                               ; preds = %68
  br label %95

95:                                               ; preds = %94, %66
  br label %96

96:                                               ; preds = %95, %48
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @copy20ToPredictor(i8* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %24, %4
  %.01 = phi i8* [ %0, %4 ], [ %27, %24 ]
  %.0 = phi i32 [ 0, %4 ], [ %28, %24 ]
  %6 = icmp slt i32 %.0, %3
  br i1 %6, label %7, label %29

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %.01, i64 2
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = load i8, i8* %.01, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = shl nuw i32 %19, 8
  %21 = ashr i32 %20, 12
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds i32, i32* %2, i64 %22
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %7
  %25 = mul i32 %1, 3
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %.01, i64 %26
  %28 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !16

29:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @copy24ToPredictor(i8* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %24, %4
  %.01 = phi i8* [ %0, %4 ], [ %27, %24 ]
  %.0 = phi i32 [ 0, %4 ], [ %28, %24 ]
  %6 = icmp slt i32 %.0, %3
  br i1 %6, label %7, label %29

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %.01, i64 2
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = load i8, i8* %.01, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = shl nuw i32 %19, 8
  %21 = ashr exact i32 %20, 8
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds i32, i32* %2, i64 %22
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %7
  %25 = mul i32 %1, 3
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %.01, i64 %26
  %28 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !17

29:                                               ; preds = %5
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
