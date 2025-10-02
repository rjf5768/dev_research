; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/compare-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/compare-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @link_error0()
  br label %13

13:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @link_error0()
  br label %13

13:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @link_error0()
  br label %13

13:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  br label %14

13:                                               ; preds = %8
  call void @link_error1()
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  br label %14

13:                                               ; preds = %8
  call void @link_error1()
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test6(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  br label %14

13:                                               ; preds = %8
  call void @link_error1()
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @all_tests(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  call void @test1(i32 noundef %5, i32 noundef %6)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  call void @test2(i32 noundef %7, i32 noundef %8)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  call void @test3(i32 noundef %9, i32 noundef %10)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  call void @test4(i32 noundef %11, i32 noundef %12)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  call void @test5(i32 noundef %13, i32 noundef %14)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  call void @test6(i32 noundef %15, i32 noundef %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @all_tests(i32 noundef 0, i32 noundef 0)
  call void @all_tests(i32 noundef 1, i32 noundef 2)
  call void @all_tests(i32 noundef 4, i32 noundef 3)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error0() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error1() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
