; ModuleID = './ag_enc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/ag_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BitBuffer = type { i8*, i8*, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dyn_comp(%struct.AGParamRec* nocapture noundef %0, i32* nocapture noundef readonly %1, %struct.BitBuffer* noundef %2, i32 noundef %3, i32 noundef %4, i32* nocapture noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %14, %12
  store i32 0, i32* %5, align 4
  %16 = icmp sgt i32 %4, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = icmp slt i32 %4, 33
  br i1 %18, label %20, label %19

19:                                               ; preds = %17, %6
  br label %212

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %2, i64 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %2, i64 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i64 0, i32 4
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %208, %20
  %.021 = phi i32 [ %24, %20 ], [ %.223, %208 ]
  %.016 = phi i32 [ 0, %20 ], [ %.319, %208 ]
  %.011.neg = phi i32 [ 0, %20 ], [ %.213.neg, %208 ]
  %.07 = phi i32 [ %26, %20 ], [ %.29, %208 ]
  %.01 = phi i32 [ 0, %20 ], [ %.56, %208 ]
  %.0 = phi i32* [ %1, %20 ], [ %.5, %208 ]
  %35 = icmp ult i32 %.016, %3
  br i1 %35, label %36, label %209

36:                                               ; preds = %34
  %37 = lshr i32 %.07, 9
  %38 = add nuw nsw i32 %37, 3
  %39 = call i32 @lead(i32 noundef %38) #5
  %40 = sub nsw i32 31, %39
  %41 = icmp ugt i32 %40, %31
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %36
  %.020 = phi i32 [ %31, %42 ], [ %40, %36 ]
  %notmask = shl nsw i32 -1, %.020
  %44 = xor i32 %notmask, -1
  %45 = getelementptr inbounds i32, i32* %.0, i64 1
  %46 = load i32, i32* %.0, align 4
  %47 = add nsw i32 %.01, 1
  %48 = call i32 @llvm.abs.i32(i32 %46, i1 true)
  %49 = shl nuw i32 %48, 1
  %.neg = ashr i32 %46, 31
  %50 = add i32 %.neg, %49
  %51 = add i32 %.011.neg, %50
  %52 = call i32 @dyn_code_32bit(i32 noundef %4, i32 noundef %44, i32 noundef %.020, i32 noundef %51, i32* noundef nonnull %7, i32* noundef nonnull %8, i32* noundef nonnull %9, i32* noundef nonnull %10)
  %.not = icmp eq i32 %52, 0
  br i1 %.not, label %113, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = lshr i32 %.021, 3
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %22, i64 %57
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @Swap32NtoB(i32 noundef %60) #5
  %62 = and i32 %.021, 7
  %63 = add i32 %62, %54
  %64 = sub i32 32, %63
  %65 = sub i32 32, %54
  %66 = lshr i32 -1, %65
  %67 = shl i32 %66, %64
  %68 = shl i32 %55, %64
  %69 = and i32 %68, %67
  %70 = xor i32 %67, -1
  %71 = and i32 %61, %70
  %72 = or i32 %69, %71
  %73 = bitcast i8* %58 to i32*
  %74 = call i32 @Swap32BtoN(i32 noundef %72) #5
  store i32 %74, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %.021, %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = lshr i32 %76, 3
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %22, i64 %80
  %82 = and i32 %76, 7
  %83 = add i32 %82, %77
  %84 = sub i32 32, %83
  %85 = bitcast i8* %81 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @Swap32NtoB(i32 noundef %86) #5
  %88 = icmp slt i32 %84, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %53
  %.neg37 = add i32 %83, -32
  %.neg36 = add i32 %83, -32
  %90 = lshr i32 %78, %.neg36
  %91 = lshr i32 -1, %.neg37
  %92 = xor i32 %91, -1
  %93 = and i32 %87, %92
  %94 = or i32 %90, %93
  %95 = getelementptr inbounds i8, i8* %81, i64 4
  %96 = sub i32 40, %83
  %97 = shl i32 %78, %96
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %95, align 1
  br label %108

99:                                               ; preds = %53
  %100 = sub i32 32, %77
  %101 = lshr i32 -1, %100
  %102 = shl i32 %101, %84
  %103 = shl i32 %78, %84
  %104 = and i32 %103, %102
  %105 = xor i32 %102, -1
  %106 = and i32 %87, %105
  %107 = or i32 %104, %106
  br label %108

108:                                              ; preds = %99, %89
  %.025 = phi i32 [ %94, %89 ], [ %107, %99 ]
  %109 = bitcast i8* %81 to i32*
  %110 = call i32 @Swap32BtoN(i32 noundef %.025) #5
  store i32 %110, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = add i32 %76, %111
  br label %137

