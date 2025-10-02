; ModuleID = './jfdctfst.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jfdctfst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @jpeg_fdct_ifast(i32* noundef %0) #0 {
  br label %2

2:                                                ; preds = %76, %1
  %.01 = phi i32* [ %0, %1 ], [ %77, %76 ]
  %.0 = phi i32 [ 7, %1 ], [ %78, %76 ]
  %3 = icmp sgt i32 %.0, -1
  br i1 %3, label %4, label %79

4:                                                ; preds = %2
  %5 = load i32, i32* %.01, align 4
  %6 = getelementptr inbounds i32, i32* %.01, i64 7
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %5, %7
  %9 = sub nsw i32 %5, %7
  %10 = getelementptr inbounds i32, i32* %.01, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %.01, i64 6
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %11, %13
  %15 = sub nsw i32 %11, %13
  %16 = getelementptr inbounds i32, i32* %.01, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %.01, i64 5
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %17, %19
  %21 = sub nsw i32 %17, %19
  %22 = getelementptr inbounds i32, i32* %.01, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %.01, i64 4
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %23, %25
  %27 = sub nsw i32 %23, %25
  %28 = add nsw i32 %8, %26
  %29 = sub nsw i32 %8, %26
  %30 = add nsw i32 %14, %20
  %31 = sub nsw i32 %14, %20
  %32 = add nsw i32 %28, %30
  store i32 %32, i32* %.01, align 4
  %33 = sub nsw i32 %28, %30
  %34 = getelementptr inbounds i32, i32* %.01, i64 4
  store i32 %33, i32* %34, align 4
  %35 = add nsw i32 %31, %29
  %36 = sext i32 %35 to i64
  %37 = mul nsw i64 %36, 181
  %38 = lshr i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = add nsw i32 %29, %39
  %41 = getelementptr inbounds i32, i32* %.01, i64 2
  store i32 %40, i32* %41, align 4
  %42 = sub nsw i32 %29, %39
  %43 = getelementptr inbounds i32, i32* %.01, i64 6
  store i32 %42, i32* %43, align 4
  %44 = add nsw i32 %27, %21
  %45 = add nsw i32 %21, %15
  %46 = add nsw i32 %15, %9
  %47 = sub nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 98
  %50 = lshr i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = sext i32 %44 to i64
  %53 = mul nsw i64 %52, 139
  %54 = lshr i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = add nsw i32 %55, %51
  %57 = sext i32 %46 to i64
  %58 = mul nsw i64 %57, 334
  %59 = lshr i64 %58, 8
  %60 = trunc i64 %59 to i32
  %61 = add nsw i32 %60, %51
  %62 = sext i32 %45 to i64
  %63 = mul nsw i64 %62, 181
  %64 = lshr i64 %63, 8
  %65 = trunc i64 %64 to i32
  %66 = add nsw i32 %9, %65
  %67 = sub nsw i32 %9, %65
  %68 = add nsw i32 %67, %56
  %69 = getelementptr inbounds i32, i32* %.01, i64 5
  store i32 %68, i32* %69, align 4
  %70 = sub nsw i32 %67, %56
  %71 = getelementptr inbounds i32, i32* %.01, i64 3
  store i32 %70, i32* %71, align 4
  %72 = add nsw i32 %66, %61
  %73 = getelementptr inbounds i32, i32* %.01, i64 1
  store i32 %72, i32* %73, align 4
  %74 = sub nsw i32 %66, %61
  %75 = getelementptr inbounds i32, i32* %.01, i64 7
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %4
  %77 = getelementptr inbounds i32, i32* %.01, i64 8
  %78 = add nsw i32 %.0, -1
  br label %2, !llvm.loop !4

79:                                               ; preds = %2
  br label %80

80:                                               ; preds = %154, %79
  %.12 = phi i32* [ %0, %79 ], [ %155, %154 ]
  %.1 = phi i32 [ 7, %79 ], [ %156, %154 ]
  %81 = icmp sgt i32 %.1, -1
  br i1 %81, label %82, label %157

82:                                               ; preds = %80
  %83 = load i32, i32* %.12, align 4
  %84 = getelementptr inbounds i32, i32* %.12, i64 56
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %83, %85
  %87 = sub nsw i32 %83, %85
  %88 = getelementptr inbounds i32, i32* %.12, i64 8
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds i32, i32* %.12, i64 48
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %89, %91
  %93 = sub nsw i32 %89, %91
  %94 = getelementptr inbounds i32, i32* %.12, i64 16
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds i32, i32* %.12, i64 40
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %95, %97
  %99 = sub nsw i32 %95, %97
  %100 = getelementptr inbounds i32, i32* %.12, i64 24
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds i32, i32* %.12, i64 32
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %101, %103
  %105 = sub nsw i32 %101, %103
  %106 = add nsw i32 %86, %104
  %107 = sub nsw i32 %86, %104
  %108 = add nsw i32 %92, %98
  %109 = sub nsw i32 %92, %98
  %110 = add nsw i32 %106, %108
  store i32 %110, i32* %.12, align 4
  %111 = sub nsw i32 %106, %108
  %112 = getelementptr inbounds i32, i32* %.12, i64 32
  store i32 %111, i32* %112, align 4
  %113 = add nsw i32 %109, %107
  %114 = sext i32 %113 to i64
  %115 = mul nsw i64 %114, 181
  %116 = lshr i64 %115, 8
  %117 = trunc i64 %116 to i32
  %118 = add nsw i32 %107, %117
  %119 = getelementptr inbounds i32, i32* %.12, i64 16
  store i32 %118, i32* %119, align 4
  %120 = sub nsw i32 %107, %117
  %121 = getelementptr inbounds i32, i32* %.12, i64 48
  store i32 %120, i32* %121, align 4
  %122 = add nsw i32 %105, %99
  %123 = add nsw i32 %99, %93
  %124 = add nsw i32 %93, %87
  %125 = sub nsw i32 %122, %124
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %126, 98
  %128 = lshr i64 %127, 8
  %129 = trunc i64 %128 to i32
  %130 = sext i32 %122 to i64
  %131 = mul nsw i64 %130, 139
  %132 = lshr i64 %131, 8
  %133 = trunc i64 %132 to i32
  %134 = add nsw i32 %133, %129
  %135 = sext i32 %124 to i64
  %136 = mul nsw i64 %135, 334
  %137 = lshr i64 %136, 8
  %138 = trunc i64 %137 to i32
  %139 = add nsw i32 %138, %129
  %140 = sext i32 %123 to i64
  %141 = mul nsw i64 %140, 181
  %142 = lshr i64 %141, 8
  %143 = trunc i64 %142 to i32
  %144 = add nsw i32 %87, %143
  %145 = sub nsw i32 %87, %143
  %146 = add nsw i32 %145, %134
  %147 = getelementptr inbounds i32, i32* %.12, i64 40
  store i32 %146, i32* %147, align 4
  %148 = sub nsw i32 %145, %134
  %149 = getelementptr inbounds i32, i32* %.12, i64 24
  store i32 %148, i32* %149, align 4
  %150 = add nsw i32 %144, %139
  %151 = getelementptr inbounds i32, i32* %.12, i64 8
  store i32 %150, i32* %151, align 4
  %152 = sub nsw i32 %144, %139
  %153 = getelementptr inbounds i32, i32* %.12, i64 56
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %82
  %155 = getelementptr inbounds i32, i32* %.12, i64 1
  %156 = add nsw i32 %.1, -1
  br label %80, !llvm.loop !6

157:                                              ; preds = %80
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
