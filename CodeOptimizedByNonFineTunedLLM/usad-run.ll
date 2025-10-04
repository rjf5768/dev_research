; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/usad-run.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/usad-run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @foo(i8* noundef %9, i32 noundef 16, i8* noundef %10, i32 noundef %11)
  %13 = load i32*, i32** %8, align 8
  store i32 %12, i32* %13, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %48, %4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = sub nsw i32 %25, %31
  %33 = call i32 @abs(i32 noundef %32) #3
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %16, !llvm.loop !4

39:                                               ; preds = %16
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %12, !llvm.loop !6

51:                                               ; preds = %12
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %48, %0
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %51

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = srem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = srem i32 %14, 8
  %16 = mul nsw i32 %15, 2
  %17 = add nsw i32 %16, 1
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %20
  store i8 %18, i8* %21, align 1
  %22 = load i32, i32* %5, align 4
  %23 = srem i32 %22, 8
  %24 = sub nsw i32 0, %23
  %25 = trunc i32 %24 to i8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %27
  store i8 %25, i8* %28, align 1
  br label %47

29:                                               ; preds = %9
  %30 = load i32, i32* %5, align 4
  %31 = srem i32 %30, 8
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %32, 2
  %34 = sub nsw i32 0, %33
  %35 = trunc i32 %34 to i8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %37
  store i8 %35, i8* %38, align 1
  %39 = load i32, i32* %5, align 4
  %40 = srem i32 %39, 8
  %41 = ashr i32 %40, 1
  %42 = sub nsw i32 0, %41
  %43 = trunc i32 %42 to i8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %45
  store i8 %43, i8* %46, align 1
  br label %47

47:                                               ; preds = %29, %13
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %6, !llvm.loop !7

51:                                               ; preds = %6
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  call void @bar(i8* noundef %52, i8* noundef %53, i32 noundef 16, i32* noundef %4)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 32384
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  call void @abort() #4
  unreachable

57:                                               ; preds = %51
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: nocallback nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nounwind readnone willreturn }
attributes #4 = { noreturn }

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
