; ModuleID = './BraIA64.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/BraIA64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kBranchTable = internal constant [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\06\06\00\00\07\07\04\04\00\00\04\04\00\00", align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i64 @IA64_Convert(i8* nocapture noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ult i64 %1, 16
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %107

7:                                                ; preds = %4
  %8 = add i64 %1, -16
  br label %9

9:                                                ; preds = %104, %7
  %.03 = phi i64 [ 0, %7 ], [ %105, %104 ]
  %.not = icmp ugt i64 %.03, %8
  br i1 %.not, label %106, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds i8, i8* %0, i64 %.03
  %12 = load i8, i8* %11, align 1
  %13 = and i8 %12, 31
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* @kBranchTable, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %100, %10
  %.06 = phi i32 [ 0, %10 ], [ %101, %100 ]
  %.05 = phi i32 [ 5, %10 ], [ %102, %100 ]
  %19 = icmp ult i32 %.06, 3
  br i1 %19, label %20, label %103

20:                                               ; preds = %18
  %21 = shl i32 1, %.06
  %22 = and i32 %21, %17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %100

25:                                               ; preds = %20
  %26 = lshr i32 %.05, 3
  %27 = and i32 %.05, 7
  br label %28

28:                                               ; preds = %31, %25
  %.04 = phi i64 [ 0, %25 ], [ %42, %31 ]
  %.02 = phi i32 [ 0, %25 ], [ %43, %31 ]
  %29 = icmp ult i32 %.02, 6
  br i1 %29, label %30, label %44

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = zext i32 %.02 to i64
  %33 = add i64 %.03, %32
  %34 = zext i32 %26 to i64
  %35 = add i64 %33, %34
  %36 = getelementptr inbounds i8, i8* %0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  %39 = shl nsw i32 %.02, 3
  %40 = zext i32 %39 to i64
  %41 = shl i64 %38, %40
  %42 = add i64 %.04, %41
  %43 = add nuw nsw i32 %.02, 1
  br label %28, !llvm.loop !4

44:                                               ; preds = %28
  %45 = zext i32 %27 to i64
  %46 = lshr i64 %.04, %45
  %47 = and i64 %46, 2061584302080
  %48 = icmp eq i64 %47, 687194767360
  br i1 %48, label %49, label %99

49:                                               ; preds = %44
  %50 = and i64 %46, 3584
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %99

52:                                               ; preds = %49
  %53 = lshr i64 %46, 13
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 1048575
  %sh.diff = lshr i64 %46, 16
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %56 = and i32 %tr.sh.diff, 1048576
  %57 = or i32 %55, %56
  %58 = shl nuw nsw i32 %57, 4
  %.not7 = icmp eq i32 %3, 0
  br i1 %.not7, label %63, label %59

59:                                               ; preds = %52
  %60 = trunc i64 %.03 to i32
  %61 = add i32 %60, %2
  %62 = add i32 %61, %58
  br label %67

63:                                               ; preds = %52
  %64 = trunc i64 %.03 to i32
  %65 = add i32 %64, %2
  %66 = sub i32 %58, %65
  br label %67

67:                                               ; preds = %63, %59
  %.01 = phi i32 [ %62, %59 ], [ %66, %63 ]
  %68 = lshr i32 %.01, 4
  %69 = and i64 %46, -77309403137
  %70 = and i32 %68, 1048575
  %71 = zext i32 %70 to i64
  %72 = shl nuw nsw i64 %71, 13
  %73 = or i64 %69, %72
  %74 = and i32 %68, 1048576
  %75 = zext i32 %74 to i64
  %76 = shl nuw nsw i64 %75, 16
  %77 = or i64 %73, %76
  %notmask = shl nsw i32 -1, %27
  %78 = xor i32 %notmask, -1
  %79 = zext i32 %78 to i64
  %80 = and i64 %.04, %79
  %81 = zext i32 %27 to i64
  %82 = shl i64 %77, %81
  %83 = or i64 %80, %82
  br label %84

84:                                               ; preds = %96, %67
  %.1 = phi i32 [ 0, %67 ], [ %97, %96 ]
  %85 = icmp ult i32 %.1, 6
  br i1 %85, label %86, label %98

86:                                               ; preds = %84
  %87 = shl nsw i32 %.1, 3
  %88 = zext i32 %87 to i64
  %89 = lshr i64 %83, %88
  %90 = trunc i64 %89 to i8
  %91 = zext i32 %.1 to i64
  %92 = add i64 %.03, %91
  %93 = zext i32 %26 to i64
  %94 = add i64 %92, %93
  %95 = getelementptr inbounds i8, i8* %0, i64 %94
  store i8 %90, i8* %95, align 1
  br label %96

96:                                               ; preds = %86
  %97 = add nuw nsw i32 %.1, 1
  br label %84, !llvm.loop !6

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %49, %44
  br label %100

100:                                              ; preds = %99, %24
  %101 = add nuw nsw i32 %.06, 1
  %102 = add i32 %.05, 41
  br label %18, !llvm.loop !7

103:                                              ; preds = %18
  br label %104

104:                                              ; preds = %103
  %105 = add i64 %.03, 16
  br label %9, !llvm.loop !8

106:                                              ; preds = %9
  br label %107

107:                                              ; preds = %106, %6
  %.0 = phi i64 [ 0, %6 ], [ %.03, %106 ]
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
