; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041019-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041019-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_store_ccp(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* %4, i32** %3, align 8
  br label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp sgt i32 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32* %5, i32** %3, align 8
  br label %15

14:                                               ; preds = %10
  store i32* %6, i32** %3, align 8
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i32*, i32** %3, align 8
  store i32 10, i32* %17, align 4
  store i32 3, i32* %5, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 2
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_store_copy_prop(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* %4, i32** %3, align 8
  br label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp sgt i32 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32* %5, i32** %3, align 8
  br label %15

14:                                               ; preds = %10
  store i32* %6, i32** %3, align 8
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i32, i32* %2, align 4
  %18 = load i32*, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %21, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @test_store_ccp(i32 noundef 10)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 12
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #2
  unreachable

7:                                                ; preds = %0
  %8 = call i32 @test_store_copy_prop(i32 noundef 9)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @abort() #2
  unreachable

12:                                               ; preds = %7
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
