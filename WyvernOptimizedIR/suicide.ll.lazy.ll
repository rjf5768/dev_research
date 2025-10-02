; ModuleID = './suicide.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/suicide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lib = external dso_local global i32, align 4
@umove = external dso_local global i32, align 4
@p = external dso_local global [19 x [19 x i8]], align 16
@mymove = external dso_local global i32, align 4
@l = external dso_local global [19 x [19 x i8]], align 16
@uik = external dso_local global i32, align 4
@ujk = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @suicide(i32 noundef %0, i32 noundef %1) #0 {
  store i32 0, i32* @lib, align 4
  %3 = load i32, i32* @umove, align 4
  call void @countlib(i32 noundef %0, i32 noundef %1, i32 noundef %3) #2
  %4 = load i32, i32* @lib, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %54

6:                                                ; preds = %2
  %7 = load i32, i32* @umove, align 4
  %8 = trunc i32 %7 to i8
  %9 = sext i32 %0 to i64
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %9, i64 %10
  store i8 %8, i8* %11, align 1
  %12 = load i32, i32* @mymove, align 4
  call void @eval(i32 noundef %12) #2
  br label %13

13:                                               ; preds = %37, %6
  %.03 = phi i32 [ 0, %6 ], [ %38, %37 ]
  %.01 = phi i32 [ 0, %6 ], [ %.1, %37 ]
  %14 = icmp ult i32 %.03, 19
  br i1 %14, label %15, label %39

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %34, %15
  %.02 = phi i32 [ 0, %15 ], [ %35, %34 ]
  %.1 = phi i32 [ %.01, %15 ], [ %.2, %34 ]
  %17 = icmp ult i32 %.02, 19
  br i1 %17, label %18, label %36

18:                                               ; preds = %16
  %19 = zext i32 %.03 to i64
  %20 = zext i32 %.02 to i64
  %21 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, i32* @mymove, align 4
  %25 = icmp eq i32 %24, %23
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = zext i32 %.03 to i64
  %28 = zext i32 %.02 to i64
  %29 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %.not = icmp eq i8 %30, 0
  br i1 %.not, label %31, label %33

31:                                               ; preds = %26
  %32 = add nsw i32 %.1, 1
  br label %33

33:                                               ; preds = %31, %26, %18
  %.2 = phi i32 [ %.1, %26 ], [ %32, %31 ], [ %.1, %18 ]
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.02, 1
  br label %16, !llvm.loop !4

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.03, 1
  br label %13, !llvm.loop !6

39:                                               ; preds = %13
  %40 = icmp eq i32 %.01, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %39
  %42 = icmp eq i32 %.01, 1
  br i1 %42, label %43, label %53

43:                                               ; preds = %41
  %44 = load i32, i32* @uik, align 4
  %45 = icmp eq i32 %44, %0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* @ujk, align 4
  %48 = icmp eq i32 %47, %1
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %39
  %50 = sext i32 %0 to i64
  %51 = sext i32 %1 to i64
  %52 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %50, i64 %51
  store i8 0, i8* %52, align 1
  br label %55

53:                                               ; preds = %46, %43, %41
  br label %55

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %54, %53, %49
  %.0 = phi i32 [ 1, %49 ], [ 0, %53 ], [ 0, %54 ]
  ret i32 %.0
}

declare dso_local void @countlib(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @eval(i32 noundef) #1

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
