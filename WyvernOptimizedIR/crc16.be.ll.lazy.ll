; ModuleID = './crc16.be.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/HashRecognize/crc16.be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.sample = internal constant [8 x i32] [i32 0, i32 1, i32 11, i32 16, i32 129, i32 142, i32 196, i32 255], align 16
@CRCTable = internal global [256 x i16] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %22, %0
  %.01 = phi i32 [ 0, %0 ], [ %.1, %22 ]
  %.0 = phi i64 [ 0, %0 ], [ %23, %22 ]
  %2 = icmp ult i64 %.0, 8
  br i1 %2, label %3, label %24

3:                                                ; preds = %1
  %4 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %.0
  %5 = load i32, i32* %4, align 4
  %6 = trunc i32 %5 to i16
  %7 = sub i64 7, %.0
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = trunc i32 %9 to i16
  %11 = call zeroext i16 @crc_table(i16 noundef zeroext %6, i16 noundef zeroext %10)
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %.0
  %13 = load i32, i32* %12, align 4
  %14 = trunc i32 %13 to i16
  %15 = sub i64 7, %.0
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = trunc i32 %17 to i16
  %19 = call zeroext i16 @crc_loop(i16 noundef zeroext %14, i16 noundef zeroext %18)
  %.not = icmp eq i16 %11, %19
  br i1 %.not, label %21, label %20

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %3
  %.1 = phi i32 [ 1, %20 ], [ %.01, %3 ]
  br label %22

22:                                               ; preds = %21
  %23 = add i64 %.0, 1
  br label %1, !llvm.loop !4

24:                                               ; preds = %1
  ret i32 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal zeroext i16 @crc_table(i16 noundef zeroext %0, i16 noundef zeroext %1) #0 {
  %3 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @CRCTable, i64 0, i64 255), align 2
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @crc_init()
  br label %6

6:                                                ; preds = %5, %2
  br label %7

7:                                                ; preds = %10, %6
  %.01 = phi i16 [ %0, %6 ], [ %22, %10 ]
  %.0 = phi i64 [ 0, %6 ], [ %23, %10 ]
  %8 = icmp ult i64 %.0, 2
  br i1 %8, label %9, label %24

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = zext i16 %1 to i32
  %.0.tr = trunc i64 %.0 to i32
  %12 = shl i32 %.0.tr, 3
  %13 = shl i32 %11, %12
  %14 = zext i16 %.01 to i32
  %15 = xor i32 %13, %14
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = shl i16 %.01, 8
  %22 = xor i16 %21, %20
  %23 = add i64 %.0, 1
  br label %7, !llvm.loop !6

24:                                               ; preds = %7
  ret i16 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal zeroext i16 @crc_loop(i16 noundef zeroext %0, i16 noundef zeroext %1) #1 {
  br label %3

3:                                                ; preds = %13, %2
  %.02 = phi i16 [ %0, %2 ], [ %12, %13 ]
  %.01 = phi i16 [ %1, %2 ], [ %14, %13 ]
  %.0 = phi i64 [ 0, %2 ], [ %15, %13 ]
  %4 = icmp ult i64 %.0, 16
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = xor i16 %.02, %.01
  %7 = shl i16 %.02, 1
  %.not = icmp sgt i16 %6, -1
  br i1 %.not, label %10, label %8

8:                                                ; preds = %5
  %9 = xor i16 %7, 4129
  br label %11

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i16 [ %9, %8 ], [ %7, %10 ]
  br label %13

13:                                               ; preds = %11
  %14 = shl i16 %.01, 1
  %15 = add i64 %.0, 1
  br label %3, !llvm.loop !7

16:                                               ; preds = %3
  ret i16 %.02
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @crc_init() #0 {
  br label %1

1:                                                ; preds = %18, %0
  %.01 = phi i64 [ 1, %0 ], [ %19, %18 ]
  %.0 = phi i16 [ -32768, %0 ], [ %6, %18 ]
  %2 = icmp ult i64 %.01, 256
  br i1 %2, label %3, label %20

3:                                                ; preds = %1
  %4 = shl i16 %.0, 1
  %.not.inv = icmp slt i16 %.0, 0
  %5 = select i1 %.not.inv, i16 4129, i16 0
  %6 = xor i16 %4, %5
  br label %7

7:                                                ; preds = %15, %3
  %.02 = phi i64 [ 0, %3 ], [ %16, %15 ]
  %8 = icmp ult i64 %.02, %.01
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %.02
  %11 = load i16, i16* %10, align 2
  %12 = xor i16 %6, %11
  %13 = add i64 %.01, %.02
  %14 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %13
  store i16 %12, i16* %14, align 2
  br label %15

15:                                               ; preds = %9
  %16 = add i64 %.02, 1
  br label %7, !llvm.loop !8

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %17
  %19 = shl i64 %.01, 1
  br label %1, !llvm.loop !9

20:                                               ; preds = %1
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
