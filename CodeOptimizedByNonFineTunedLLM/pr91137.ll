; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr91137.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr91137.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@c = dso_local global [70 x i32] zeroinitializer, align 16
@d = dso_local global [70 x [70 x i32]] zeroinitializer, align 16
@e = dso_local global i32 0, align 4
@a = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = load i64*, i64** %3, align 8
  store i64 %6, i64* %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %52, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 70
  br i1 %7, label %8, label %55

8:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %39, %8
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 70
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load i32, i32* @b, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [70 x i32], [70 x i32]* @c, i64 0, i64 %17
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 70
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [70 x [70 x i32]], [70 x [70 x i32]]* @d, i64 0, i64 %25
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [70 x i32], [70 x i32]* %26, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [70 x [70 x i32]], [70 x [70 x i32]]* @d, i64 0, i64 %32
  %34 = getelementptr inbounds [70 x i32], [70 x i32]* %33, i64 0, i64 1
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %20, !llvm.loop !4

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %9, !llvm.loop !6

42:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 70
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* getelementptr inbounds ([70 x i32], [70 x i32]* @c, i64 0, i64 0), align 16
  store i32 %47, i32* @e, align 4
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %43, !llvm.loop !7

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %5, !llvm.loop !8

55:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 5, i32* @b, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %10, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 70
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [70 x i32], [70 x i32]* @c, i64 0, i64 %8
  store i32 2075593088, i32* %9, align 4
  br label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %2, align 4
  br label %3, !llvm.loop !9

13:                                               ; preds = %3
  call void @fn2()
  %14 = load i32, i32* @e, align 4
  call void @f(i64* noundef @a, i32 noundef %14)
  %15 = load i64, i64* @a, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @abort() #2
  unreachable

18:                                               ; preds = %13
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
