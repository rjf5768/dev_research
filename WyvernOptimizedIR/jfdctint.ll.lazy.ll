; ModuleID = './jfdctint.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jfdctint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @jpeg_fdct_islow(i32* noundef %0) #0 {
  br label %2

2:                                                ; preds = %99, %1
  %.01 = phi i32* [ %0, %1 ], [ %100, %99 ]
  %.0 = phi i32 [ 7, %1 ], [ %101, %99 ]
  %3 = icmp sgt i32 %.0, -1
  br i1 %3, label %4, label %102

4:                                                ; preds = %2
  %5 = load i32, i32* %.01, align 4
  %6 = getelementptr inbounds i32, i32* %.01, i64 7
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %5, %7
  %9 = sext i32 %8 to i64
  %10 = sub nsw i32 %5, %7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %.01, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %.01, i64 6
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %13, %15
  %17 = sext i32 %16 to i64
  %18 = sub nsw i32 %13, %15
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %.01, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %.01, i64 5
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = sub nsw i32 %21, %23
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %.01, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %.01, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %29, %31
  %33 = sext i32 %32 to i64
  %34 = sub nsw i32 %29, %31
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %9, %33
  %37 = sub nsw i64 %9, %33
  %38 = add nsw i64 %17, %25
  %39 = sub nsw i64 %17, %25
  %40 = add nsw i64 %36, %38
  %.tr = trunc i64 %40 to i32
  %41 = shl i32 %.tr, 2
  store i32 %41, i32* %.01, align 4
  %42 = sub nsw i64 %36, %38
  %.tr3 = trunc i64 %42 to i32
  %43 = shl i32 %.tr3, 2
  %44 = getelementptr inbounds i32, i32* %.01, i64 4
  store i32 %43, i32* %44, align 4
  %45 = add nsw i64 %39, %37
  %46 = mul nsw i64 %45, 4433
  %47 = mul nsw i64 %37, 6270
  %48 = add nsw i64 %46, %47
  %49 = add nsw i64 %48, 1024
  %50 = lshr i64 %49, 11
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds i32, i32* %.01, i64 2
  store i32 %51, i32* %52, align 4
  %53 = mul nsw i64 %39, -15137
  %54 = add nsw i64 %46, %53
  %55 = add nsw i64 %54, 1024
  %56 = lshr i64 %55, 11
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds i32, i32* %.01, i64 6
  store i32 %57, i32* %58, align 4
  %59 = add nsw i64 %35, %11
  %60 = add nsw i64 %27, %19
  %61 = add nsw i64 %35, %19
  %62 = add nsw i64 %27, %11
  %63 = add nsw i64 %61, %62
  %64 = mul nsw i64 %63, 9633
  %65 = mul nsw i64 %35, 2446
  %66 = mul nsw i64 %27, 16819
  %67 = mul nsw i64 %19, 25172
  %68 = mul nsw i64 %11, 12299
  %69 = mul nsw i64 %59, -7373
  %70 = mul nsw i64 %60, -20995
  %71 = mul nsw i64 %61, -16069
  %72 = mul nsw i64 %62, -3196
  %73 = add nsw i64 %71, %64
  %74 = add nsw i64 %72, %64
  %75 = add nsw i64 %65, %69
  %76 = add nsw i64 %75, %73
  %77 = add nsw i64 %76, 1024
  %78 = lshr i64 %77, 11
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds i32, i32* %.01, i64 7
  store i32 %79, i32* %80, align 4
  %81 = add nsw i64 %66, %70
  %82 = add nsw i64 %81, %74
  %83 = add nsw i64 %82, 1024
  %84 = lshr i64 %83, 11
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds i32, i32* %.01, i64 5
  store i32 %85, i32* %86, align 4
  %87 = add nsw i64 %67, %70
  %88 = add nsw i64 %87, %73
  %89 = add nsw i64 %88, 1024
  %90 = lshr i64 %89, 11
  %91 = trunc i64 %90 to i32
  %92 = getelementptr inbounds i32, i32* %.01, i64 3
  store i32 %91, i32* %92, align 4
  %93 = add nsw i64 %68, %69
  %94 = add nsw i64 %93, %74
  %95 = add nsw i64 %94, 1024
  %96 = lshr i64 %95, 11
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds i32, i32* %.01, i64 1
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %4
  %100 = getelementptr inbounds i32, i32* %.01, i64 8
  %101 = add nsw i32 %.0, -1
  br label %2, !llvm.loop !4

102:                                              ; preds = %2
  br label %103

103:                                              ; preds = %204, %102
  %.12 = phi i32* [ %0, %102 ], [ %205, %204 ]
  %.1 = phi i32 [ 7, %102 ], [ %206, %204 ]
  %104 = icmp sgt i32 %.1, -1
  br i1 %104, label %105, label %207

