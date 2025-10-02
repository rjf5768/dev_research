; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/sethand.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/sethand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @sethand(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %72

5:                                                ; preds = %1
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 3), align 1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %71

8:                                                ; preds = %5
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 15), align 1
  %9 = load i32, i32* %2, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %70

11:                                               ; preds = %8
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 15), align 1
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %69

14:                                               ; preds = %11
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 3), align 1
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 1
  br label %68

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = icmp sgt i32 %19, 5
  br i1 %20, label %21, label %67

21:                                               ; preds = %18
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 15), align 1
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 3), align 1
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 1
  br label %66

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = icmp sgt i32 %26, 7
  br i1 %27, label %28, label %65

28:                                               ; preds = %25
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 15, i64 9), align 1
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 3, i64 9), align 1
  %29 = load i32, i32* %2, align 4
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 9, i64 9), align 1
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %2, align 4
  %34 = icmp sgt i32 %33, 9
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 2, i64 2), align 2
  %36 = load i32, i32* %2, align 4
  %37 = icmp sgt i32 %36, 10
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 16, i64 16), align 16
  %39 = load i32, i32* %2, align 4
  %40 = icmp sgt i32 %39, 11
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 2, i64 16), align 2
  %42 = load i32, i32* %2, align 4
  %43 = icmp sgt i32 %42, 12
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 16, i64 2), align 2
  %45 = load i32, i32* %2, align 4
  %46 = icmp sgt i32 %45, 13
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 6, i64 6), align 2
  %48 = load i32, i32* %2, align 4
  %49 = icmp sgt i32 %48, 14
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 12, i64 12), align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp sgt i32 %51, 15
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 6, i64 12), align 2
  %54 = load i32, i32* %2, align 4
  %55 = icmp sgt i32 %54, 16
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i8 2, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 12, i64 6), align 2
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57, %50
  br label %59

59:                                               ; preds = %58, %47
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %61, %38
  br label %63

63:                                               ; preds = %62, %35
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64, %25
  br label %66

66:                                               ; preds = %65, %24
  br label %67

67:                                               ; preds = %66, %18
  br label %68

68:                                               ; preds = %67, %17
  br label %69

69:                                               ; preds = %68, %11
  br label %70

70:                                               ; preds = %69, %8
  br label %71

71:                                               ; preds = %70, %5
  br label %72

72:                                               ; preds = %71, %1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
