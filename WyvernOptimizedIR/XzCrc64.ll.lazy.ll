; ModuleID = './XzCrc64.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/XzCrc64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_Crc64Table = dso_local global [256 x i64] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @Crc64GenerateTable() #0 {
  br label %1

1:                                                ; preds = %18, %0
  %.0 = phi i32 [ 0, %0 ], [ %19, %18 ]
  %2 = icmp ult i32 %.0, 256
  br i1 %2, label %3, label %20

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  br label %5

5:                                                ; preds = %8, %3
  %.02 = phi i32 [ 0, %3 ], [ %14, %8 ]
  %.01 = phi i64 [ %4, %3 ], [ %13, %8 ]
  %6 = icmp ult i32 %.02, 8
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7
  %9 = lshr i64 %.01, 1
  %10 = and i64 %.01, 1
  %11 = sub nsw i64 0, %10
  %12 = and i64 %11, -3932672073523589310
  %13 = xor i64 %9, %12
  %14 = add nuw nsw i32 %.02, 1
  br label %5, !llvm.loop !4

15:                                               ; preds = %5
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [256 x i64], [256 x i64]* @g_Crc64Table, i64 0, i64 %16
  store i64 %.01, i64* %17, align 8
  br label %18

18:                                               ; preds = %15
  %19 = add i32 %.0, 1
  br label %1, !llvm.loop !6

20:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @Crc64Update(i64 noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) #1 {
  br label %4

4:                                                ; preds = %6, %3
  %.02 = phi i64 [ %2, %3 ], [ %14, %6 ]
  %.01 = phi i8* [ %1, %3 ], [ %15, %6 ]
  %.0 = phi i64 [ %0, %3 ], [ %13, %6 ]
  %.not = icmp eq i64 %.02, 0
  br i1 %.not, label %16, label %5

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5
  %.0.masked = and i64 %.0, 255
  %7 = load i8, i8* %.01, align 1
  %8 = zext i8 %7 to i64
  %9 = xor i64 %.0.masked, %8
  %10 = getelementptr inbounds [256 x i64], [256 x i64]* @g_Crc64Table, i64 0, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = lshr i64 %.0, 8
  %13 = xor i64 %11, %12
  %14 = add i64 %.02, -1
  %15 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %4, !llvm.loop !7

16:                                               ; preds = %4
  ret i64 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @Crc64Calc(i8* nocapture noundef readonly %0, i64 noundef %1) #1 {
  %3 = call i64 @Crc64Update(i64 noundef -1, i8* noundef %0, i64 noundef %1)
  %4 = xor i64 %3, -1
  ret i64 %4
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
