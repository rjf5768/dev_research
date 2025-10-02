; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr24716.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr24716.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Link = dso_local global [1 x i32] [i32 -1], align 4
@W = dso_local global [1 x i32] [i32 2], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %82, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %17, %11
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %12, label %20, !llvm.loop !4

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %8
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %83

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %30
  br label %26, !llvm.loop !6

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [1 x i32], [1 x i32]* @W, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %52, %39
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1 x i32], [1 x i32]* @W, i64 0, i64 %49
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %44
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %44, label %55, !llvm.loop !7

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %39, label %59, !llvm.loop !8

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %79, %59
  store i32 0, i32* %4, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [1 x i32], [1 x i32]* @Link, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %77, %60
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %69
  br label %65, !llvm.loop !9

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %60, label %82, !llvm.loop !10

82:                                               ; preds = %79
  store i32 1, i32* %6, align 4
  br label %8

83:                                               ; preds = %24
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f(i32 noundef 0, i32 noundef 2)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

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
!10 = distinct !{!10, !5}
