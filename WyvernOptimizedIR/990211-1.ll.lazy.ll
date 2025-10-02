; ModuleID = './990211-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990211-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @func(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  br i1 false, label %4, label %5

4:                                                ; preds = %3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3, %1
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  br i1 false, label %8, label %9

8:                                                ; preds = %7
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7, %5
  %10 = icmp sgt i32 %0, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  br i1 false, label %12, label %13

12:                                               ; preds = %11
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11, %9
  %14 = icmp slt i32 %0, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  br i1 false, label %16, label %17

16:                                               ; preds = %15
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %15, %13
  %18 = icmp slt i32 %0, 77
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  br i1 false, label %20, label %21

20:                                               ; preds = %19
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19, %17
  %22 = icmp sgt i32 %0, 77
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  br i1 false, label %24, label %25

24:                                               ; preds = %23
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %23, %21
  %26 = icmp sgt i32 %0, 76
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  br i1 false, label %28, label %29

28:                                               ; preds = %27
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %27, %25
  %30 = icmp slt i32 %0, 78
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  br i1 false, label %32, label %33

32:                                               ; preds = %31
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %31, %29
  %34 = icmp slt i32 %0, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  br i1 true, label %37, label %36

36:                                               ; preds = %35
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %35, %33
  %38 = icmp sgt i32 %0, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  br i1 true, label %41, label %40

40:                                               ; preds = %39
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %39, %37
  %42 = icmp sgt i32 %0, -1
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  br i1 true, label %45, label %44

44:                                               ; preds = %43
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %43, %41
  %46 = icmp slt i32 %0, 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  br i1 true, label %49, label %48

48:                                               ; preds = %47
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %47, %45
  %50 = icmp slt i32 %0, 77
  br i1 %50, label %53, label %51

51:                                               ; preds = %49
  br i1 true, label %53, label %52

52:                                               ; preds = %51
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %51, %49
  %54 = icmp sgt i32 %0, 77
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  br i1 true, label %57, label %56

56:                                               ; preds = %55
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %55, %53
  %58 = icmp sgt i32 %0, 76
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  br i1 true, label %61, label %60

60:                                               ; preds = %59
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %59, %57
  %62 = icmp slt i32 %0, 78
  br i1 %62, label %65, label %63

63:                                               ; preds = %61
  br i1 true, label %65, label %64

64:                                               ; preds = %63
  br label %UnifiedUnreachableBlock

65:                                               ; preds = %63, %61
  ret void

UnifiedUnreachableBlock:                          ; preds = %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @func(i32 noundef 0)
  call void @func(i32 noundef 1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
