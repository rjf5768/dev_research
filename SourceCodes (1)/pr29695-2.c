; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr29695-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr29695-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 128, align 4
@b = dso_local global i8 -128, align 1
@c = dso_local global i64 2147483648, align 8
@d = dso_local global i32 -2147483648, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1() #0 {
  %1 = load i32, i32* @a, align 4
  %2 = and i32 %1, 128
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i32 128, i32 0
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2() #0 {
  %1 = load i8, i8* @b, align 1
  %2 = zext i8 %1 to i32
  %3 = and i32 %2, 128
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i32 128, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f3() #0 {
  %1 = load i8, i8* @b, align 1
  %2 = zext i8 %1 to i32
  %3 = and i32 %2, 128
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i32 896, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f4() #0 {
  %1 = load i8, i8* @b, align 1
  %2 = zext i8 %1 to i32
  %3 = and i32 %2, 128
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i32 -128, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f5() #0 {
  %1 = load i64, i64* @c, align 8
  %2 = and i64 %1, 2147483648
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i64 2147483648, i64 0
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f6() #0 {
  %1 = load i32, i32* @d, align 4
  %2 = and i32 %1, -2147483648
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i64 2147483648, i64 0
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f7() #0 {
  %1 = load i32, i32* @d, align 4
  %2 = and i32 %1, -2147483648
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i64 15032385536, i64 0
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f8() #0 {
  %1 = load i32, i32* @d, align 4
  %2 = and i32 %1, -2147483648
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i64 -2147483648, i64 0
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f1()
  %3 = icmp ne i32 %2, 128
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call i32 @f2()
  %7 = icmp ne i32 %6, 128
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call i32 @f3()
  %11 = icmp ne i32 %10, 896
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  %14 = call i32 @f4()
  %15 = icmp ne i32 %14, -128
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call i64 @f5()
  %19 = icmp ne i64 %18, 2147483648
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call i64 @f6()
  %23 = icmp ne i64 %22, 2147483648
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #2
  unreachable

25:                                               ; preds = %21
  %26 = call i64 @f7()
  %27 = icmp ne i64 %26, 15032385536
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #2
  unreachable

29:                                               ; preds = %25
  %30 = call i64 @f8()
  %31 = icmp ne i64 %30, -2147483648
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
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
