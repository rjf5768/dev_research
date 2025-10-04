; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Fhourstones/play.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @reset() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @plycnt, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 19
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %7
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  br label %2, !llvm.loop !4

12:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %18
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i64 0, i64 %21
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %24
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %13, !llvm.loop !6

29:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @play_init() #0 {
  %1 = alloca i32, align 4
  store i32 8, i32* %1, align 4
  br label %2

2:                                                ; preds = %13, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 128
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [128 x i32], [128 x i32]* @colthr, i64 0, i64 %7
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, 7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* @colthr, i64 0, i64 %11
  store i32 2, i32* %12, align 4
  br label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 8
  store i32 %15, i32* %1, align 4
  br label %2, !llvm.loop !7

16:                                               ; preds = %2
  store i32 16, i32* %1, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 128
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 15
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [128 x i32], [128 x i32]* @colwon, i64 0, i64 %23
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [128 x i32], [128 x i32]* @colwon, i64 0, i64 %26
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 16
  store i32 %30, i32* %1, align 4
  br label %17, !llvm.loop !8

31:                                               ; preds = %17
  call void @reset()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printMoves() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @plycnt, align 4
  %5 = icmp sle i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %10)
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %2, !llvm.loop !9

15:                                               ; preds = %2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @wins(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 2, %10
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 %12, %11
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %21, 2
  %23 = and i32 %20, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 %25, 4
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %70

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 5, %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 2
  %43 = and i32 %40, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %45, 4
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %70

50:                                               ; preds = %30
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 5, %51
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %61, 2
  %63 = and i32 %60, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 %65, 4
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %50, %49, %29
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @backmove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @plycnt, align 4
  %7 = and i32 %6, 1
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @plycnt, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @plycnt, align 4
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 2, %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %24, %25
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 5, %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %35
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 5, %45
  %47 = load i32, i32* %3, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %44
  store i32 %52, i32* %50, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makemove(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @plycnt, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @plycnt, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [44 x i32], [44 x i32]* @moves, i64 0, i64 %10
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* @plycnt, align 4
  %13 = and i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [128 x i32], [128 x i32]* @height, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 1
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [128 x i32], [128 x i32]* @columns, i64 0, i64 %27
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %2, align 4
  %30 = mul nsw i32 2, %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  %33 = shl i32 1, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* @rows, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 5, %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %40
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 5, %50
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [19 x i32], [19 x i32]* @dias, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %49
  store i32 %57, i32* %55, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
