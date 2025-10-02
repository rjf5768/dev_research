; ModuleID = './crc32.le.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/HashRecognize/crc32.le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.sample = internal constant [8 x i32] [i32 0, i32 1, i32 11, i32 16, i32 129, i32 142, i32 196, i32 255], align 16
@CRCTable = internal global [256 x i32] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %16, %0
  %.01 = phi i32 [ 0, %0 ], [ %.1, %16 ]
  %.0 = phi i64 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp ult i64 %.0, 8
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %.0
  %5 = load i32, i32* %4, align 4
  %6 = sub i64 7, %.0
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @crc_table(i32 noundef %5, i32 noundef %8)
  %10 = sub i64 7, %.0
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @crc_loop(i32 noundef %5, i32 noundef %12)
  %.not = icmp eq i32 %9, %13
  br i1 %.not, label %15, label %14

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %3
  %.1 = phi i32 [ 1, %14 ], [ %.01, %3 ]
  br label %16

16:                                               ; preds = %15
  %17 = add i64 %.0, 1
  br label %1, !llvm.loop !4

18:                                               ; preds = %1
  ret i32 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @crc_table(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @CRCTable, i64 0, i64 255), align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @crc_init()
  br label %6

6:                                                ; preds = %5, %2
  br label %7

7:                                                ; preds = %10, %6
  %.01 = phi i32 [ %0, %6 ], [ %19, %10 ]
  %.0 = phi i64 [ 0, %6 ], [ %20, %10 ]
  %8 = icmp ult i64 %.0, 4
  br i1 %8, label %9, label %21

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = lshr i32 %.01, 8
  %.0.tr = trunc i64 %.0 to i32
  %12 = shl i32 %.0.tr, 3
  %13 = lshr i32 %1, %12
  %14 = xor i32 %.01, %13
  %15 = and i32 %14, 255
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* @CRCTable, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %11, %18
  %20 = add i64 %.0, 1
  br label %7, !llvm.loop !6

21:                                               ; preds = %7
  ret i32 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal i32 @crc_loop(i32 noundef %0, i32 noundef %1) #1 {
  br label %3

3:                                                ; preds = %14, %2
  %.02 = phi i32 [ %0, %2 ], [ %13, %14 ]
  %.01 = phi i32 [ %1, %2 ], [ %15, %14 ]
  %.0 = phi i64 [ 0, %2 ], [ %16, %14 ]
  %4 = icmp ult i64 %.0, 32
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = xor i32 %.02, %.01
  %7 = lshr i32 %.02, 1
  %8 = and i32 %6, 1
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %11, label %9

9:                                                ; preds = %5
  %10 = xor i32 %7, 33800
  br label %12

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ %7, %11 ]
  br label %14

14:                                               ; preds = %12
  %15 = lshr i32 %.01, 1
  %16 = add i64 %.0, 1
  br label %3, !llvm.loop !7

17:                                               ; preds = %3
  ret i32 %.02
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @crc_init() #0 {
  br label %1

1:                                                ; preds = %19, %0
  %.01 = phi i64 [ 128, %0 ], [ %20, %19 ]
  %.0 = phi i32 [ 1, %0 ], [ %6, %19 ]
  %.not = icmp eq i64 %.01, 0
  br i1 %.not, label %21, label %2

2:                                                ; preds = %1
  %3 = lshr i32 %.0, 1
  %4 = and i32 %.0, 1
  %.not3 = icmp eq i32 %4, 0
  %5 = select i1 %.not3, i32 0, i32 33800
  %6 = xor i32 %3, %5
  br label %7

7:                                                ; preds = %15, %2
  %.02 = phi i64 [ 0, %2 ], [ %17, %15 ]
  %8 = icmp ult i64 %.02, 256
  br i1 %8, label %9, label %18

9:                                                ; preds = %7
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* @CRCTable, i64 0, i64 %.02
  %11 = load i32, i32* %10, align 8
  %12 = xor i32 %6, %11
  %13 = add i64 %.01, %.02
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* @CRCTable, i64 0, i64 %13
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %9
  %16 = shl nuw nsw i64 %.01, 1
  %17 = add i64 %.02, %16
  br label %7, !llvm.loop !8

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18
  %20 = lshr i64 %.01, 1
  br label %1, !llvm.loop !9

21:                                               ; preds = %1
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
