; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/shiftdi.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/shiftdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @g(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64* noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = lshr i64 %10, %12
  %14 = and i64 %13, 4294967295
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 31
  %17 = zext i32 %16 to i64
  %18 = shl i64 %14, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = and i64 %21, 4294967295
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = shl i64 %22, %24
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %25
  store i64 %28, i64* %26, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  call void @g(i64 noundef -2401053092593056409, i32 noundef 0, i32 noundef 0, i64* noundef %2)
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 19088743
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i32 0, i32 1
  ret i32 %6
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
