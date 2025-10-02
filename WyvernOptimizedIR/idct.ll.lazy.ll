; ModuleID = './idct.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/idct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iclip = internal global [1024 x i16] zeroinitializer, align 16
@iclp = internal global i16* null, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @Fast_IDCT(i16* noundef %0) #0 {
  br label %2

2:                                                ; preds = %8, %1
  %.0 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %3 = icmp ult i32 %.0, 8
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = shl nsw i32 %.0, 3
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i16, i16* %0, i64 %6
  call void @idctrow(i16* noundef %7)
  br label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %16, %10
  %.1 = phi i32 [ 0, %10 ], [ %17, %16 ]
  %12 = icmp ult i32 %.1, 8
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = zext i32 %.1 to i64
  %15 = getelementptr inbounds i16, i16* %0, i64 %14
  call void @idctcol(i16* noundef %15)
  br label %16

16:                                               ; preds = %13
  %17 = add nuw nsw i32 %.1, 1
  br label %11, !llvm.loop !6

18:                                               ; preds = %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @idctrow(i16* noundef %0) #1 {
  %2 = getelementptr inbounds i16, i16* %0, i64 4
  %3 = load i16, i16* %2, align 2
  %4 = sext i16 %3 to i32
  %5 = shl nsw i32 %4, 11
  %6 = getelementptr inbounds i16, i16* %0, i64 6
  %7 = load i16, i16* %6, align 2
  %8 = sext i16 %7 to i32
  %9 = or i32 %5, %8
  %10 = getelementptr inbounds i16, i16* %0, i64 2
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i32
  %13 = or i32 %9, %12
  %14 = getelementptr inbounds i16, i16* %0, i64 1
  %15 = load i16, i16* %14, align 2
  %16 = sext i16 %15 to i32
  %17 = or i32 %13, %16
  %18 = getelementptr inbounds i16, i16* %0, i64 7
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  %21 = or i32 %17, %20
  %22 = getelementptr inbounds i16, i16* %0, i64 5
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  %25 = or i32 %21, %24
  %26 = getelementptr inbounds i16, i16* %0, i64 3
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = or i32 %25, %28
  %.not = icmp eq i32 %29, 0
  br i1 %.not, label %30, label %40

30:                                               ; preds = %1
  %31 = load i16, i16* %0, align 2
  %32 = shl i16 %31, 3
  %33 = getelementptr inbounds i16, i16* %0, i64 7
  store i16 %32, i16* %33, align 2
  %34 = getelementptr inbounds i16, i16* %0, i64 6
  store i16 %32, i16* %34, align 2
  %35 = getelementptr inbounds i16, i16* %0, i64 5
  store i16 %32, i16* %35, align 2
  %36 = getelementptr inbounds i16, i16* %0, i64 4
  store i16 %32, i16* %36, align 2
  %37 = getelementptr inbounds i16, i16* %0, i64 3
  store i16 %32, i16* %37, align 2
  %38 = getelementptr inbounds i16, i16* %0, i64 2
  store i16 %32, i16* %38, align 2
  %39 = getelementptr inbounds i16, i16* %0, i64 1
  store i16 %32, i16* %39, align 2
  store i16 %32, i16* %0, align 2
  br label %108

