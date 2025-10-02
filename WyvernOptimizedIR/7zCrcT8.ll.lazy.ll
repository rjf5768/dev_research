; ModuleID = './7zCrcT8.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zCrcT8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_CrcTable = dso_local global [2048 x i32] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @CrcGenerateTable() #0 {
  br label %1

1:                                                ; preds = %17, %0
  %.0 = phi i32 [ 0, %0 ], [ %18, %17 ]
  %2 = icmp ult i32 %.0, 256
  br i1 %2, label %3, label %19

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %7, %3
  %.02 = phi i32 [ 0, %3 ], [ %13, %7 ]
  %.01 = phi i32 [ %.0, %3 ], [ %12, %7 ]
  %5 = icmp ult i32 %.02, 8
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  %8 = lshr i32 %.01, 1
  %9 = and i32 %.01, 1
  %10 = sub nsw i32 0, %9
  %11 = and i32 %10, -306674912
  %12 = xor i32 %8, %11
  %13 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !4

14:                                               ; preds = %4
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 %15
  store i32 %.01, i32* %16, align 4
  br label %17

17:                                               ; preds = %14
  %18 = add i32 %.0, 1
  br label %1, !llvm.loop !6

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %35, %19
  %.1 = phi i32 [ %.0, %19 ], [ %36, %35 ]
  %21 = icmp ult i32 %.1, 2048
  br i1 %21, label %22, label %37

22:                                               ; preds = %20
  %23 = add i32 %.1, -256
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = lshr i32 %26, 8
  %32 = xor i32 %30, %31
  %33 = zext i32 %.1 to i64
  %34 = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 %33
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %22
  %36 = add i32 %.1, 1
  br label %20, !llvm.loop !7

37:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CrcUpdate(i32 noundef %0, i8* noundef %1, i64 noundef %2) #1 {
  %4 = call i32 @CrcUpdateT8(i32 noundef %0, i8* noundef %1, i64 noundef %2, i32* noundef getelementptr inbounds ([2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 0)) #3
  ret i32 %4
}

declare dso_local i32 @CrcUpdateT8(i32 noundef, i8* noundef, i64 noundef, i32* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CrcCalc(i8* noundef %0, i64 noundef %1) #1 {
  %3 = call i32 @CrcUpdateT8(i32 noundef -1, i8* noundef %0, i64 noundef %1, i32* noundef getelementptr inbounds ([2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 0)) #3
  %4 = xor i32 %3, -1
  ret i32 %4
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
