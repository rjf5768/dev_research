; ModuleID = './pr85756.ll'
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
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0) #1, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %26, %0
  %.03 = phi i32* [ @h, %0 ], [ %.1, %26 ]
  %.02 = phi i32 [ 1, %0 ], [ %15, %26 ]
  %.01 = phi i32 [ 430523, %0 ], [ %.neg, %26 ]
  %.0 = phi i32 [ 1, %0 ], [ %16, %26 ]
  store i32 %.01, i32* @p, align 4
  %3 = or i32 %.0, -65536
  %.neg = sub i32 %.02, %3
  %4 = load i16, i16* @b, align 2
  %5 = sext i16 %4 to i32
  %6 = sub i32 7, %.02
  %7 = shl i32 %5, %6
  store i32 %7, i32* @f, align 4
  %.not = icmp eq i32 %.neg, 0
  br i1 %.not, label %8, label %11

8:                                                ; preds = %2
  %9 = load i16, i16* @b, align 2
  %10 = icmp ne i16 %9, 0
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ true, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @f, align 4
  %15 = xor i32 %14, %13
  %16 = load i32, i32* @p, align 4
  %17 = icmp ult i32 %16, %.neg
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 3
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %.03, align 4
  br label %22

22:                                               ; preds = %18, %11
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %23, label %24

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23, %22
  %.1 = phi i32* [ %.03, %22 ], [ %1, %23 ]
  %25 = load i32, i32* @c, align 4
  %.not5 = icmp eq i32 %25, 0
  br i1 %.not5, label %28, label %26

26:                                               ; preds = %24
  %27 = load i32, i32* @a, align 4
  call void @bar(i32 noundef %27)
  br label %2

28:                                               ; preds = %24
  %29 = load i32, i32* %.1, align 4
  %.not6 = icmp eq i32 %29, 0
  br i1 %.not6, label %30, label %32

30:                                               ; preds = %28
  %31 = load i32*, i32** @e, align 8
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
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
