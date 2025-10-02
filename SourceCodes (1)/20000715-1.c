; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000715-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000715-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@y = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  br label %12

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ %7, %6 ], [ %10, %9 ]
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #2
  unreachable

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #2
  unreachable

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #2
  unreachable

24:                                               ; preds = %20
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  br label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %8, %7 ], [ %11, %10 ]
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @abort() #2
  unreachable

18:                                               ; preds = %13
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @abort() #2
  unreachable

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  store i32 2, i32* %2, align 4
  store i32 3, i32* %3, align 4
  store i32 2, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  br label %14

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %9, %8 ], [ %12, %11 ]
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @abort() #2
  unreachable

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @abort() #2
  unreachable

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4() #0 {
  call void @init_xy()
  %1 = load i32, i32* @x, align 4
  %2 = load i32, i32* @y, align 4
  %3 = icmp slt i32 %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @x, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @x, align 4
  br label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @y, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @y, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i32 [ %5, %4 ], [ %8, %7 ]
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
  %15 = load i32, i32* @x, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @abort() #2
  unreachable

18:                                               ; preds = %14
  %19 = load i32, i32* @y, align 4
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @abort() #2
  unreachable

22:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_xy() #0 {
  store i32 3, i32* @x, align 4
  store i32 2, i32* @y, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5() #0 {
  %1 = alloca i32, align 4
  call void @init_xy()
  %2 = load i32, i32* @x, align 4
  %3 = load i32, i32* @y, align 4
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @x, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @x, align 4
  br label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @y, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @y, align 4
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ %6, %5 ], [ %9, %8 ]
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @abort() #2
  unreachable

16:                                               ; preds = %11
  %17 = load i32, i32* @x, align 4
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #2
  unreachable

20:                                               ; preds = %16
  %21 = load i32, i32* @y, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #2
  unreachable

24:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test6() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  store i32 2, i32* %2, align 4
  call void @init_xy()
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @y, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @x, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @x, align 4
  br label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @y, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @y, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %8, %7 ], [ %11, %10 ]
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @abort() #2
  unreachable

18:                                               ; preds = %13
  %19 = load i32, i32* @x, align 4
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @abort() #2
  unreachable

22:                                               ; preds = %18
  %23 = load i32, i32* @y, align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test1()
  call void @test2()
  call void @test3()
  call void @test4()
  call void @test5()
  call void @test6()
  call void @exit(i32 noundef 0) #2
  unreachable
}

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
