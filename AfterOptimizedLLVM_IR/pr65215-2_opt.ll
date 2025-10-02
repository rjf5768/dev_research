; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65215-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65215-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @bar(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = call i32 @foo(i32 noundef %5)
  %7 = zext i32 %6 to i64
  %8 = shl i64 %7, 32
  %9 = load i64*, i64** %2, align 8
  %10 = load i64, i64* %9, align 8
  %11 = lshr i64 %10, 32
  %12 = trunc i64 %11 to i32
  %13 = call i32 @foo(i32 noundef %12)
  %14 = zext i32 %13 to i64
  %15 = or i64 %8, %14
  ret i64 %15
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 24
  %5 = load i32, i32* %2, align 4
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 65280
  %8 = or i32 %4, %7
  %9 = load i32, i32* %2, align 4
  %10 = shl i32 %9, 8
  %11 = and i32 %10, 16711680
  %12 = or i32 %8, %11
  %13 = load i32, i32* %2, align 4
  %14 = shl i32 %13, 24
  %15 = or i32 %12, %14
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 @foo(i32 noundef -17973592)
  %4 = zext i32 %3 to i64
  %5 = call i32 @foo(i32 noundef -559038737)
  %6 = zext i32 %5 to i64
  %7 = shl i64 %6, 32
  %8 = or i64 %4, %7
  store i64 %8, i64* %2, align 8
  %9 = call i64 @bar(i64* noundef %2)
  %10 = icmp ne i64 %9, -77195986095718673
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #2
  unreachable

12:                                               ; preds = %0
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
