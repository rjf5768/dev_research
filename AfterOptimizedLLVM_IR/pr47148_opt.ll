; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47148.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47148.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = internal global i32 1, align 4
@a = internal global i32 1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo(i8 noundef zeroext 1, i32 noundef 1)
  call void @foo(i8 noundef zeroext -1, i32 noundef 1)
  %2 = load i32, i32* @b, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(i8 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %35

10:                                               ; preds = %2
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 %12, 2
  %14 = udiv i32 28672, %13
  %15 = load i32, i32* @a, align 4
  %16 = xor i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @a, align 4
  %18 = load i32, i32* @a, align 4
  %19 = call i32 @bar(i32 noundef %17, i32 noundef %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @a, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %10
  %25 = load i32, i32* @a, align 4
  %26 = sub i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %24, %10
  %29 = phi i1 [ false, %10 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %30, %31
  %33 = load i32, i32* @b, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* @b, align 4
  br label %35

35:                                               ; preds = %28, %9
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @bar(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp uge i32 %6, 32
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %3, align 4
  br label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = lshr i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %8
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
