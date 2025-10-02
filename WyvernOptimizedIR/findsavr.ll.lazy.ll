; ModuleID = './findsavr.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findsavr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16
@mymove = external dso_local global i32, align 4
@l = external dso_local global [19 x [19 x i8]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findsaver(i32* nocapture noundef writeonly %0, i32* nocapture noundef writeonly %1, i32* nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 -1, i32* %0, align 4
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  br label %7

7:                                                ; preds = %48, %3
  %.01 = phi i32 [ 1, %3 ], [ %49, %48 ]
  %8 = icmp ult i32 %.01, 4
  br i1 %8, label %9, label %50

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %45, %9
  %.03 = phi i32 [ 0, %9 ], [ %46, %45 ]
  %11 = icmp ult i32 %.03, 19
  br i1 %11, label %12, label %47

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %42, %12
  %.02 = phi i32 [ 0, %12 ], [ %43, %42 ]
  %14 = icmp ult i32 %.02, 19
  br i1 %14, label %15, label %44

15:                                               ; preds = %13
  %16 = zext i32 %.03 to i64
  %17 = zext i32 %.02 to i64
  %18 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* @mymove, align 4
  %22 = icmp eq i32 %21, %20
  br i1 %22, label %23, label %41

23:                                               ; preds = %15
  %24 = zext i32 %.03 to i64
  %25 = zext i32 %.02 to i64
  %26 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %.01, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  call void @initmark() #2
  %31 = call i32 @findnextmove(i32 noundef %.03, i32 noundef %.02, i32* noundef nonnull %4, i32* noundef nonnull %5, i32* noundef nonnull %6, i32 noundef %.01) #2
  %.not = icmp eq i32 %31, 0
  br i1 %.not, label %40, label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %0, align 4
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %36, %32, %30
  br label %41

41:                                               ; preds = %40, %23, %15
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.02, 1
  br label %13, !llvm.loop !4

44:                                               ; preds = %13
  br label %45

45:                                               ; preds = %44
  %46 = add nuw nsw i32 %.03, 1
  br label %10, !llvm.loop !6

47:                                               ; preds = %10
  br label %48

48:                                               ; preds = %47
  %49 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !7

50:                                               ; preds = %7
  %51 = load i32, i32* %2, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %55

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %53
  %.0 = phi i32 [ 1, %53 ], [ 0, %54 ]
  ret i32 %.0
}

declare dso_local void @initmark() #1

declare dso_local i32 @findnextmove(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
