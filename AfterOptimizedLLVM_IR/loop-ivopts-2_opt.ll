; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-ivopts-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-ivopts-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %34, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 288
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 280
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi i1 [ true, %7 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = add nsw i32 7, %20
  %22 = load i32, i32* %3, align 4
  %23 = icmp sge i32 %22, 144
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 256
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i1 [ false, %18 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %21, %29
  %31 = icmp ne i32 %12, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void @abort() #2
  unreachable

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %4, !llvm.loop !4

37:                                               ; preds = %4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [288 x i32], align 16
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 144
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [288 x i32], [288 x i32]* %3, i64 0, i64 %9
  store i32 8, i32* %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %2, align 4
  br label %4, !llvm.loop !6

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %22, %14
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [288 x i32], [288 x i32]* %3, i64 0, i64 %20
  store i32 9, i32* %21, align 4
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %15, !llvm.loop !7

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %33, %25
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 280
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [288 x i32], [288 x i32]* %3, i64 0, i64 %31
  store i32 7, i32* %32, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %26, !llvm.loop !8

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %44, %36
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 288
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [288 x i32], [288 x i32]* %3, i64 0, i64 %42
  store i32 8, i32* %43, align 4
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %37, !llvm.loop !9

47:                                               ; preds = %37
  %48 = getelementptr inbounds [288 x i32], [288 x i32]* %3, i64 0, i64 0
  call void @check(i32* noundef %48)
  ret i32 0
}

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
