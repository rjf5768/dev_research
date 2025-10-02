; ModuleID = './pr70005.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70005.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i8 6, align 1
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @fn1()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @fn1() #0 {
  %1 = load i8, i8* @a, align 1
  %2 = icmp ugt i8 %1, 1
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %7

4:                                                ; preds = %0
  %5 = load i8, i8* @a, align 1
  %6 = zext i8 %5 to i32
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i32 [ 1, %3 ], [ %6, %4 ]
  %9 = load i8, i8* @a, align 1
  %.not = icmp eq i8 %9, 0
  br i1 %.not, label %14, label %10

10:                                               ; preds = %7
  %11 = load i8, i8* @a, align 1
  %12 = zext i8 %11 to i32
  store i32 %12, i32* @b, align 4
  %13 = icmp ne i8 %11, 0
  %phi.cast = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ 0, %7 ], [ %phi.cast, %10 ]
  store i32 %15, i32* @c, align 4
  %16 = load i8, i8* @a, align 1
  %17 = xor i32 %15, -1
  %18 = load i32, i32* @b, align 4
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8, i8* @a, align 1
  %21 = icmp ne i8 %20, 0
  %phi.cast3 = zext i1 %21 to i32
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i32 [ 1, %14 ], [ %phi.cast3, %19 ]
  %24 = load i8, i8* @a, align 1
  %25 = xor i8 %24, -1
  %.not4 = icmp eq i8 %24, 0
  br i1 %.not4, label %27, label %26

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %22
  %.0 = phi i32 [ 0, %26 ], [ %17, %22 ]
  %.not5 = icmp eq i8 %24, -1
  br i1 %.not5, label %32, label %28

28:                                               ; preds = %27
  %.not11 = icmp eq i32 %23, 0
  br i1 %.not11, label %32, label %29

29:                                               ; preds = %28
  %30 = load i8, i8* @a, align 1
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %29, %28, %27
  %.01 = phi i32 [ %31, %29 ], [ 0, %28 ], [ 0, %27 ]
  %33 = mul nsw i32 %.0, %.01
  %34 = zext i8 %25 to i32
  %35 = mul nsw i32 %33, %34
  %.neg = add nsw i32 %35, 1
  %36 = load i32, i32* @c, align 4
  %37 = sub i32 0, %36
  %.not6 = icmp eq i32 %.neg, %37
  br i1 %.not6, label %44, label %38

38:                                               ; preds = %32
  %.not9 = icmp eq i8 %16, 0
  br i1 %.not9, label %39, label %41

39:                                               ; preds = %38
  %40 = icmp ne i32 %8, 0
  %phi.cast10 = zext i1 %40 to i32
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i32 [ 1, %38 ], [ %phi.cast10, %39 ]
  %43 = icmp ne i32 %42, %.0
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi i1 [ false, %32 ], [ %43, %41 ]
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  call void @abort() #2
  unreachable

47:                                               ; preds = %44
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
