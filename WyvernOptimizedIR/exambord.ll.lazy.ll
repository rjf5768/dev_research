; ModuleID = './exambord.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/exambord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mymove = external dso_local global i32, align 4
@mik = external dso_local global i32, align 4
@mjk = external dso_local global i32, align 4
@uik = external dso_local global i32, align 4
@ujk = external dso_local global i32, align 4
@p = external dso_local global [19 x [19 x i8]], align 16
@l = external dso_local global [19 x [19 x i8]], align 16
@mk = external dso_local global i32, align 4
@uk = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @examboard(i32 noundef %0) #0 {
  call void @eval(i32 noundef %0) #2
  %2 = load i32, i32* @mymove, align 4
  %3 = icmp eq i32 %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i32 -1, i32* @mik, align 4
  store i32 -1, i32* @mjk, align 4
  br label %6

5:                                                ; preds = %1
  store i32 -1, i32* @uik, align 4
  store i32 -1, i32* @ujk, align 4
  br label %6

6:                                                ; preds = %5, %4
  br label %7

7:                                                ; preds = %43, %6
  %.01 = phi i32 [ 0, %6 ], [ %44, %43 ]
  %.0 = phi i32 [ 0, %6 ], [ %.1, %43 ]
  %8 = icmp ult i32 %.01, 19
  br i1 %8, label %9, label %45

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %40, %9
  %.02 = phi i32 [ 0, %9 ], [ %41, %40 ]
  %.1 = phi i32 [ %.0, %9 ], [ %.2, %40 ]
  %11 = icmp ult i32 %.02, 19
  br i1 %11, label %12, label %42

12:                                               ; preds = %10
  %13 = zext i32 %.01 to i64
  %14 = zext i32 %.02 to i64
  %15 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %19, label %39

19:                                               ; preds = %12
  %20 = zext i32 %.01 to i64
  %21 = zext i32 %.02 to i64
  %22 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = zext i32 %.01 to i64
  %27 = zext i32 %.02 to i64
  %28 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %26, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load i32, i32* @mymove, align 4
  %30 = icmp eq i32 %29, %0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  store i32 %.01, i32* @mik, align 4
  store i32 %.02, i32* @mjk, align 4
  %32 = load i32, i32* @mk, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @mk, align 4
  br label %37

34:                                               ; preds = %25
  store i32 %.01, i32* @uik, align 4
  store i32 %.02, i32* @ujk, align 4
  %35 = load i32, i32* @uk, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @uk, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = add nsw i32 %.1, 1
  br label %39

39:                                               ; preds = %37, %19, %12
  %.2 = phi i32 [ %38, %37 ], [ %.1, %19 ], [ %.1, %12 ]
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.02, 1
  br label %10, !llvm.loop !4

42:                                               ; preds = %10
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !6

45:                                               ; preds = %7
  %46 = load i32, i32* @mymove, align 4
  %47 = icmp eq i32 %46, %0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = icmp sgt i32 %.0, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store i32 -1, i32* @mik, align 4
  store i32 -1, i32* @mjk, align 4
  br label %55

51:                                               ; preds = %48, %45
  %52 = icmp sgt i32 %.0, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store i32 -1, i32* @uik, align 4
  store i32 -1, i32* @ujk, align 4
  br label %54

54:                                               ; preds = %53, %51
  br label %55

55:                                               ; preds = %54, %50
  ret void
}

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
