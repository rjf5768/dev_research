; ModuleID = './pcmp.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pcmpz(%struct.precisionType* noundef %0) #0 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %1
  %3 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %4 = load i16, i16* %3, align 2
  %5 = add i16 %4, 1
  store i16 %5, i16* %3, align 2
  br label %6

6:                                                ; preds = %2, %1
  %7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  br label %8

8:                                                ; preds = %18, %6
  %.01 = phi i16* [ %7, %6 ], [ %9, %18 ]
  %9 = getelementptr inbounds i16, i16* %.01, i64 1
  %10 = load i16, i16* %.01, align 2
  %.not2 = icmp eq i16 %10, 0
  br i1 %.not2, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %13 = load i8, i8* %12, align 2
  %.not4 = icmp eq i8 %13, 0
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %14
  %.0 = phi i32 [ -1, %14 ], [ 1, %15 ]
  br label %24

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 %21
  %23 = icmp ult i16* %9, %22
  br i1 %23, label %8, label %.loopexit, !llvm.loop !4

.loopexit:                                        ; preds = %18
  br label %24

24:                                               ; preds = %.loopexit, %16
  %.1 = phi i32 [ %.0, %16 ], [ 0, %.loopexit ]
  %.not3 = icmp eq %struct.precisionType* %0, null
  br i1 %.not3, label %32, label %25

25:                                               ; preds = %24
  %26 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %27 = load i16, i16* %26, align 2
  %28 = add i16 %27, -1
  store i16 %28, i16* %26, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #2
  br label %32

32:                                               ; preds = %30, %25, %24
  ret i32 %.1
}

declare dso_local i32 @pfree(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pcmp(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1) #0 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %5 = load i16, i16* %4, align 2
  %6 = add i16 %5, 1
  store i16 %6, i16* %4, align 2
  br label %7

7:                                                ; preds = %3, %2
  %.not6 = icmp eq %struct.precisionType* %1, null
  br i1 %.not6, label %12, label %8

8:                                                ; preds = %7
  %9 = getelementptr %struct.precisionType, %struct.precisionType* %1, i64 0, i32 0
  %10 = load i16, i16* %9, align 2
  %11 = add i16 %10, 1
  store i16 %11, i16* %9, align 2
  br label %12

12:                                               ; preds = %8, %7
  %13 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %14 = load i8, i8* %13, align 2
  %15 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 3
  %16 = load i8, i8* %15, align 2
  %.not7 = icmp eq i8 %14, %16
  br i1 %.not7, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %19 = load i8, i8* %18, align 2
  %.not12 = icmp eq i8 %19, 0
  br i1 %.not12, label %21, label %20

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %20
  %.0 = phi i32 [ -1, %20 ], [ 1, %21 ]
  br label %69

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 2
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %26, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i64
  %36 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 %35
  %37 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 2
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 4, i64 %39
  br label %41

41:                                               ; preds = %48, %32
  %.02 = phi i16* [ %36, %32 ], [ %42, %48 ]
  %.01 = phi i16* [ %40, %32 ], [ %44, %48 ]
  %42 = getelementptr inbounds i16, i16* %.02, i64 -1
  %43 = load i16, i16* %42, align 2
  %44 = getelementptr inbounds i16, i16* %.01, i64 -1
  %45 = load i16, i16* %44, align 2
  %.not11 = icmp eq i16 %43, %45
  br i1 %.not11, label %47, label %46

46:                                               ; preds = %41
  br label %51

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 4, i64 0
  %50 = icmp ugt i16* %44, %49
  br i1 %50, label %41, label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %48
  br label %51

51:                                               ; preds = %.loopexit, %46
  %52 = load i16, i16* %42, align 2
  %53 = load i16, i16* %44, align 2
  %54 = icmp ugt i16 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %62

56:                                               ; preds = %51
  %57 = load i16, i16* %42, align 2
  %58 = load i16, i16* %44, align 2
  %59 = icmp ult i16 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %56
  %.1 = phi i32 [ -1, %60 ], [ %30, %56 ]
  br label %62

62:                                               ; preds = %61, %55
  %.2 = phi i32 [ 1, %55 ], [ %.1, %61 ]
  br label %63

63:                                               ; preds = %62, %23
  %.3 = phi i32 [ %.2, %62 ], [ %30, %23 ]
  %64 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %65 = load i8, i8* %64, align 2
  %.not8 = icmp eq i8 %65, 0
  br i1 %.not8, label %68, label %66

66:                                               ; preds = %63
  %67 = sub nsw i32 0, %.3
  br label %68

68:                                               ; preds = %66, %63
  %.4 = phi i32 [ %67, %66 ], [ %.3, %63 ]
  br label %69

69:                                               ; preds = %68, %22
  %.5 = phi i32 [ %.0, %22 ], [ %.4, %68 ]
  %.not9 = icmp eq %struct.precisionType* %0, null
  br i1 %.not9, label %77, label %70

70:                                               ; preds = %69
  %71 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %72 = load i16, i16* %71, align 2
  %73 = add i16 %72, -1
  store i16 %73, i16* %71, align 2
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #2
  br label %77

77:                                               ; preds = %75, %70, %69
  %.not10 = icmp eq %struct.precisionType* %1, null
  br i1 %.not10, label %85, label %78

78:                                               ; preds = %77
  %79 = getelementptr %struct.precisionType, %struct.precisionType* %1, i64 0, i32 0
  %80 = load i16, i16* %79, align 2
  %81 = add i16 %80, -1
  store i16 %81, i16* %79, align 2
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %1) #2
  br label %85

85:                                               ; preds = %83, %78, %77
  ret i32 %.5
}

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
