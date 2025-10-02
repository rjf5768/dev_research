; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/int-compare.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/int-compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gt(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ge(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lt(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @le(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @true(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @false(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @gt(i32 noundef 2, i32 noundef 1)
  call void @true(i32 noundef %2)
  %3 = call i32 @gt(i32 noundef 1, i32 noundef 2)
  call void @false(i32 noundef %3)
  %4 = call i32 @gt(i32 noundef 2147483647, i32 noundef 0)
  call void @true(i32 noundef %4)
  %5 = call i32 @gt(i32 noundef 0, i32 noundef 2147483647)
  call void @false(i32 noundef %5)
  %6 = call i32 @gt(i32 noundef 2147483647, i32 noundef 1)
  call void @true(i32 noundef %6)
  %7 = call i32 @gt(i32 noundef 1, i32 noundef 2147483647)
  call void @false(i32 noundef %7)
  %8 = call i32 @gt(i32 noundef -2147483648, i32 noundef 0)
  call void @false(i32 noundef %8)
  %9 = call i32 @gt(i32 noundef 0, i32 noundef -2147483648)
  call void @true(i32 noundef %9)
  %10 = call i32 @gt(i32 noundef -2147483648, i32 noundef 1)
  call void @false(i32 noundef %10)
  %11 = call i32 @gt(i32 noundef 1, i32 noundef -2147483648)
  call void @true(i32 noundef %11)
  %12 = call i32 @gt(i32 noundef 2147483647, i32 noundef -2147483648)
  call void @true(i32 noundef %12)
  %13 = call i32 @gt(i32 noundef -2147483648, i32 noundef 2147483647)
  call void @false(i32 noundef %13)
  %14 = call i32 @ge(i32 noundef 2, i32 noundef 1)
  call void @true(i32 noundef %14)
  %15 = call i32 @ge(i32 noundef 1, i32 noundef 2)
  call void @false(i32 noundef %15)
  %16 = call i32 @ge(i32 noundef 2147483647, i32 noundef 0)
  call void @true(i32 noundef %16)
  %17 = call i32 @ge(i32 noundef 0, i32 noundef 2147483647)
  call void @false(i32 noundef %17)
  %18 = call i32 @ge(i32 noundef 2147483647, i32 noundef 1)
  call void @true(i32 noundef %18)
  %19 = call i32 @ge(i32 noundef 1, i32 noundef 2147483647)
  call void @false(i32 noundef %19)
  %20 = call i32 @ge(i32 noundef -2147483648, i32 noundef 0)
  call void @false(i32 noundef %20)
  %21 = call i32 @ge(i32 noundef 0, i32 noundef -2147483648)
  call void @true(i32 noundef %21)
  %22 = call i32 @ge(i32 noundef -2147483648, i32 noundef 1)
  call void @false(i32 noundef %22)
  %23 = call i32 @ge(i32 noundef 1, i32 noundef -2147483648)
  call void @true(i32 noundef %23)
  %24 = call i32 @ge(i32 noundef 2147483647, i32 noundef -2147483648)
  call void @true(i32 noundef %24)
  %25 = call i32 @ge(i32 noundef -2147483648, i32 noundef 2147483647)
  call void @false(i32 noundef %25)
  %26 = call i32 @lt(i32 noundef 2, i32 noundef 1)
  call void @false(i32 noundef %26)
  %27 = call i32 @lt(i32 noundef 1, i32 noundef 2)
  call void @true(i32 noundef %27)
  %28 = call i32 @lt(i32 noundef 2147483647, i32 noundef 0)
  call void @false(i32 noundef %28)
  %29 = call i32 @lt(i32 noundef 0, i32 noundef 2147483647)
  call void @true(i32 noundef %29)
  %30 = call i32 @lt(i32 noundef 2147483647, i32 noundef 1)
  call void @false(i32 noundef %30)
  %31 = call i32 @lt(i32 noundef 1, i32 noundef 2147483647)
  call void @true(i32 noundef %31)
  %32 = call i32 @lt(i32 noundef -2147483648, i32 noundef 0)
  call void @true(i32 noundef %32)
  %33 = call i32 @lt(i32 noundef 0, i32 noundef -2147483648)
  call void @false(i32 noundef %33)
  %34 = call i32 @lt(i32 noundef -2147483648, i32 noundef 1)
  call void @true(i32 noundef %34)
  %35 = call i32 @lt(i32 noundef 1, i32 noundef -2147483648)
  call void @false(i32 noundef %35)
  %36 = call i32 @lt(i32 noundef 2147483647, i32 noundef -2147483648)
  call void @false(i32 noundef %36)
  %37 = call i32 @lt(i32 noundef -2147483648, i32 noundef 2147483647)
  call void @true(i32 noundef %37)
  %38 = call i32 @le(i32 noundef 2, i32 noundef 1)
  call void @false(i32 noundef %38)
  %39 = call i32 @le(i32 noundef 1, i32 noundef 2)
  call void @true(i32 noundef %39)
  %40 = call i32 @le(i32 noundef 2147483647, i32 noundef 0)
  call void @false(i32 noundef %40)
  %41 = call i32 @le(i32 noundef 0, i32 noundef 2147483647)
  call void @true(i32 noundef %41)
  %42 = call i32 @le(i32 noundef 2147483647, i32 noundef 1)
  call void @false(i32 noundef %42)
  %43 = call i32 @le(i32 noundef 1, i32 noundef 2147483647)
  call void @true(i32 noundef %43)
  %44 = call i32 @le(i32 noundef -2147483648, i32 noundef 0)
  call void @true(i32 noundef %44)
  %45 = call i32 @le(i32 noundef 0, i32 noundef -2147483648)
  call void @false(i32 noundef %45)
  %46 = call i32 @le(i32 noundef -2147483648, i32 noundef 1)
  call void @true(i32 noundef %46)
  %47 = call i32 @le(i32 noundef 1, i32 noundef -2147483648)
  call void @false(i32 noundef %47)
  %48 = call i32 @le(i32 noundef 2147483647, i32 noundef -2147483648)
  call void @false(i32 noundef %48)
  %49 = call i32 @le(i32 noundef -2147483648, i32 noundef 2147483647)
  call void @true(i32 noundef %49)
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f()
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