40:                                               ; preds = %1
  %41 = load i16, i16* %0, align 2
  %42 = sext i16 %41 to i32
  %43 = shl nsw i32 %42, 11
  %44 = or i32 %43, 128
  %45 = add nsw i32 %16, %20
  %46 = mul nsw i32 %45, 565
  %47 = mul nsw i32 %16, 2276
  %48 = add nsw i32 %46, %47
  %.neg = mul nsw i32 %20, -3406
  %49 = add nsw i32 %.neg, %46
  %50 = add nsw i32 %24, %28
  %51 = mul nsw i32 %50, 2408
  %.neg1 = mul nsw i32 %24, -799
  %52 = add nsw i32 %.neg1, %51
  %.neg2 = mul nsw i32 %28, -4017
  %53 = add nsw i32 %.neg2, %51
  %54 = add nsw i32 %44, %5
  %55 = sub nsw i32 %44, %5
  %56 = add nsw i32 %12, %8
  %57 = mul nsw i32 %56, 1108
  %.neg3 = mul nsw i32 %8, -3784
  %58 = add nsw i32 %.neg3, %57
  %59 = mul nsw i32 %12, 1568
  %60 = add nsw i32 %57, %59
  %61 = add nsw i32 %48, %52
  %62 = sub nsw i32 %48, %52
  %63 = add nsw i32 %49, %53
  %64 = sub nsw i32 %49, %53
  %65 = add nsw i32 %54, %60
  %66 = sub nsw i32 %54, %60
  %67 = add nsw i32 %55, %58
  %68 = sub nsw i32 %55, %58
  %69 = add nsw i32 %62, %64
  %70 = mul nsw i32 %69, 181
  %71 = add nsw i32 %70, 128
  %72 = ashr i32 %71, 8
  %73 = sub nsw i32 %62, %64
  %74 = mul nsw i32 %73, 181
  %75 = add nsw i32 %74, 128
  %76 = ashr i32 %75, 8
  %77 = add nsw i32 %65, %61
  %78 = lshr i32 %77, 8
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %0, align 2
  %80 = add nsw i32 %67, %72
  %81 = lshr i32 %80, 8
  %82 = trunc i32 %81 to i16
  %83 = getelementptr inbounds i16, i16* %0, i64 1
  store i16 %82, i16* %83, align 2
  %84 = add nsw i32 %68, %76
  %85 = lshr i32 %84, 8
  %86 = trunc i32 %85 to i16
  %87 = getelementptr inbounds i16, i16* %0, i64 2
  store i16 %86, i16* %87, align 2
  %88 = add nsw i32 %66, %63
  %89 = lshr i32 %88, 8
  %90 = trunc i32 %89 to i16
  %91 = getelementptr inbounds i16, i16* %0, i64 3
  store i16 %90, i16* %91, align 2
  %92 = sub nsw i32 %66, %63
  %93 = lshr i32 %92, 8
  %94 = trunc i32 %93 to i16
  %95 = getelementptr inbounds i16, i16* %0, i64 4
  store i16 %94, i16* %95, align 2
  %96 = sub nsw i32 %68, %76
  %97 = lshr i32 %96, 8
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds i16, i16* %0, i64 5
  store i16 %98, i16* %99, align 2
  %100 = sub nsw i32 %67, %72
  %101 = lshr i32 %100, 8
  %102 = trunc i32 %101 to i16
  %103 = getelementptr inbounds i16, i16* %0, i64 6
  store i16 %102, i16* %103, align 2
  %104 = sub nsw i32 %65, %61
  %105 = lshr i32 %104, 8
  %106 = trunc i32 %105 to i16
  %107 = getelementptr inbounds i16, i16* %0, i64 7
  store i16 %106, i16* %107, align 2
  br label %108

108:                                              ; preds = %40, %30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @idctcol(i16* noundef %0) #1 {
  %2 = getelementptr inbounds i16, i16* %0, i64 32
  %3 = load i16, i16* %2, align 2
  %4 = sext i16 %3 to i32
  %5 = shl nsw i32 %4, 8
  %6 = getelementptr inbounds i16, i16* %0, i64 48
  %7 = load i16, i16* %6, align 2
  %8 = sext i16 %7 to i32
  %9 = or i32 %5, %8
  %10 = getelementptr inbounds i16, i16* %0, i64 16
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i32
  %13 = or i32 %9, %12
  %14 = getelementptr inbounds i16, i16* %0, i64 8
  %15 = load i16, i16* %14, align 2
  %16 = sext i16 %15 to i32
  %17 = or i32 %13, %16
  %18 = getelementptr inbounds i16, i16* %0, i64 56
  %19 = load i16, i16* %18, align 2
  %20 = sext i16 %19 to i32
  %21 = or i32 %17, %20
  %22 = getelementptr inbounds i16, i16* %0, i64 40
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  %25 = or i32 %21, %24
  %26 = getelementptr inbounds i16, i16* %0, i64 24
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = or i32 %25, %28
  %.not = icmp eq i32 %29, 0
  br i1 %.not, label %30, label %46

