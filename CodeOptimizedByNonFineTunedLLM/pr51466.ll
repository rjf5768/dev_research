; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51466.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51466.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %6
  store volatile i32 6, i32* %7, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %9
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %6
  store volatile i32 6, i32* %7, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %9
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  store i32 8, i32* %11, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %13
  %15 = load volatile i32, i32* %14, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %6
  store volatile i32 6, i32* %7, align 4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  store i32 8, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %11
  %13 = load volatile i32, i32* %12, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo(i32 noundef 3)
  %3 = icmp ne i32 %2, 6
  br i1 %3, label %13, label %4

4:                                                ; preds = %0
  %5 = call i32 @bar(i32 noundef 2)
  %6 = icmp ne i32 %5, 8
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = call i32 @baz(i32 noundef 0)
  %9 = icmp ne i32 %8, 8
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call i32 @baz(i32 noundef 1)
  %12 = icmp ne i32 %11, 6
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %7, %4, %0
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
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
