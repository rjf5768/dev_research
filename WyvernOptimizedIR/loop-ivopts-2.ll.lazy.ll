; ModuleID = './loop-ivopts-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-ivopts-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %23, %1
  %.0 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %3 = icmp ult i32 %.0, 288
  br i1 %3, label %4, label %25

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = icmp ult i32 %.0, 256
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = icmp ugt i32 %.0, 279
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i1 [ true, %4 ], [ %10, %9 ]
  %13 = select i1 %12, i32 8, i32 7
  %14 = icmp ugt i32 %.0, 143
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = icmp ult i32 %.0, 256
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i1 [ false, %11 ], [ %16, %15 ]
  %19 = zext i1 %18 to i32
  %20 = add nuw nsw i32 %13, %19
  %.not = icmp eq i32 %7, %20
  br i1 %.not, label %22, label %21

21:                                               ; preds = %17
  call void @abort() #2
  unreachable

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

25:                                               ; preds = %2
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [288 x i32], align 16
  br label %2

2:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %3 = icmp ult i32 %.0, 144
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [288 x i32], [288 x i32]* %1, i64 0, i64 %5
  store i32 8, i32* %6, align 4
  br label %7

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !6

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %15, %9
  %.1 = phi i32 [ %.0, %9 ], [ %16, %15 ]
  %11 = icmp ult i32 %.1, 256
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = zext i32 %.1 to i64
  %14 = getelementptr inbounds [288 x i32], [288 x i32]* %1, i64 0, i64 %13
  store i32 9, i32* %14, align 4
  br label %15

15:                                               ; preds = %12
  %16 = add nuw nsw i32 %.1, 1
  br label %10, !llvm.loop !7

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %23, %17
  %.2 = phi i32 [ %.1, %17 ], [ %24, %23 ]
  %19 = icmp ult i32 %.2, 280
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = zext i32 %.2 to i64
  %22 = getelementptr inbounds [288 x i32], [288 x i32]* %1, i64 0, i64 %21
  store i32 7, i32* %22, align 4
  br label %23

23:                                               ; preds = %20
  %24 = add nuw nsw i32 %.2, 1
  br label %18, !llvm.loop !8

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %31, %25
  %.3 = phi i32 [ %.2, %25 ], [ %32, %31 ]
  %27 = icmp ult i32 %.3, 288
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = zext i32 %.3 to i64
  %30 = getelementptr inbounds [288 x i32], [288 x i32]* %1, i64 0, i64 %29
  store i32 8, i32* %30, align 4
  br label %31

31:                                               ; preds = %28
  %32 = add nuw nsw i32 %.3, 1
  br label %26, !llvm.loop !9

33:                                               ; preds = %26
  %34 = getelementptr inbounds [288 x i32], [288 x i32]* %1, i64 0, i64 0
  call void @check(i32* noundef nonnull %34)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
