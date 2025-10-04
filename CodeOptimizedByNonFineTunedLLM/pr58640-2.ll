; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58640-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58640-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [20 x i32] zeroinitializer, align 16
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @a, i64 0, i64 12), align 16
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %56, %0
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %59

9:                                                ; preds = %6
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %52, %9
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %55

13:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @a, i64 0, i64 12), align 16
  %19 = icmp sgt i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %5, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %60

26:                                               ; preds = %17
  %27 = load i32, i32* @b, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %34

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %14, !llvm.loop !4

34:                                               ; preds = %29, %14
  store i32 0, i32* @c, align 4
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i32, i32* @c, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = mul nsw i32 %39, 3
  %41 = add nsw i32 %40, 9
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* @a, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [20 x i32], [20 x i32]* @a, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @c, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @c, align 4
  br label %35, !llvm.loop !6

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %10, !llvm.loop !7

55:                                               ; preds = %10
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %6, !llvm.loop !8

59:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %59, %25
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @fn1()
  %3 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @a, i64 0, i64 0), align 16
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
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
