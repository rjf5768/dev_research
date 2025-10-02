; ModuleID = './floydDitherKernel.ll'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Dither/floydDitherKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @floydDitherKernel(i32 noundef %0, i32 noundef %1, [512 x i32]* nocapture noundef readonly %2, i32* noundef %3) #0 {
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %24, %4
  %.04 = phi i32 [ 0, %4 ], [ %25, %24 ]
  %7 = icmp slt i32 %.04, %0
  br i1 %7, label %8, label %26

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %21, %8
  %.03 = phi i32 [ 0, %8 ], [ %22, %21 ]
  %10 = icmp slt i32 %.03, %1
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = zext i32 %.04 to i64
  %13 = zext i32 %.03 to i64
  %14 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %.04 to i64
  %17 = mul nuw nsw i64 %16, %5
  %18 = getelementptr inbounds i32, i32* %3, i64 %17
  %19 = zext i32 %.03 to i64
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  br label %21

21:                                               ; preds = %11
  %22 = add nuw nsw i32 %.03, 1
  br label %9, !llvm.loop !4

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.04, 1
  br label %6, !llvm.loop !6

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %222, %26
  %.01 = phi i32 [ 1, %26 ], [ %223, %222 ]
  %28 = add nsw i32 %0, -1
  %29 = icmp slt i32 %.01, %28
  br i1 %29, label %30, label %224

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %219, %30
  %.0 = phi i32 [ 1, %30 ], [ %220, %219 ]
  %32 = add nsw i32 %1, -1
  %33 = icmp slt i32 %.0, %32
  br i1 %33, label %34, label %221

34:                                               ; preds = %31
  %35 = zext i32 %.01 to i64
  %36 = mul nuw nsw i64 %35, %5
  %37 = getelementptr inbounds i32, i32* %3, i64 %36
  %38 = zext i32 %.0 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 127
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = zext i32 %.01 to i64
  %44 = mul nuw nsw i64 %43, %5
  %45 = getelementptr inbounds i32, i32* %3, i64 %44
  %46 = zext i32 %.0 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -255
  %50 = zext i32 %.01 to i64
  %51 = mul nuw nsw i64 %50, %5
  %52 = getelementptr inbounds i32, i32* %3, i64 %51
  %53 = zext i32 %.0 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 255, i32* %54, align 4
  br label %67

55:                                               ; preds = %34
  %56 = zext i32 %.01 to i64
  %57 = mul nuw nsw i64 %56, %5
  %58 = getelementptr inbounds i32, i32* %3, i64 %57
  %59 = zext i32 %.0 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %.01 to i64
  %63 = mul nuw nsw i64 %62, %5
  %64 = getelementptr inbounds i32, i32* %3, i64 %63
  %65 = zext i32 %.0 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %55, %42
  %.02 = phi i32 [ %49, %42 ], [ %61, %55 ]
  %68 = mul nsw i32 %.02, 7
  %69 = sdiv i32 %68, 16
  %70 = sdiv i32 %.02, 16
  %71 = mul nsw i32 %.02, 5
  %72 = sdiv i32 %71, 16
  %73 = mul nsw i32 %.02, 3
  %74 = sdiv i32 %73, 16
  %75 = zext i32 %.01 to i64
  %76 = mul nuw nsw i64 %75, %5
  %77 = getelementptr inbounds i32, i32* %3, i64 %76
  %78 = add nuw nsw i32 %.0, 1
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %69
  %83 = icmp sgt i32 %82, 255
  br i1 %83, label %84, label %91

84:                                               ; preds = %67
  %85 = zext i32 %.01 to i64
  %86 = mul nuw nsw i64 %85, %5
  %87 = getelementptr inbounds i32, i32* %3, i64 %86
  %88 = add nuw nsw i32 %.0, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 255, i32* %90, align 4
  br label %108

91:                                               ; preds = %67
  %92 = icmp slt i32 %82, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %91
  %94 = zext i32 %.01 to i64
  %95 = mul nuw nsw i64 %94, %5
  %96 = getelementptr inbounds i32, i32* %3, i64 %95
  %97 = add nuw nsw i32 %.0, 1
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 0, i32* %99, align 4
  br label %107

100:                                              ; preds = %91
  %101 = zext i32 %.01 to i64
  %102 = mul nuw nsw i64 %101, %5
  %103 = getelementptr inbounds i32, i32* %3, i64 %102
  %104 = add nuw nsw i32 %.0, 1
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %82, i32* %106, align 4
  br label %107

107:                                              ; preds = %100, %93
  br label %108

108:                                              ; preds = %107, %84
  %109 = add nuw nsw i32 %.01, 1
  %110 = zext i32 %109 to i64
  %111 = mul nuw nsw i64 %110, %5
  %112 = getelementptr inbounds i32, i32* %3, i64 %111
  %113 = add nuw nsw i32 %.0, 1
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %70
  %118 = icmp sgt i32 %117, 255
  br i1 %118, label %119, label %127

