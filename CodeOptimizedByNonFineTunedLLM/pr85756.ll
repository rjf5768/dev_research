; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85756.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85756.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h = dso_local global i32 10, align 4
@p = dso_local global i32 0, align 4
@b = dso_local global i16 0, align 2
@f = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@e = dso_local global i32* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %3) #1, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 1, i32* %1, align 4
  store i32 430523, i32* %2, align 4
  store i32 1, i32* %4, align 4
  store i32* @h, i32** %5, align 8
  br label %6

6:                                                ; preds = %46, %0
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* @p, align 4
  %8 = load i32, i32* %1, align 4
  %9 = or i32 -65536, %8
  %10 = load i32, i32* %4, align 4
  %11 = sub i32 %9, %10
  %12 = sub i32 0, %11
  store i32 %12, i32* %2, align 4
  %13 = load i16, i16* @b, align 2
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 8
  %17 = xor i32 %16, -1
  %18 = shl i32 %14, %17
  store i32 %18, i32* @f, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i16, i16* @b, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %6
  %26 = phi i1 [ true, %6 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @f, align 4
  %29 = xor i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @p, align 4
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* @p, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 3
  %37 = zext i1 %36 to i32
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %25
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32* %3, i32** %5, align 8
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* @c, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @a, align 4
  call void @bar(i32 noundef %47)
  br label %6

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32*, i32** @e, align 8
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 204}
