; ModuleID = './tm.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exstore = external dso_local global i8*, align 8
@exlim = external dso_local global i8*, align 8
@delim1 = external dso_local global i32, align 4
@delim2 = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @maknew(i8* noundef %0) #0 {
  br label %2

2:                                                ; preds = %12, %1
  %.04 = phi i8* [ null, %1 ], [ %.15, %12 ]
  %.01 = phi i8* [ %0, %1 ], [ %13, %12 ]
  %3 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %14, label %4

4:                                                ; preds = %2
  %5 = icmp eq i8 %3, 92
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %.01, i64 1
  %8 = load i8, i8* %7, align 1
  %9 = icmp eq i8 %8, 38
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10, %6, %4
  %.15 = phi i8* [ %.01, %10 ], [ %.04, %6 ], [ %.04, %4 ]
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %2, !llvm.loop !4

14:                                               ; preds = %2
  %15 = icmp eq i8* %.04, null
  br i1 %15, label %16, label %68

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %40, %16
  %.02 = phi i32 [ 0, %16 ], [ %.13, %40 ]
  %.1 = phi i8* [ %0, %16 ], [ %41, %40 ]
  %18 = load i8, i8* %.1, align 1
  %.not9 = icmp eq i8 %18, 0
  br i1 %.not9, label %42, label %19

19:                                               ; preds = %17
  %20 = load i8, i8* %.1, align 1
  %21 = icmp eq i8 %20, 46
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = call i32 @ineqn(i8* noundef nonnull %.1, i8* noundef %0)
  %.not14 = icmp eq i32 %23, 0
  br i1 %.not14, label %24, label %39

24:                                               ; preds = %22
  %25 = icmp ugt i8* %.1, %0
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = getelementptr inbounds i8, i8* %.1, i64 -1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 @digit(i32 noundef %29) #3
  %.not16 = icmp eq i32 %30, 0
  br i1 %.not16, label %31, label %36

31:                                               ; preds = %26, %24
  %32 = getelementptr inbounds i8, i8* %.1, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = call i32 @digit(i32 noundef %34) #3
  %.not15 = icmp eq i32 %35, 0
  br i1 %.not15, label %39, label %36

36:                                               ; preds = %31, %26
  %37 = ptrtoint i8* %.1 to i64
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %36, %31, %22, %19
  %.13 = phi i32 [ %.02, %22 ], [ %38, %36 ], [ %.02, %31 ], [ %.02, %19 ]
  br label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %17, !llvm.loop !6

42:                                               ; preds = %17
  %43 = icmp eq i32 %.02, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %56, %44
  %.2 = phi i8* [ %.1, %44 ], [ %57, %56 ]
  %46 = icmp ugt i8* %.2, %0
  br i1 %46, label %47, label %.loopexit

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, i8* %.2, i64 -1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = call i32 @digit(i32 noundef %50) #3
  %.not12 = icmp eq i32 %51, 0
  br i1 %.not12, label %55, label %52

52:                                               ; preds = %47
  %53 = call i32 @ineqn(i8* noundef nonnull %.2, i8* noundef %0)
  %.not13 = icmp eq i32 %53, 0
  br i1 %.not13, label %54, label %55

54:                                               ; preds = %52
  br label %58

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds i8, i8* %.2, i64 -1
  br label %45, !llvm.loop !7

.loopexit:                                        ; preds = %45
  br label %58

58:                                               ; preds = %.loopexit, %54
  br label %59

59:                                               ; preds = %58, %42
  %.3 = phi i8* [ %.2, %58 ], [ %.1, %42 ]
  %.not10 = icmp eq i32 %.02, 0
  br i1 %.not10, label %60, label %63

60:                                               ; preds = %59
  %61 = icmp eq i8* %.3, %0
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  br label %90

63:                                               ; preds = %60, %59
  %.not11 = icmp eq i32 %.02, 0
  br i1 %.not11, label %67, label %64

64:                                               ; preds = %63
  %65 = sext i32 %.02 to i64
  %66 = inttoptr i64 %65 to i8*
  br label %67

67:                                               ; preds = %64, %63
  %.4 = phi i8* [ %66, %64 ], [ %.3, %63 ]
  br label %69

68:                                               ; preds = %14
  br label %69

69:                                               ; preds = %68, %67
  %.5 = phi i8* [ %.4, %67 ], [ %.04, %68 ]
  %70 = load i8*, i8** @exstore, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** @exstore, align 8
  %74 = load i8*, i8** @exlim, align 8
  %75 = icmp ugt i8* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %69
  %77 = call i8* (...) @chspace() #3
  store i8* %77, i8** @exstore, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2000
  store i8* %78, i8** @exlim, align 8
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i8*, i8** @exstore, align 8
  br label %81

81:                                               ; preds = %85, %79
  %.6 = phi i8* [ %.5, %79 ], [ %86, %85 ]
  %82 = load i8, i8* %.6, align 1
  %83 = load i8*, i8** @exstore, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** @exstore, align 8
  store i8 %82, i8* %83, align 1
  %.not8 = icmp eq i8 %82, 0
  br i1 %.not8, label %87, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, i8* %.6, i64 1
  br label %81, !llvm.loop !8

87:                                               ; preds = %81
  store i8 0, i8* %.5, align 1
  %88 = ptrtoint i8* %80 to i64
  %89 = trunc i64 %88 to i32
  br label %90

90:                                               ; preds = %87, %62
  %.0 = phi i32 [ %89, %87 ], [ 0, %62 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @ineqn(i8* noundef readnone %0, i8* noundef readonly %1) #1 {
  br label %3

3:                                                ; preds = %23, %2
  %.02 = phi i8* [ %1, %2 ], [ %10, %23 ]
  %.01 = phi i32 [ 0, %2 ], [ %.2, %23 ]
  %4 = load i8, i8* %.02, align 1
  %5 = sext i8 %4 to i32
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %24, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8* %.02, %0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %25

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %.02, i64 1
  %11 = icmp eq i32 %.01, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @delim1, align 4
  %14 = icmp eq i32 %13, %5
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %23

16:                                               ; preds = %12, %9
  %17 = icmp eq i32 %.01, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load i32, i32* @delim2, align 4
  %20 = icmp eq i32 %19, %5
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21, %18, %16
  %.1 = phi i32 [ 0, %21 ], [ %.01, %18 ], [ %.01, %16 ]
  br label %23

23:                                               ; preds = %22, %15
  %.2 = phi i32 [ 1, %15 ], [ %.1, %22 ]
  br label %3, !llvm.loop !9

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %8
  %.0 = phi i32 [ %.01, %8 ], [ 0, %24 ]
  ret i32 %.0
}

declare dso_local i32 @digit(i32 noundef) #2

declare dso_local i8* @chspace(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
