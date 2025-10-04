; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20140212-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20140212-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 1, align 4
@f = dso_local global i32 1, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@j = dso_local global i8 0, align 1
@g = dso_local global i8 0, align 1
@i = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn1() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @e, align 4
  store i32 0, i32* @c, align 4
  br label %2

2:                                                ; preds = %43, %0
  %3 = load i32, i32* @a, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load i32, i32* @b, align 4
  %7 = icmp ne i32 %6, 0
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i1 [ false, %2 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  store i32 %10, i32* @k, align 4
  %11 = load i32, i32* @k, align 4
  %12 = mul nsw i32 %11, 54
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* @j, align 1
  %14 = load i8, i8* @j, align 1
  %15 = sext i8 %14 to i32
  %16 = mul nsw i32 %15, 147
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* @g, align 1
  %18 = load i8, i8* @g, align 1
  %19 = sext i8 %18 to i32
  %20 = xor i32 %19, -1
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* @e, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  br label %27

27:                                               ; preds = %26, %8
  %28 = phi i1 [ false, %8 ], [ true, %26 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* @d, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %1, align 4
  store i32 %33, i32* @c, align 4
  br label %39

34:                                               ; preds = %27
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 9
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* @i, align 4
  store i32 %38, i32* @h, align 4
  br label %39

39:                                               ; preds = %34, %32
  %40 = load i32, i32* @f, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  ret void

43:                                               ; preds = %39
  br label %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @fn1()
  %2 = load i32, i32* @c, align 4
  %3 = icmp ne i32 %2, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
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
