; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/shiftopt-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/shiftopt-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @utest(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 0
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @link_error()
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i32, i32* %2, align 4
  %10 = shl i32 %9, 0
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @link_error()
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %2, align 4
  %16 = shl i32 0, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @link_error()
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, i32* %2, align 4
  %21 = ashr i32 0, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @link_error()
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %2, align 4
  %26 = ashr i32 -1, %25
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @link_error()
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, i32* %2, align 4
  %31 = ashr i32 -1, %30
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @link_error()
  br label %34

34:                                               ; preds = %33, %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error() #0 {
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @stest(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = ashr i32 %3, 0
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @link_error()
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i32, i32* %2, align 4
  %10 = shl i32 %9, 0
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @link_error()
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %2, align 4
  %16 = shl i32 0, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @link_error()
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, i32* %2, align 4
  %21 = ashr i32 0, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @link_error()
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @utest(i32 noundef 9)
  call void @utest(i32 noundef 0)
  call void @stest(i32 noundef 9)
  call void @stest(i32 noundef 0)
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
