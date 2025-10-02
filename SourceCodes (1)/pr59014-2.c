; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59014-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59014-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i64, i64* %5, align 8
  %9 = trunc i64 %8 to i32
  %10 = or i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i64 6, i64* %3, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i64, i64* %3, align 8
  ret i64 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 16, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = shl i64 3, %7
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = shl i64 %8, %10
  store i64 %11, i64* %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = zext i32 %12 to i64
  %14 = shl i64 5, %13
  %15 = load i32, i32* %2, align 4
  %16 = zext i32 %15 to i64
  %17 = shl i64 %14, %16
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @foo(i64 noundef %18, i64 noundef %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* %2, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 8, %23
  %25 = load i32, i32* %2, align 4
  %26 = zext i32 %25 to i64
  %27 = shl i64 %24, %26
  %28 = icmp ne i64 %21, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %0
  call void @abort() #2
  unreachable

30:                                               ; preds = %0
  ret i32 0
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