113:                                              ; preds = %43
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = lshr i32 %.021, 3
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %22, i64 %117
  %119 = bitcast i8* %118 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @Swap32NtoB(i32 noundef %120) #5
  %122 = and i32 %.021, 7
  %123 = add i32 %122, %114
  %124 = sub i32 32, %123
  %125 = sub i32 32, %114
  %126 = lshr i32 -1, %125
  %127 = shl i32 %126, %124
  %128 = shl i32 %115, %124
  %129 = and i32 %128, %127
  %130 = xor i32 %127, -1
  %131 = and i32 %121, %130
  %132 = or i32 %129, %131
  %133 = bitcast i8* %118 to i32*
  %134 = call i32 @Swap32BtoN(i32 noundef %132) #5
  store i32 %134, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = add i32 %.021, %135
  br label %137

137:                                              ; preds = %113, %108
  %.122 = phi i32 [ %112, %108 ], [ %136, %113 ]
  %138 = add i32 %.016, 1
  %.not32 = icmp slt i32 %47, %12
  br i1 %.not32, label %142, label %139

139:                                              ; preds = %137
  %140 = sext i32 %15 to i64
  %141 = getelementptr inbounds i32, i32* %45, i64 %140
  br label %142

142:                                              ; preds = %139, %137
  %.12 = phi i32 [ 0, %139 ], [ %47, %137 ]
  %.1 = phi i32* [ %141, %139 ], [ %45, %137 ]
  %143 = mul i32 %29, %50
  %144 = add i32 %143, %.07
  %145 = mul i32 %29, %.07
  %146 = lshr i32 %145, 9
  %147 = sub i32 %144, %146
  %148 = icmp ugt i32 %51, 65535
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %142
  %.18 = phi i32 [ 65535, %149 ], [ %147, %142 ]
  %.not33 = icmp ugt i32 %138, %3
  br i1 %.not33, label %151, label %152

151:                                              ; preds = %150
  br label %211

152:                                              ; preds = %150
  %153 = and i32 %.18, 1073741696
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %208

155:                                              ; preds = %152
  %156 = icmp ult i32 %138, %3
  br i1 %156, label %157, label %208

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %176, %157
  %.117 = phi i32 [ %138, %157 ], [ %168, %176 ]
  %.014 = phi i32 [ 0, %157 ], [ %167, %176 ]
  %.23 = phi i32 [ %.12, %157 ], [ %.34, %176 ]
  %.2 = phi i32* [ %.1, %157 ], [ %.3, %176 ]
  %159 = icmp ult i32 %.117, %3
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = load i32, i32* %.2, align 4
  %162 = icmp eq i32 %161, 0
  br label %163

163:                                              ; preds = %160, %158
  %164 = phi i1 [ false, %158 ], [ %162, %160 ]
  br i1 %164, label %165, label %.loopexit

165:                                              ; preds = %163
  %166 = getelementptr inbounds i32, i32* %.2, i64 1
  %167 = add i32 %.014, 1
  %168 = add i32 %.117, 1
  %169 = add nsw i32 %.23, 1
  %.not35 = icmp slt i32 %169, %12
  br i1 %.not35, label %173, label %170

170:                                              ; preds = %165
  %171 = sext i32 %15 to i64
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  br label %173

173:                                              ; preds = %170, %165
  %.34 = phi i32 [ 0, %170 ], [ %169, %165 ]
  %.3 = phi i32* [ %172, %170 ], [ %166, %165 ]
  %174 = icmp ugt i32 %167, 65534
  br i1 %174, label %175, label %176

175:                                              ; preds = %173
  br label %177

176:                                              ; preds = %173
  br label %158, !llvm.loop !4

.loopexit:                                        ; preds = %163
  br label %177

177:                                              ; preds = %.loopexit, %175
  %.218 = phi i32 [ %168, %175 ], [ %.117, %.loopexit ]
  %.115 = phi i32 [ %167, %175 ], [ %.014, %.loopexit ]
  %.112.neg = phi i32 [ 0, %175 ], [ -1, %.loopexit ]
  %.45 = phi i32 [ %.34, %175 ], [ %.23, %.loopexit ]
  %.4 = phi i32* [ %.3, %175 ], [ %.2, %.loopexit ]
  %178 = call i32 @lead(i32 noundef %.18)
  %179 = add nsw i32 %178, -24
  %180 = add i32 %.18, 16
  %181 = lshr i32 %180, 6
  %182 = add i32 %179, %181
  %notmask34 = shl nsw i32 -1, %182
  %183 = xor i32 %notmask34, -1
  %184 = and i32 %33, %183
  %185 = call i32 @dyn_code(i32 noundef %184, i32 noundef %182, i32 noundef %.115, i32* noundef nonnull %7)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %7, align 4
  %187 = lshr i32 %.122, 3
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %22, i64 %188
  %190 = bitcast i8* %189 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @Swap32NtoB(i32 noundef %191) #5
  %193 = and i32 %.122, 7
  %194 = add i32 %193, %186
  %195 = sub i32 32, %194
  %196 = sub i32 32, %186
  %197 = lshr i32 -1, %196
  %198 = shl i32 %197, %195
  %199 = shl i32 %185, %195
  %200 = and i32 %199, %198
  %201 = xor i32 %198, -1
  %202 = and i32 %192, %201
  %203 = or i32 %200, %202
  %204 = bitcast i8* %189 to i32*
  %205 = call i32 @Swap32BtoN(i32 noundef %203) #5
  store i32 %205, i32* %204, align 4
  %206 = load i32, i32* %7, align 4
  %207 = add i32 %.122, %206
  br label %208

