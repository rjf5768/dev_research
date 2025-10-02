; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr19005.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr19005.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global i32 0, align 4
@s = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @v, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %5, align 1
  %8 = load i32, i32* @s, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %18, 1
  %20 = trunc i32 %19 to i8
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %10
  call void @abort() #2
  unreachable

24:                                               ; preds = %15
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %28, 1
  %30 = trunc i32 %29 to i8
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %26, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %25
  call void @abort() #2
  unreachable

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* @s, align 4
  %42 = xor i32 %41, 1
  store i32 %42, i32* @s, align 4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %3, align 1
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 1
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %4, align 1
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  call void @bar(i32 noundef %11, i32 noundef %13)
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* %3, align 1
  %17 = zext i8 %16 to i32
  %18 = xor i32 %17, %15
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %3, align 1
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %4, align 1
  %26 = load i8, i8* %4, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = xor i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %3, align 1
  %32 = load i8, i8* %3, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %4, align 1
  %35 = zext i8 %34 to i32
  call void @bar(i32 noundef %33, i32 noundef %35)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -10, i32* @v, align 4
  br label %2

2:                                                ; preds = %8, %0
  %3 = load i32, i32* @v, align 4
  %4 = icmp slt i32 %3, 266
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load i32, i32* @v, align 4
  %7 = call i32 @foo(i32 noundef %6)
  br label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @v, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @v, align 4
  br label %2, !llvm.loop !4

11:                                               ; preds = %2
  ret i32 0
}

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
