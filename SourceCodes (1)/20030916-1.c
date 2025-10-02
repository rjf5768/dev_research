; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030916-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030916-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i8 16, i8* %3, align 1
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %10, 232
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %3, align 1
  %13 = load i32*, i32** %2, align 8
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 0, i32* %16, align 4
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = sub nsw i32 %18, 231
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %3, align 1
  br label %21

21:                                               ; preds = %8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %5, !llvm.loop !4

24:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %9
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %4, !llvm.loop !6

14:                                               ; preds = %4
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0
  call void @f(i32* noundef %15)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %35, %14
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 248
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i1 [ false, %19 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = icmp ne i32 %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @abort() #2
  unreachable

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %16, !llvm.loop !7

38:                                               ; preds = %16
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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