105:                                              ; preds = %103
  %106 = load i32, i32* %.12, align 4
  %107 = getelementptr inbounds i32, i32* %.12, i64 56
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %106, %108
  %110 = sext i32 %109 to i64
  %111 = sub nsw i32 %106, %108
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %.12, i64 8
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds i32, i32* %.12, i64 48
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %114, %116
  %118 = sext i32 %117 to i64
  %119 = sub nsw i32 %114, %116
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %.12, i64 16
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds i32, i32* %.12, i64 40
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %122, %124
  %126 = sext i32 %125 to i64
  %127 = sub nsw i32 %122, %124
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %.12, i64 24
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds i32, i32* %.12, i64 32
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %130, %132
  %134 = sext i32 %133 to i64
  %135 = sub nsw i32 %130, %132
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %110, %134
  %138 = sub nsw i64 %110, %134
  %139 = add nsw i64 %118, %126
  %140 = sub nsw i64 %118, %126
  %141 = add nsw i64 %137, %139
  %142 = add nsw i64 %141, 2
  %143 = lshr i64 %142, 2
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %.12, align 4
  %145 = sub nsw i64 %137, %139
  %146 = add nsw i64 %145, 2
  %147 = lshr i64 %146, 2
  %148 = trunc i64 %147 to i32
  %149 = getelementptr inbounds i32, i32* %.12, i64 32
  store i32 %148, i32* %149, align 4
  %150 = add nsw i64 %140, %138
  %151 = mul nsw i64 %150, 4433
  %152 = mul nsw i64 %138, 6270
  %153 = add nsw i64 %151, %152
  %154 = add nsw i64 %153, 16384
  %155 = lshr i64 %154, 15
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds i32, i32* %.12, i64 16
  store i32 %156, i32* %157, align 4
  %158 = mul nsw i64 %140, -15137
  %159 = add nsw i64 %151, %158
  %160 = add nsw i64 %159, 16384
  %161 = lshr i64 %160, 15
  %162 = trunc i64 %161 to i32
  %163 = getelementptr inbounds i32, i32* %.12, i64 48
  store i32 %162, i32* %163, align 4
  %164 = add nsw i64 %136, %112
  %165 = add nsw i64 %128, %120
  %166 = add nsw i64 %136, %120
  %167 = add nsw i64 %128, %112
  %168 = add nsw i64 %166, %167
  %169 = mul nsw i64 %168, 9633
  %170 = mul nsw i64 %136, 2446
  %171 = mul nsw i64 %128, 16819
  %172 = mul nsw i64 %120, 25172
  %173 = mul nsw i64 %112, 12299
  %174 = mul nsw i64 %164, -7373
  %175 = mul nsw i64 %165, -20995
  %176 = mul nsw i64 %166, -16069
  %177 = mul nsw i64 %167, -3196
  %178 = add nsw i64 %176, %169
  %179 = add nsw i64 %177, %169
  %180 = add nsw i64 %170, %174
  %181 = add nsw i64 %180, %178
  %182 = add nsw i64 %181, 16384
  %183 = lshr i64 %182, 15
  %184 = trunc i64 %183 to i32
  %185 = getelementptr inbounds i32, i32* %.12, i64 56
  store i32 %184, i32* %185, align 4
  %186 = add nsw i64 %171, %175
  %187 = add nsw i64 %186, %179
  %188 = add nsw i64 %187, 16384
  %189 = lshr i64 %188, 15
  %190 = trunc i64 %189 to i32
  %191 = getelementptr inbounds i32, i32* %.12, i64 40
  store i32 %190, i32* %191, align 4
  %192 = add nsw i64 %172, %175
  %193 = add nsw i64 %192, %178
  %194 = add nsw i64 %193, 16384
  %195 = lshr i64 %194, 15
  %196 = trunc i64 %195 to i32
  %197 = getelementptr inbounds i32, i32* %.12, i64 24
  store i32 %196, i32* %197, align 4
  %198 = add nsw i64 %173, %174
  %199 = add nsw i64 %198, %179
  %200 = add nsw i64 %199, 16384
  %201 = lshr i64 %200, 15
  %202 = trunc i64 %201 to i32
  %203 = getelementptr inbounds i32, i32* %.12, i64 8
  store i32 %202, i32* %203, align 4
  br label %204

204:                                              ; preds = %105
  %205 = getelementptr inbounds i32, i32* %.12, i64 1
  %206 = add nsw i32 %.1, -1
  br label %103, !llvm.loop !6

207:                                              ; preds = %103
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
