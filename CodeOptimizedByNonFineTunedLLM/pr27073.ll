; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr27073.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr27073.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef signext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i16 %4, i16* %15, align 2
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load i16, i16* %15, align 2
  %23 = sext i16 %22 to i32
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %28, %10
  %25 = load i32, i32* %21, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %21, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load i32, i32* %16, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %11, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i32, i32* %18, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* %19, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  br label %24, !llvm.loop !4

44:                                               ; preds = %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  call void @foo(i32* noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i16 noundef signext 2, i32 noundef 100, i32 noundef 200, i32 noundef 300, i32 noundef 400, i32 noundef 500)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = srem i32 %13, 5
  %15 = add nsw i32 %14, 1
  %16 = mul nsw i32 %15, 100
  %17 = icmp ne i32 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  call void @abort() #2
  unreachable

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5, !llvm.loop !6

23:                                               ; preds = %5
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
