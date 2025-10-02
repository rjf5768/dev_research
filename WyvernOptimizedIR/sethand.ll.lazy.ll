; ModuleID = './sethand.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/sethand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @sethand(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %47

3:                                                ; preds = %1
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 3), align 4
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %46, label %4

4:                                                ; preds = %3
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 15), align 4
  %5 = icmp sgt i32 %0, 2
  br i1 %5, label %6, label %45

6:                                                ; preds = %4
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 15), align 8
  %.not1 = icmp eq i32 %0, 3
  br i1 %.not1, label %44, label %7

7:                                                ; preds = %6
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 3), align 16
  %8 = icmp eq i32 %0, 5
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 4
  br label %43

10:                                               ; preds = %7
  %11 = icmp sgt i32 %0, 5
  br i1 %11, label %12, label %42

12:                                               ; preds = %10
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 15), align 2
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 3), align 2
  %13 = icmp eq i32 %0, 7
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 4
  br label %41

15:                                               ; preds = %12
  %16 = icmp sgt i32 %0, 7
  br i1 %16, label %17, label %40

17:                                               ; preds = %15
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 9), align 2
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 9), align 2
  %.not2 = icmp eq i32 %0, 8
  br i1 %.not2, label %19, label %18

18:                                               ; preds = %17
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = icmp sgt i32 %0, 9
  br i1 %20, label %21, label %39

21:                                               ; preds = %19
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 2, i64 2), align 8
  %.not3 = icmp eq i32 %0, 10
  br i1 %.not3, label %38, label %22

22:                                               ; preds = %21
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 16, i64 16), align 16
  %23 = icmp sgt i32 %0, 11
  br i1 %23, label %24, label %37

24:                                               ; preds = %22
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 2, i64 16), align 2
  %.not4 = icmp eq i32 %0, 12
  br i1 %.not4, label %36, label %25

25:                                               ; preds = %24
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 16, i64 2), align 2
  %26 = icmp sgt i32 %0, 13
  br i1 %26, label %27, label %35

27:                                               ; preds = %25
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 6, i64 6), align 8
  %.not5 = icmp eq i32 %0, 14
  br i1 %.not5, label %34, label %28

28:                                               ; preds = %27
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 12, i64 12), align 16
  %29 = icmp sgt i32 %0, 15
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 6, i64 12), align 2
  %.not6 = icmp eq i32 %0, 16
  br i1 %.not6, label %32, label %31

31:                                               ; preds = %30
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 12, i64 6), align 2
  br label %32

32:                                               ; preds = %31, %30
  br label %33

33:                                               ; preds = %32, %28
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34, %25
  br label %36

36:                                               ; preds = %35, %24
  br label %37

37:                                               ; preds = %36, %22
  br label %38

38:                                               ; preds = %37, %21
  br label %39

39:                                               ; preds = %38, %19
  br label %40

40:                                               ; preds = %39, %15
  br label %41

41:                                               ; preds = %40, %14
  br label %42

42:                                               ; preds = %41, %10
  br label %43

43:                                               ; preds = %42, %9
  br label %44

44:                                               ; preds = %43, %6
  br label %45

45:                                               ; preds = %44, %4
  br label %46

46:                                               ; preds = %45, %3
  br label %47

47:                                               ; preds = %46, %1
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
