; ModuleID = './pr65401.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65401.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [64 x i16] }

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(%struct.S* nocapture noundef %0) #0 {
  %2 = bitcast %struct.S* %0 to i8*
  br label %3

3:                                                ; preds = %21, %1
  %.0 = phi i32 [ 0, %1 ], [ %22, %21 ]
  %4 = icmp ult i32 %.0, 64
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = shl i32 %.0, 1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %2, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i16
  %11 = shl i32 %.0, 1
  %12 = or i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %2, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i16
  %17 = shl nuw i16 %16, 8
  %18 = or i16 %17, %10
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 %19
  store i16 %18, i16* %20, align 2
  br label %21

21:                                               ; preds = %5
  %22 = add i32 %.0, 1
  br label %3, !llvm.loop !4

23:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @bar(%struct.S* nocapture noundef %0) #0 {
  %2 = bitcast %struct.S* %0 to i8*
  br label %3

3:                                                ; preds = %21, %1
  %.0 = phi i32 [ 0, %1 ], [ %22, %21 ]
  %4 = icmp ult i32 %.0, 64
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = shl i32 %.0, 1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %2, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %12 = shl i32 %.0, 1
  %13 = or i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %2, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i16
  %18 = or i16 %11, %17
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 %19
  store i16 %18, i16* %20, align 2
  br label %21

21:                                               ; preds = %5
  %22 = add i32 %.0, 1
  br label %3, !llvm.loop !6

23:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.S, align 2
  br label %2

2:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %3 = icmp ult i32 %.0, 64
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %.neg3 = mul i32 %.0, -256
  %5 = add i32 %.neg3, 16384
  %6 = add i32 %.0, %5
  %7 = trunc i32 %6 to i16
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 %8
  store i16 %7, i16* %9, align 2
  br label %10

10:                                               ; preds = %4
  %11 = add i32 %.0, 1
  br label %2, !llvm.loop !7

12:                                               ; preds = %2
  call void @foo(%struct.S* noundef nonnull %1)
  br label %13

13:                                               ; preds = %24, %12
  %.1 = phi i32 [ 0, %12 ], [ %25, %24 ]
  %14 = icmp ult i32 %.1, 64
  br i1 %14, label %15, label %26

15:                                               ; preds = %13
  %16 = zext i32 %.1 to i64
  %17 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %.neg1 = mul i32 %.1, -256
  %20 = add i32 %.neg1, 16384
  %21 = add i32 %.1, %20
  %.not2 = icmp eq i32 %21, %19
  br i1 %.not2, label %23, label %22

22:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = add i32 %.1, 1
  br label %13, !llvm.loop !8

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %35, %26
  %.2 = phi i32 [ 0, %26 ], [ %36, %35 ]
  %28 = icmp ult i32 %.2, 64
  br i1 %28, label %29, label %37

29:                                               ; preds = %27
  %.neg = mul i32 %.2, -256
  %30 = add i32 %.neg, 16384
  %31 = add i32 %.2, %30
  %32 = trunc i32 %31 to i16
  %33 = zext i32 %.2 to i64
  %34 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 %33
  store i16 %32, i16* %34, align 2
  br label %35

35:                                               ; preds = %29
  %36 = add i32 %.2, 1
  br label %27, !llvm.loop !9

37:                                               ; preds = %27
  call void @bar(%struct.S* noundef nonnull %1)
  br label %38

38:                                               ; preds = %50, %37
  %.3 = phi i32 [ 0, %37 ], [ %51, %50 ]
  %39 = icmp ult i32 %.3, 64
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = zext i32 %.3 to i64
  %42 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = sub i32 64, %.3
  %46 = shl i32 %.3, 8
  %47 = add i32 %45, %46
  %.not = icmp eq i32 %47, %44
  br i1 %.not, label %49, label %48

48:                                               ; preds = %40
  call void @abort() #3
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = add i32 %.3, 1
  br label %38, !llvm.loop !10

52:                                               ; preds = %38
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %48, %22
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
