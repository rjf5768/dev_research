; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68328.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68328.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 1, align 4
@d = dso_local global i32 1, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  ret i32 4195552
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  call void asm sideeffect "", "imr,imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %6) #2, !srcloc !5
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @abort() #3
  unreachable

10:                                               ; preds = %2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 @foo()
  br label %8

8:                                                ; preds = %47, %1
  %9 = load i32, i32* @c, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @d, align 4
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %4, align 1
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i8, i8* %4, align 1
  %16 = sext i8 %15 to i32
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8, i8* %4, align 1
  %21 = sext i8 %20 to i32
  br label %23

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %3, align 1
  %26 = load i8, i8* %3, align 1
  %27 = sext i8 %26 to i32
  %28 = sub nsw i32 %27, 120
  %29 = trunc i32 %28 to i8
  %30 = zext i8 %29 to i32
  %31 = xor i32 %30, 1
  %32 = trunc i32 %31 to i8
  %33 = sext i8 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 97
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @a, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  call void @bar(i32 noundef 1193046, i32 noundef 0)
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32, i32* @b, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @e, align 4
  ret i32 %46

47:                                               ; preds = %42
  br label %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @baz(i32 noundef 2)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 104}
!5 = !{i64 224}
