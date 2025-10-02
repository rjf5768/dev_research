; ModuleID = './20010910-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010910-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epic_private = type { %struct.epic_rx_desc*, [5 x i32] }
%struct.epic_rx_desc = type { i32 }

@check_rx_ring = internal global [5 x i32] [i32 12, i32 14, i32 16, i32 18, i32 10], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.epic_private, align 8
  %2 = alloca [5 x %struct.epic_rx_desc], align 16
  br label %3

3:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %4 = icmp ult i32 %.0, 5
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [5 x %struct.epic_rx_desc], [5 x %struct.epic_rx_desc]* %2, i64 0, i64 %6, i32 0
  store i32 0, i32* %7, align 4
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %1, i64 0, i32 1, i64 %8
  store i32 5, i32* %9, align 4
  br label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

12:                                               ; preds = %3
  %13 = getelementptr inbounds [5 x %struct.epic_rx_desc], [5 x %struct.epic_rx_desc]* %2, i64 0, i64 0
  %14 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %1, i64 0, i32 0
  store %struct.epic_rx_desc* %13, %struct.epic_rx_desc** %14, align 8
  call void @epic_init_ring(%struct.epic_private* noundef nonnull %1)
  br label %15

15:                                               ; preds = %31, %12
  %.1 = phi i32 [ 0, %12 ], [ %32, %31 ]
  %16 = icmp ult i32 %.1, 5
  br i1 %16, label %17, label %33

17:                                               ; preds = %15
  %18 = zext i32 %.1 to i64
  %19 = getelementptr inbounds [5 x %struct.epic_rx_desc], [5 x %struct.epic_rx_desc]* %2, i64 0, i64 %18, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %.1 to i64
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* @check_rx_ring, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %.not = icmp eq i32 %20, %23
  br i1 %.not, label %25, label %24

24:                                               ; preds = %17
  call void @abort() #3
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %17
  %26 = zext i32 %.1 to i64
  %27 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %1, i64 0, i32 1, i64 %26
  %28 = load i32, i32* %27, align 4
  %.not1 = icmp eq i32 %28, 0
  br i1 %.not1, label %30, label %29

29:                                               ; preds = %25
  call void @abort() #3
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30
  %32 = add nuw nsw i32 %.1, 1
  br label %15, !llvm.loop !6

33:                                               ; preds = %15
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %29, %24
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @epic_init_ring(%struct.epic_private* nocapture noundef %0) #1 {
  br label %2

2:                                                ; preds = %13, %1
  %.0 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %3 = icmp ult i32 %.0, 5
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = shl nuw i32 %.0, 1
  %6 = add i32 %5, 12
  %7 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %0, i64 0, i32 0
  %8 = load %struct.epic_rx_desc*, %struct.epic_rx_desc** %7, align 8
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds %struct.epic_rx_desc, %struct.epic_rx_desc* %8, i64 %9, i32 0
  store i32 %6, i32* %10, align 4
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %0, i64 0, i32 1, i64 %11
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %4
  %14 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !7

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %0, i64 0, i32 0
  %17 = load %struct.epic_rx_desc*, %struct.epic_rx_desc** %16, align 8
  %18 = add nsw i32 %.0, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.epic_rx_desc, %struct.epic_rx_desc* %17, i64 %19, i32 0
  store i32 10, i32* %20, align 4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
