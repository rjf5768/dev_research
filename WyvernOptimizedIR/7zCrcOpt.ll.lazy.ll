; ModuleID = './7zCrcOpt.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zCrcOpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @CrcUpdateT4(i32 noundef %0, i8* noundef %1, i64 noundef %2, i32* nocapture noundef readonly %3) #0 {
  br label %5

5:                                                ; preds = %13, %4
  %.04 = phi i64 [ %2, %4 ], [ %22, %13 ]
  %.01 = phi i8* [ %1, %4 ], [ %23, %13 ]
  %.0 = phi i32 [ %0, %4 ], [ %21, %13 ]
  %.not = icmp eq i64 %.04, 0
  br i1 %.not, label %10, label %6

6:                                                ; preds = %5
  %7 = ptrtoint i8* %.01 to i64
  %8 = and i64 %7, 3
  %9 = icmp ne i64 %8, 0
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i1 [ false, %5 ], [ %9, %6 ]
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12
  %.0.masked = and i32 %.0, 255
  %14 = load i8, i8* %.01, align 1
  %15 = zext i8 %14 to i32
  %16 = xor i32 %.0.masked, %15
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %3, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = lshr i32 %.0, 8
  %21 = xor i32 %19, %20
  %22 = add i64 %.04, -1
  %23 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %5, !llvm.loop !4

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %31, %24
  %.15 = phi i64 [ %.04, %24 ], [ %56, %31 ]
  %.12 = phi i8* [ %.01, %24 ], [ %57, %31 ]
  %.1 = phi i32 [ %.0, %24 ], [ %55, %31 ]
  %26 = icmp ugt i64 %.15, 3
  br i1 %26, label %27, label %58

27:                                               ; preds = %25
  %28 = bitcast i8* %.12 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %.1, %29
  br label %31

31:                                               ; preds = %27
  %32 = and i32 %30, 255
  %33 = or i32 %32, 768
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %3, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = lshr i32 %30, 8
  %38 = and i32 %37, 255
  %39 = or i32 %38, 512
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %3, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %36, %42
  %44 = lshr i32 %30, 16
  %45 = and i32 %44, 255
  %46 = or i32 %45, 256
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %3, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %43, %49
  %51 = lshr i32 %30, 24
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %3, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %50, %54
  %56 = add i64 %.15, -4
  %57 = getelementptr inbounds i8, i8* %.12, i64 4
  br label %25, !llvm.loop !6

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %61, %58
  %.26 = phi i64 [ %.15, %58 ], [ %70, %61 ]
  %.23 = phi i8* [ %.12, %58 ], [ %71, %61 ]
  %.2 = phi i32 [ %.1, %58 ], [ %69, %61 ]
  %.not7 = icmp eq i64 %.26, 0
  br i1 %.not7, label %72, label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %.2.masked = and i32 %.2, 255
  %62 = load i8, i8* %.23, align 1
  %63 = zext i8 %62 to i32
  %64 = xor i32 %.2.masked, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %3, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = lshr i32 %.2, 8
  %69 = xor i32 %67, %68
  %70 = add i64 %.26, -1
  %71 = getelementptr inbounds i8, i8* %.23, i64 1
  br label %59, !llvm.loop !7

72:                                               ; preds = %59
  ret i32 %.2
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @CrcUpdateT8(i32 noundef %0, i8* noundef readonly %1, i64 noundef %2, i32* nocapture noundef readonly %3) #0 {
  %5 = call i32 @CrcUpdateT4(i32 noundef %0, i8* noundef %1, i64 noundef %2, i32* noundef %3)
  ret i32 %5
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
