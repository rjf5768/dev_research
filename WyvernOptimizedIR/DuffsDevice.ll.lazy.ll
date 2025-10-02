; ModuleID = './DuffsDevice.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/DuffsDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @sum(i16* nocapture noundef %0, i16* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = add nsw i32 %2, 7
  %5 = sdiv i32 %4, 8
  %6 = srem i32 %2, 8
  switch i32 %6, label %52 [
    i32 0, label %7
    i32 7, label %13
    i32 6, label %18
    i32 5, label %23
    i32 4, label %28
    i32 3, label %33
    i32 2, label %38
    i32 1, label %43
  ]

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %47, %7
  %.01 = phi i16* [ %48, %47 ], [ %1, %7 ]
  %.0 = phi i32 [ %49, %47 ], [ %5, %7 ]
  %9 = getelementptr inbounds i16, i16* %.01, i64 1
  %10 = load i16, i16* %.01, align 2
  %11 = load i16, i16* %0, align 2
  %12 = add i16 %11, %10
  store i16 %12, i16* %0, align 2
  br label %13

13:                                               ; preds = %8, %3
  %.12 = phi i16* [ %9, %8 ], [ %1, %3 ]
  %.1 = phi i32 [ %.0, %8 ], [ %5, %3 ]
  %14 = getelementptr inbounds i16, i16* %.12, i64 1
  %15 = load i16, i16* %.12, align 2
  %16 = load i16, i16* %0, align 2
  %17 = add i16 %16, %15
  store i16 %17, i16* %0, align 2
  br label %18

18:                                               ; preds = %13, %3
  %.23 = phi i16* [ %14, %13 ], [ %1, %3 ]
  %.2 = phi i32 [ %.1, %13 ], [ %5, %3 ]
  %19 = getelementptr inbounds i16, i16* %.23, i64 1
  %20 = load i16, i16* %.23, align 2
  %21 = load i16, i16* %0, align 2
  %22 = add i16 %21, %20
  store i16 %22, i16* %0, align 2
  br label %23

23:                                               ; preds = %18, %3
  %.34 = phi i16* [ %19, %18 ], [ %1, %3 ]
  %.3 = phi i32 [ %.2, %18 ], [ %5, %3 ]
  %24 = getelementptr inbounds i16, i16* %.34, i64 1
  %25 = load i16, i16* %.34, align 2
  %26 = load i16, i16* %0, align 2
  %27 = add i16 %26, %25
  store i16 %27, i16* %0, align 2
  br label %28

28:                                               ; preds = %23, %3
  %.45 = phi i16* [ %24, %23 ], [ %1, %3 ]
  %.4 = phi i32 [ %.3, %23 ], [ %5, %3 ]
  %29 = getelementptr inbounds i16, i16* %.45, i64 1
  %30 = load i16, i16* %.45, align 2
  %31 = load i16, i16* %0, align 2
  %32 = add i16 %31, %30
  store i16 %32, i16* %0, align 2
  br label %33

33:                                               ; preds = %28, %3
  %.56 = phi i16* [ %29, %28 ], [ %1, %3 ]
  %.5 = phi i32 [ %.4, %28 ], [ %5, %3 ]
  %34 = getelementptr inbounds i16, i16* %.56, i64 1
  %35 = load i16, i16* %.56, align 2
  %36 = load i16, i16* %0, align 2
  %37 = add i16 %36, %35
  store i16 %37, i16* %0, align 2
  br label %38

38:                                               ; preds = %33, %3
  %.67 = phi i16* [ %34, %33 ], [ %1, %3 ]
  %.6 = phi i32 [ %.5, %33 ], [ %5, %3 ]
  %39 = getelementptr inbounds i16, i16* %.67, i64 1
  %40 = load i16, i16* %.67, align 2
  %41 = load i16, i16* %0, align 2
  %42 = add i16 %41, %40
  store i16 %42, i16* %0, align 2
  br label %43

43:                                               ; preds = %38, %3
  %.78 = phi i16* [ %1, %3 ], [ %39, %38 ]
  %.7 = phi i32 [ %5, %3 ], [ %.6, %38 ]
  %44 = load i16, i16* %.78, align 2
  %45 = load i16, i16* %0, align 2
  %46 = add i16 %45, %44
  store i16 %46, i16* %0, align 2
  br label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds i16, i16* %.78, i64 1
  %49 = add nsw i32 %.7, -1
  %50 = icmp sgt i32 %.7, 1
  br i1 %50, label %8, label %51, !llvm.loop !4

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %3
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [100 x i16], align 16
  %2 = alloca i16, align 2
  store i16 0, i16* %2, align 2
  br label %3

3:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %.not = icmp eq i32 %.0, 100
  br i1 %.not, label %10, label %4

4:                                                ; preds = %3
  %5 = trunc i32 %.0 to i16
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [100 x i16], [100 x i16]* %1, i64 0, i64 %6
  store i16 %5, i16* %7, align 2
  br label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !6

10:                                               ; preds = %3
  %11 = getelementptr inbounds [100 x i16], [100 x i16]* %1, i64 0, i64 0
  %12 = call i32 @sum(i16* noundef nonnull %2, i16* noundef nonnull %11, i32 noundef 100)
  %13 = load i16, i16* %2, align 2
  %14 = sext i16 %13 to i32
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %14) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

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
