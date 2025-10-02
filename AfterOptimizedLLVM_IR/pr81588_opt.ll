; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81588.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81588.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  call void asm sideeffect "", "imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %4) #2, !srcloc !4
  %5 = load i32, i32* %2, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = mul i32 4, %11
  %13 = zext i32 %12 to i64
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i64, i64* %5, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @bar(i32 noundef %17)
  store i32 1, i32* %3, align 4
  br label %20

19:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %15, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store volatile i32 10, i32* %2, align 4
  store volatile i64 -10000, i64* %3, align 8
  %4 = load volatile i32, i32* %2, align 4
  %5 = load volatile i64, i64* %3, align 8
  %6 = call i32 @foo(i32 noundef %4, i64 noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #3
  unreachable

9:                                                ; preds = %0
  store volatile i64 -1, i64* %3, align 8
  %10 = load volatile i32, i32* %2, align 4
  %11 = load volatile i64, i64* %3, align 8
  %12 = call i32 @foo(i32 noundef %10, i64 noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  call void @abort() #3
  unreachable

15:                                               ; preds = %9
  store volatile i64 0, i64* %3, align 8
  %16 = load volatile i32, i32* %2, align 4
  %17 = load volatile i64, i64* %3, align 8
  %18 = call i32 @foo(i32 noundef %16, i64 noundef %17)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  call void @abort() #3
  unreachable

21:                                               ; preds = %15
  store volatile i64 39, i64* %3, align 8
  %22 = load volatile i32, i32* %2, align 4
  %23 = load volatile i64, i64* %3, align 8
  %24 = call i32 @foo(i32 noundef %22, i64 noundef %23)
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @abort() #3
  unreachable

27:                                               ; preds = %21
  store volatile i64 40, i64* %3, align 8
  %28 = load volatile i32, i32* %2, align 4
  %29 = load volatile i64, i64* %3, align 8
  %30 = call i32 @foo(i32 noundef %28, i64 noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void @abort() #3
  unreachable

33:                                               ; preds = %27
  store volatile i64 10000, i64* %3, align 8
  %34 = load volatile i32, i32* %2, align 4
  %35 = load volatile i64, i64* %3, align 8
  %36 = call i32 @foo(i32 noundef %34, i64 noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @abort() #3
  unreachable

39:                                               ; preds = %33
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

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
!4 = !{i64 107}