208:                                              ; preds = %177, %155, %152
  %.223 = phi i32 [ %207, %177 ], [ %.122, %155 ], [ %.122, %152 ]
  %.319 = phi i32 [ %.218, %177 ], [ %138, %155 ], [ %138, %152 ]
  %.213.neg = phi i32 [ %.112.neg, %177 ], [ 0, %155 ], [ 0, %152 ]
  %.29 = phi i32 [ 0, %177 ], [ %.18, %155 ], [ %.18, %152 ]
  %.56 = phi i32 [ %.45, %177 ], [ %.12, %155 ], [ %.12, %152 ]
  %.5 = phi i32* [ %.4, %177 ], [ %.1, %155 ], [ %.1, %152 ]
  br label %34, !llvm.loop !6

209:                                              ; preds = %34
  %210 = sub i32 %.021, %24
  store i32 %210, i32* %5, align 4
  call void @BitBufferAdvance(%struct.BitBuffer* noundef %2, i32 noundef %210) #5
  br label %211

211:                                              ; preds = %209, %151
  %.010 = phi i32 [ -50, %151 ], [ 0, %209 ]
  br label %212

212:                                              ; preds = %211, %19
  %.024 = phi i32 [ %.010, %211 ], [ -50, %19 ]
  ret i32 %.024
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @dyn_code_32bit(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32* nocapture noundef writeonly %4, i32* nocapture noundef writeonly %5, i32* nocapture noundef writeonly %6, i32* nocapture noundef writeonly %7) #1 {
  %9 = udiv i32 %3, %1
  %10 = icmp ult i32 %9, 9
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = mul i32 %9, %1
  %13 = sub i32 %3, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = add i32 %9, %2
  %17 = add i32 %16, 1
  %18 = sub i32 %17, %15
  %19 = icmp ugt i32 %18, 25
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %29

21:                                               ; preds = %11
  %notmask = shl nsw i32 -1, %9
  %22 = xor i32 %notmask, -1
  %23 = sub i32 %18, %9
  %24 = shl i32 %22, %23
  %25 = add i32 %24, %13
  %26 = add i32 %25, 1
  %27 = sub i32 %26, %15
  br label %30

28:                                               ; preds = %8
  br label %29

29:                                               ; preds = %28, %20
  store i32 %3, i32* %6, align 4
  store i32 %0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %21
  %.02 = phi i32 [ 9, %29 ], [ %18, %21 ]
  %.01 = phi i32 [ 511, %29 ], [ %27, %21 ]
  %.0 = phi i32 [ 1, %29 ], [ 0, %21 ]
  store i32 %.02, i32* %4, align 4
  store i32 %.01, i32* %5, align 4
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal i32 @lead(i32 noundef %0) #2 {
  br label %2

2:                                                ; preds = %9, %1
  %.01 = phi i64 [ 0, %1 ], [ %11, %9 ]
  %.0 = phi i64 [ 2147483648, %1 ], [ %10, %9 ]
  %3 = icmp ult i64 %.01, 32
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2
  %5 = sext i32 %0 to i64
  %6 = and i64 %.0, %5
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %4
  br label %12

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = lshr i64 %.0, 1
  %11 = add nuw nsw i64 %.01, 1
  br label %2, !llvm.loop !7

.loopexit:                                        ; preds = %2
  br label %12

12:                                               ; preds = %.loopexit, %7
  %13 = trunc i64 %.01 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @dyn_code(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef writeonly %3) #1 {
  %5 = sdiv i32 %2, %0
  %6 = icmp ugt i32 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = add nsw i32 %2, 33488896
  br label %26

9:                                                ; preds = %4
  %10 = srem i32 %2, %0
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = add i32 %5, %1
  %14 = add i32 %13, 1
  %15 = sub i32 %14, %12
  %notmask = shl nsw i32 -1, %5
  %16 = xor i32 %notmask, -1
  %17 = sub i32 %15, %5
  %18 = shl i32 %16, %17
  %19 = add i32 %18, %10
  %20 = add i32 %19, 1
  %21 = sub i32 %20, %12
  %22 = icmp ugt i32 %15, 25
  br i1 %22, label %23, label %25

23:                                               ; preds = %9
  %24 = add nsw i32 %2, 33488896
  br label %25

25:                                               ; preds = %23, %9
  %.01 = phi i32 [ 25, %23 ], [ %15, %9 ]
  %.0 = phi i32 [ %24, %23 ], [ %21, %9 ]
  br label %26

26:                                               ; preds = %25, %7
  %.12 = phi i32 [ 25, %7 ], [ %.01, %25 ]
  %.1 = phi i32 [ %8, %7 ], [ %.0, %25 ]
  store i32 %.12, i32* %3, align 4
  ret i32 %.1
}

declare dso_local void @BitBufferAdvance(%struct.BitBuffer* noundef, i32 noundef) #3

declare dso_local i32 @Swap32NtoB(i32 noundef) #3

declare dso_local i32 @Swap32BtoN(i32 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
