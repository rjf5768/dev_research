; ModuleID = './ti.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/ti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ncol = external dso_local global i32, align 4
@dboxflg = external dso_local global i32, align 4
@nlin = external dso_local global i32, align 4
@fullbot = external dso_local global [0 x i32], align 4
@instead = external dso_local global [0 x i8*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @interv(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, i32* @ncol, align 4
  %.not = icmp sgt i32 %3, %1
  br i1 %.not, label %4, label %6

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %4, %2
  %7 = load i32, i32* @dboxflg, align 4
  %.not4 = icmp eq i32 %7, 0
  br i1 %.not4, label %15, label %8

8:                                                ; preds = %6
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %50

11:                                               ; preds = %8
  %12 = load i32, i32* @nlin, align 4
  %.not6 = icmp sgt i32 %12, %0
  br i1 %.not6, label %14, label %13

13:                                               ; preds = %11
  br label %50

14:                                               ; preds = %11
  br label %50

15:                                               ; preds = %6
  %16 = load i32, i32* @ncol, align 4
  %.not5 = icmp sgt i32 %16, %1
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %15
  br label %50

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %4
  %20 = icmp sgt i32 %0, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = add nsw i32 %0, -1
  %23 = call i32 @lefdata(i32 noundef %22, i32 noundef %1) #3
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 0, %24 ]
  %27 = add nsw i32 %0, 1
  %28 = load i32, i32* @nlin, align 4
  %.not2 = icmp slt i32 %27, %28
  br i1 %.not2, label %30, label %29

29:                                               ; preds = %25
  br label %38

30:                                               ; preds = %25
  %31 = call i32 @allh(i32 noundef %0) #3
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %34, label %32

32:                                               ; preds = %30
  %33 = add nsw i32 %0, 1
  br label %35

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ %0, %34 ]
  %37 = call i32 @lefdata(i32 noundef %36, i32 noundef %1) #3
  br label %38

38:                                               ; preds = %35, %29
  %.01 = phi i32 [ 0, %29 ], [ %37, %35 ]
  %39 = icmp eq i32 %26, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = icmp eq i32 %.01, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  br label %50

43:                                               ; preds = %40, %38
  %44 = icmp eq i32 %26, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  br label %50

46:                                               ; preds = %43
  %47 = icmp eq i32 %.01, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  br label %50

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %48, %45, %42, %17, %14, %13, %10
  %.0 = phi i32 [ 2, %10 ], [ 1, %13 ], [ 3, %14 ], [ 0, %17 ], [ 3, %42 ], [ 1, %45 ], [ 2, %48 ], [ 0, %49 ]
  ret i32 %.0
}

declare dso_local i32 @lefdata(i32 noundef, i32 noundef) #1

declare dso_local i32 @allh(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @interh(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 61
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @dboxflg, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %22, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %0, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load i32, i32* @nlin, align 4
  %13 = add nsw i32 %12, -1
  %.not6 = icmp sgt i32 %13, %0
  br i1 %.not6, label %22, label %14

14:                                               ; preds = %11, %9, %2
  %15 = load i32, i32* @ncol, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %76

18:                                               ; preds = %14
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %76

21:                                               ; preds = %18
  br label %76

22:                                               ; preds = %11, %7
  %23 = load i32, i32* @nlin, align 4
  %.not3 = icmp sgt i32 %23, %0
  br i1 %.not3, label %25, label %24

24:                                               ; preds = %22
  br label %76

25:                                               ; preds = %22
  %26 = icmp sgt i32 %1, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = add nsw i32 %1, -1
  %29 = call i32 @thish(i32 noundef %0, i32 noundef %28) #3
  br label %31

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %30 ]
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = icmp sgt i32 %0, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %34
  %37 = call i32 @up1(i32 noundef %0)
  %38 = call i32 @allh(i32 noundef %37) #3
  %.not5 = icmp eq i32 %38, 0
  br i1 %.not5, label %48, label %39

39:                                               ; preds = %36
  %40 = icmp sgt i32 %1, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = call i32 @up1(i32 noundef %0)
  %43 = add nsw i32 %1, -1
  %44 = call i32 @thish(i32 noundef %42, i32 noundef %43) #3
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 0, %45 ]
  br label %48

48:                                               ; preds = %46, %36, %34, %31
  %.02 = phi i32 [ %47, %46 ], [ %32, %36 ], [ %32, %34 ], [ %32, %31 ]
  %49 = call i32 @thish(i32 noundef %0, i32 noundef %1) #3
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = icmp sgt i32 %0, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  %54 = call i32 @up1(i32 noundef %0)
  %55 = call i32 @allh(i32 noundef %54) #3
  %.not4 = icmp eq i32 %55, 0
  br i1 %.not4, label %64, label %56

56:                                               ; preds = %53
  %57 = icmp sgt i32 %1, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = call i32 @up1(i32 noundef %0)
  %60 = call i32 @thish(i32 noundef %59, i32 noundef %1) #3
  br label %62

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i32 [ %60, %58 ], [ 0, %61 ]
  br label %64

64:                                               ; preds = %62, %53, %51, %48
  %.01 = phi i32 [ %63, %62 ], [ %49, %53 ], [ %49, %51 ], [ %49, %48 ]
  %65 = icmp eq i32 %.02, 61
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = icmp eq i32 %.01, 61
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  br label %76

69:                                               ; preds = %66, %64
  %70 = icmp eq i32 %.02, 61
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  br label %76

72:                                               ; preds = %69
  %73 = icmp eq i32 %.01, 61
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  br label %76

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %75, %74, %71, %68, %24, %21, %20, %17
  %.0 = phi i32 [ 1, %17 ], [ 2, %20 ], [ 3, %21 ], [ 0, %24 ], [ 3, %68 ], [ 1, %71 ], [ 2, %74 ], [ 0, %75 ]
  ret i32 %.0
}

declare dso_local i32 @thish(i32 noundef, i32 noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @up1(i32 noundef %0) #2 {
  br label %2

2:                                                ; preds = %10, %1
  %.0.in = phi i32 [ %0, %1 ], [ %.0, %10 ]
  %.0 = add nsw i32 %.0.in, -1
  %3 = sext i32 %.0 to i64
  %4 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %3
  %5 = load i8*, i8** %4, align 8
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %8, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i32 %.0.in, 1
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i1 [ false, %2 ], [ %7, %6 ]
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %2, !llvm.loop !4

11:                                               ; preds = %8
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