119:                                              ; preds = %108
  %120 = add nuw nsw i32 %.01, 1
  %121 = zext i32 %120 to i64
  %122 = mul nuw nsw i64 %121, %5
  %123 = getelementptr inbounds i32, i32* %3, i64 %122
  %124 = add nuw nsw i32 %.0, 1
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 255, i32* %126, align 4
  br label %146

127:                                              ; preds = %108
  %128 = icmp slt i32 %117, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %127
  %130 = add nuw nsw i32 %.01, 1
  %131 = zext i32 %130 to i64
  %132 = mul nuw nsw i64 %131, %5
  %133 = getelementptr inbounds i32, i32* %3, i64 %132
  %134 = add nuw nsw i32 %.0, 1
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 0, i32* %136, align 4
  br label %145

137:                                              ; preds = %127
  %138 = add nuw nsw i32 %.01, 1
  %139 = zext i32 %138 to i64
  %140 = mul nuw nsw i64 %139, %5
  %141 = getelementptr inbounds i32, i32* %3, i64 %140
  %142 = add nuw nsw i32 %.0, 1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %117, i32* %144, align 4
  br label %145

145:                                              ; preds = %137, %129
  br label %146

146:                                              ; preds = %145, %119
  %147 = add nuw nsw i32 %.01, 1
  %148 = zext i32 %147 to i64
  %149 = mul nuw nsw i64 %148, %5
  %150 = getelementptr inbounds i32, i32* %3, i64 %149
  %151 = zext i32 %.0 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %72
  %155 = icmp sgt i32 %154, 255
  br i1 %155, label %156, label %163

156:                                              ; preds = %146
  %157 = add nuw nsw i32 %.01, 1
  %158 = zext i32 %157 to i64
  %159 = mul nuw nsw i64 %158, %5
  %160 = getelementptr inbounds i32, i32* %3, i64 %159
  %161 = zext i32 %.0 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32 255, i32* %162, align 4
  br label %180

163:                                              ; preds = %146
  %164 = icmp slt i32 %154, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %163
  %166 = add nuw nsw i32 %.01, 1
  %167 = zext i32 %166 to i64
  %168 = mul nuw nsw i64 %167, %5
  %169 = getelementptr inbounds i32, i32* %3, i64 %168
  %170 = zext i32 %.0 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 0, i32* %171, align 4
  br label %179

172:                                              ; preds = %163
  %173 = add nuw nsw i32 %.01, 1
  %174 = zext i32 %173 to i64
  %175 = mul nuw nsw i64 %174, %5
  %176 = getelementptr inbounds i32, i32* %3, i64 %175
  %177 = zext i32 %.0 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32 %154, i32* %178, align 4
  br label %179

179:                                              ; preds = %172, %165
  br label %180

180:                                              ; preds = %179, %156
  %181 = add nuw nsw i32 %.01, 1
  %182 = zext i32 %181 to i64
  %183 = mul nuw nsw i64 %182, %5
  %184 = getelementptr inbounds i32, i32* %3, i64 %183
  %185 = add nsw i32 %.0, -1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %74
  %190 = icmp sgt i32 %189, 255
  br i1 %190, label %191, label %199

191:                                              ; preds = %180
  %192 = add nuw nsw i32 %.01, 1
  %193 = zext i32 %192 to i64
  %194 = mul nuw nsw i64 %193, %5
  %195 = getelementptr inbounds i32, i32* %3, i64 %194
  %196 = add nsw i32 %.0, -1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 255, i32* %198, align 4
  br label %218

199:                                              ; preds = %180
  %200 = icmp slt i32 %189, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %199
  %202 = add nuw nsw i32 %.01, 1
  %203 = zext i32 %202 to i64
  %204 = mul nuw nsw i64 %203, %5
  %205 = getelementptr inbounds i32, i32* %3, i64 %204
  %206 = add nsw i32 %.0, -1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 0, i32* %208, align 4
  br label %217

209:                                              ; preds = %199
  %210 = add nuw nsw i32 %.01, 1
  %211 = zext i32 %210 to i64
  %212 = mul nuw nsw i64 %211, %5
  %213 = getelementptr inbounds i32, i32* %3, i64 %212
  %214 = add nsw i32 %.0, -1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %189, i32* %216, align 4
  br label %217

217:                                              ; preds = %209, %201
  br label %218

218:                                              ; preds = %217, %191
  br label %219

219:                                              ; preds = %218
  %220 = add nuw nsw i32 %.0, 1
  br label %31, !llvm.loop !7

221:                                              ; preds = %31
  br label %222

222:                                              ; preds = %221
  %223 = add nuw nsw i32 %.01, 1
  br label %27, !llvm.loop !8

224:                                              ; preds = %27
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
