; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071216-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071216-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar() #0 {
  %1 = load i32, i32* @x, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i32 @bar()
  %4 = sext i32 %3 to i64
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp ult i64 %5, -4095
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i64, i64* %2, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  br label %19

10:                                               ; preds = %0
  %11 = load i64, i64* %2, align 8
  %12 = sub nsw i64 0, %11
  %13 = icmp ne i64 %12, 38
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i64 -2, i64* %2, align 8
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i64, i64* %2, align 8
  %17 = add nsw i64 %16, 1
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %15, %7
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 26, i32* @x, align 4
  %2 = call i32 @foo()
  %3 = icmp ne i32 %2, 26
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  store i32 -39, i32* @x, align 4
  %6 = call i32 @foo()
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  store i32 -38, i32* @x, align 4
  %10 = call i32 @foo()
  %11 = icmp ne i32 %10, -37
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
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
