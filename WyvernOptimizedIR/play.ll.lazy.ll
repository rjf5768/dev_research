; ModuleID = './play.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Fhourstones/play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plycnt = dso_local global i32 0, align 4
@dias = dso_local global [19 x i32] zeroinitializer, align 16
@columns = dso_local global [128 x i32] zeroinitializer, align 16
@height = dso_local global [128 x i32] zeroinitializer, align 16
@rows = dso_local global [8 x i32] zeroinitializer, align 16
@colthr = dso_local global [128 x i32] zeroinitializer, align 16
@colwon = dso_local global [128 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@moves = dso_local global [44 x i32] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @reset() #0 {
  store i32 0, i32* @plycnt, align 4
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp ult i32 %.0, 19
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %18, %8
  %.1 = phi i32 [ 0, %8 ], [ %19, %18 ]
  %10 = icmp ult i32 %.1, 8
  br i1 %10, label %11, label %20

11:                                               ; preds = %9
  %12 = zext i32 %.1 to i64
  %13 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %12
  store i32 1, i32* %13, align 4
  %14 = zext i32 %.1 to i64
  %15 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i64 0, i64 %14
  store i32 1, i32* %15, align 4
  %16 = zext i32 %.1 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %16
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %11
  %19 = add nuw nsw i32 %.1, 1
  br label %9, !llvm.loop !6

20:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @play_init() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 8, %0 ], [ %10, %9 ]
  %2 = icmp ult i32 %.0, 128
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [128 x i32], [128 x i32]* @colthr, i64 0, i64 %4
  store i32 1, i32* %5, align 16
  %6 = or i32 %.0, 7
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [128 x i32], [128 x i32]* @colthr, i64 0, i64 %7
  store i32 2, i32* %8, align 4
  br label %9

9:                                                ; preds = %3
  %10 = add nuw nsw i32 %.0, 8
  br label %1, !llvm.loop !7

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %20, %11
  %.1 = phi i32 [ 16, %11 ], [ %21, %20 ]
  %13 = icmp ult i32 %.1, 128
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = or i32 %.1, 15
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [128 x i32], [128 x i32]* @colwon, i64 0, i64 %16
  store i32 1, i32* %17, align 4
  %18 = zext i32 %.1 to i64
  %19 = getelementptr inbounds [128 x i32], [128 x i32]* @colwon, i64 0, i64 %18
  store i32 1, i32* %19, align 16
  br label %20

20:                                               ; preds = %14
  %21 = add nuw nsw i32 %.1, 16
  br label %12, !llvm.loop !8

22:                                               ; preds = %12
  call void @reset()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printMoves() #1 {
  br label %1

1:                                                ; preds = %8, %0
  %.0 = phi i32 [ 1, %0 ], [ %9, %8 ]
  %2 = load i32, i32* @plycnt, align 4
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %10, label %3

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %6) #5
  br label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !9

10:                                               ; preds = %1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @wins(i32 noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = shl nsw i32 %0, 1
  %5 = shl i32 %2, %4
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  %10 = shl i32 %9, 2
  %11 = and i32 %9, %10
  %12 = shl i32 %11, 4
  %13 = and i32 %11, %12
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %15, label %14

14:                                               ; preds = %3
  br label %40

15:                                               ; preds = %3
  %16 = add nsw i32 %0, 5
  %17 = add nsw i32 %16, %1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %5
  %22 = shl i32 %21, 2
  %23 = and i32 %21, %22
  %24 = shl i32 %23, 4
  %25 = and i32 %23, %24
  %.not1 = icmp eq i32 %25, 0
  br i1 %.not1, label %27, label %26

26:                                               ; preds = %15
  br label %40

27:                                               ; preds = %15
  %28 = add nsw i32 %0, 5
  %29 = sub nsw i32 %28, %1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %5
  %34 = shl i32 %33, 2
  %35 = and i32 %33, %34
  %36 = shl i32 %35, 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %27, %26, %14
  %.0 = phi i32 [ 1, %14 ], [ 1, %26 ], [ %39, %27 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @backmove() #4 {
  %1 = load i32, i32* @plycnt, align 4
  %2 = and i32 %1, 1
  %3 = add nsw i32 %1, -1
  store i32 %3, i32* @plycnt, align 4
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 4
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = shl nsw i32 %6, 1
  %16 = or i32 %15, %2
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = sext i32 %10 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = add nsw i32 %6, 5
  %24 = add nsw i32 %23, %10
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %18
  store i32 %28, i32* %26, align 4
  %29 = add nsw i32 %6, 5
  %30 = sub nsw i32 %29, %10
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %18
  store i32 %34, i32* %32, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @makemove(i32 noundef %0) #4 {
  %2 = load i32, i32* @plycnt, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @plycnt, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i64 0, i64 %4
  store i32 %0, i32* %5, align 4
  %6 = and i32 %3, 1
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 1
  %15 = or i32 %14, %6
  %16 = sext i32 %0 to i64
  %17 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %16
  store i32 %15, i32* %17, align 4
  %18 = shl nsw i32 %0, 1
  %19 = or i32 %18, %6
  %20 = shl i32 1, %19
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = add nsw i32 %0, 5
  %26 = add nsw i32 %25, %9
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %20
  store i32 %30, i32* %28, align 4
  %31 = add nsw i32 %0, 5
  %32 = sub nsw i32 %31, %9
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %20
  store i32 %36, i32* %34, align 4
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