30:                                               ; preds = %1
  %31 = load i16*, i16** @iclp, align 8
  %32 = load i16, i16* %0, align 2
  %33 = sext i16 %32 to i32
  %34 = add nsw i32 %33, 32
  %35 = ashr i32 %34, 6
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %31, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = getelementptr inbounds i16, i16* %0, i64 56
  store i16 %38, i16* %39, align 2
  %40 = getelementptr inbounds i16, i16* %0, i64 48
  store i16 %38, i16* %40, align 2
  %41 = getelementptr inbounds i16, i16* %0, i64 40
  store i16 %38, i16* %41, align 2
  %42 = getelementptr inbounds i16, i16* %0, i64 32
  store i16 %38, i16* %42, align 2
  %43 = getelementptr inbounds i16, i16* %0, i64 24
  store i16 %38, i16* %43, align 2
  %44 = getelementptr inbounds i16, i16* %0, i64 16
  store i16 %38, i16* %44, align 2
  %45 = getelementptr inbounds i16, i16* %0, i64 8
  store i16 %38, i16* %45, align 2
  store i16 %38, i16* %0, align 2
  br label %147

46:                                               ; preds = %1
  %47 = load i16, i16* %0, align 2
  %48 = sext i16 %47 to i32
  %49 = shl nsw i32 %48, 8
  %50 = add nsw i32 %49, 8192
  %51 = add nsw i32 %16, %20
  %52 = mul nsw i32 %51, 565
  %53 = add nsw i32 %52, 4
  %54 = mul nsw i32 %16, 2276
  %55 = add nsw i32 %53, %54
  %56 = ashr i32 %55, 3
  %.neg = mul nsw i32 %20, -3406
  %57 = add nsw i32 %.neg, %53
  %58 = ashr i32 %57, 3
  %59 = add nsw i32 %24, %28
  %60 = mul nsw i32 %59, 2408
  %61 = or i32 %60, 4
  %.neg1 = mul nsw i32 %24, -799
  %62 = add nsw i32 %.neg1, %61
  %63 = ashr i32 %62, 3
  %.neg2 = mul nsw i32 %28, -4017
  %64 = add nsw i32 %.neg2, %61
  %65 = ashr i32 %64, 3
  %66 = add nsw i32 %50, %5
  %67 = sub nsw i32 %50, %5
  %68 = add nsw i32 %12, %8
  %69 = mul nsw i32 %68, 1108
  %70 = add nsw i32 %69, 4
  %.neg3 = mul nsw i32 %8, -3784
  %71 = add nsw i32 %.neg3, %70
  %72 = ashr i32 %71, 3
  %73 = mul nsw i32 %12, 1568
  %74 = add nsw i32 %70, %73
  %75 = ashr i32 %74, 3
  %76 = add nsw i32 %56, %63
  %77 = sub nsw i32 %56, %63
  %78 = add nsw i32 %58, %65
  %79 = sub nsw i32 %58, %65
  %80 = add nsw i32 %66, %75
  %81 = sub nsw i32 %66, %75
  %82 = add nsw i32 %67, %72
  %83 = sub nsw i32 %67, %72
  %84 = add nsw i32 %77, %79
  %85 = mul nsw i32 %84, 181
  %86 = add nsw i32 %85, 128
  %87 = ashr i32 %86, 8
  %88 = sub nsw i32 %77, %79
  %89 = mul nsw i32 %88, 181
  %90 = add nsw i32 %89, 128
  %91 = ashr i32 %90, 8
  %92 = load i16*, i16** @iclp, align 8
  %93 = add nsw i32 %80, %76
  %94 = ashr i32 %93, 14
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, i16* %92, i64 %95
  %97 = load i16, i16* %96, align 2
  store i16 %97, i16* %0, align 2
  %98 = load i16*, i16** @iclp, align 8
  %99 = add nsw i32 %82, %87
  %100 = ashr i32 %99, 14
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %98, i64 %101
  %103 = load i16, i16* %102, align 2
  %104 = getelementptr inbounds i16, i16* %0, i64 8
  store i16 %103, i16* %104, align 2
  %105 = load i16*, i16** @iclp, align 8
  %106 = add nsw i32 %83, %91
  %107 = ashr i32 %106, 14
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i16, i16* %105, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = getelementptr inbounds i16, i16* %0, i64 16
  store i16 %110, i16* %111, align 2
  %112 = load i16*, i16** @iclp, align 8
  %113 = add nsw i32 %81, %78
  %114 = ashr i32 %113, 14
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %112, i64 %115
  %117 = load i16, i16* %116, align 2
  %118 = getelementptr inbounds i16, i16* %0, i64 24
  store i16 %117, i16* %118, align 2
  %119 = load i16*, i16** @iclp, align 8
  %120 = sub nsw i32 %81, %78
  %121 = ashr i32 %120, 14
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i16, i16* %119, i64 %122
  %124 = load i16, i16* %123, align 2
  %125 = getelementptr inbounds i16, i16* %0, i64 32
  store i16 %124, i16* %125, align 2
  %126 = load i16*, i16** @iclp, align 8
  %127 = sub nsw i32 %83, %91
  %128 = ashr i32 %127, 14
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i16, i16* %126, i64 %129
  %131 = load i16, i16* %130, align 2
  %132 = getelementptr inbounds i16, i16* %0, i64 40
  store i16 %131, i16* %132, align 2
  %133 = load i16*, i16** @iclp, align 8
  %134 = sub nsw i32 %82, %87
  %135 = ashr i32 %134, 14
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i16, i16* %133, i64 %136
  %138 = load i16, i16* %137, align 2
  %139 = getelementptr inbounds i16, i16* %0, i64 48
  store i16 %138, i16* %139, align 2
  %140 = load i16*, i16** @iclp, align 8
  %141 = sub nsw i32 %80, %76
  %142 = ashr i32 %141, 14
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i16, i16* %140, i64 %143
  %145 = load i16, i16* %144, align 2
  %146 = getelementptr inbounds i16, i16* %0, i64 56
  store i16 %145, i16* %146, align 2
  br label %147

147:                                              ; preds = %46, %30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @Initialize_Fast_IDCT() #0 {
  store i16* getelementptr inbounds ([1024 x i16], [1024 x i16]* @iclip, i64 0, i64 512), i16** @iclp, align 8
  br label %1

1:                                                ; preds = %18, %0
  %.0 = phi i32 [ -512, %0 ], [ %19, %18 ]
  %2 = icmp slt i32 %.0, 512
  br i1 %2, label %3, label %20

3:                                                ; preds = %1
  %4 = icmp slt i32 %.0, -256
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %12

6:                                                ; preds = %3
  %7 = icmp sgt i32 %.0, 255
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %10

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %8
  %11 = phi i32 [ 255, %8 ], [ %.0, %9 ]
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i32 [ -256, %5 ], [ %11, %10 ]
  %14 = trunc i32 %13 to i16
  %15 = load i16*, i16** @iclp, align 8
  %16 = sext i32 %.0 to i64
  %17 = getelementptr inbounds i16, i16* %15, i64 %16
  store i16 %14, i16* %17, align 2
  br label %18

18:                                               ; preds = %12
  %19 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !7

20:                                               ; preds = %1
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
