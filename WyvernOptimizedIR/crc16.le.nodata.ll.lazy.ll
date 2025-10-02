; ModuleID = './crc16.le.nodata.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/HashRecognize/crc16.le.nodata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.crc_initval = internal constant [8 x i16] [i16 0, i16 1, i16 11, i16 16, i16 129, i16 255, i16 4129, i16 16384], align 16
@CRCTable = internal global [256 x i16] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %.01 = phi i64 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i64 %.01, 8
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = getelementptr inbounds [8 x i16], [8 x i16]* @main.crc_initval, i64 0, i64 %.01
  %5 = load i16, i16* %4, align 2
  %6 = call zeroext i16 @crc_loop(i16 noundef zeroext %5)
  %7 = call zeroext i16 @crc_table(i16 noundef zeroext %5)
  %.not = icmp eq i16 %6, %7
  br i1 %.not, label %9, label %8

8:                                                ; preds = %3
  br label %13

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %9
  %11 = add i64 %.01, 1
  br label %1, !llvm.loop !4

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %.0 = phi i32 [ 1, %8 ], [ 0, %12 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal zeroext i16 @crc_loop(i16 noundef zeroext %0) #1 {
  br label %2

2:                                                ; preds = %12, %1
  %.01 = phi i16 [ %0, %1 ], [ %11, %12 ]
  %.0 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %3 = icmp ult i64 %.0, 16
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = lshr i16 %.01, 1
  %6 = and i16 %.01, 1
  %.not = icmp eq i16 %6, 0
  br i1 %.not, label %9, label %7

7:                                                ; preds = %4
  %8 = xor i16 %5, -24575
  br label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i16 [ %8, %7 ], [ %5, %9 ]
  br label %12

12:                                               ; preds = %10
  %13 = add i64 %.0, 1
  br label %2, !llvm.loop !6

14:                                               ; preds = %2
  ret i16 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal zeroext i16 @crc_table(i16 noundef zeroext %0) #0 {
  %2 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @CRCTable, i64 0, i64 255), align 2
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @crc_init()
  br label %5

5:                                                ; preds = %4, %1
  br label %6

6:                                                ; preds = %9, %5
  %.01 = phi i16 [ %0, %5 ], [ %15, %9 ]
  %.0 = phi i64 [ 0, %5 ], [ %16, %9 ]
  %7 = icmp ult i64 %.0, 2
  br i1 %7, label %8, label %17

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8
  %10 = lshr i16 %.01, 8
  %11 = and i16 %.01, 255
  %12 = zext i16 %11 to i64
  %13 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = xor i16 %10, %14
  %16 = add i64 %.0, 1
  br label %6, !llvm.loop !7

17:                                               ; preds = %6
  ret i16 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @crc_init() #0 {
  br label %1

1:                                                ; preds = %21, %0
  %.01 = phi i32 [ 128, %0 ], [ %22, %21 ]
  %.0 = phi i16 [ 1, %0 ], [ %6, %21 ]
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %23, label %2

2:                                                ; preds = %1
  %3 = lshr i16 %.0, 1
  %4 = and i16 %.0, 1
  %.not3 = icmp eq i16 %4, 0
  %5 = select i1 %.not3, i16 0, i16 -24575
  %6 = xor i16 %5, %3
  br label %7

7:                                                ; preds = %17, %2
  %.02 = phi i32 [ 0, %2 ], [ %19, %17 ]
  %8 = icmp ult i32 %.02, 256
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  %10 = zext i32 %.02 to i64
  %11 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %10
  %12 = load i16, i16* %11, align 4
  %13 = xor i16 %6, %12
  %14 = add i32 %.01, %.02
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %15
  store i16 %13, i16* %16, align 2
  br label %17

17:                                               ; preds = %9
  %18 = shl nuw nsw i32 %.01, 1
  %19 = add i32 %.02, %18
  br label %7, !llvm.loop !8

20:                                               ; preds = %7
  br label %21

21:                                               ; preds = %20
  %22 = lshr i32 %.01, 1
  br label %1, !llvm.loop !9

23:                                               ; preds = %1
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
