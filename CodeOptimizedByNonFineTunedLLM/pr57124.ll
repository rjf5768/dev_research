; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57124.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57124.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  %12 = load i16*, i16** %3, align 8
  %13 = load i16, i16* %12, align 2
  store i16 %13, i16* %5, align 2
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %16, 65536
  store i32 %17, i32* %8, align 4
  %18 = load i16*, i16** %4, align 8
  %19 = load i16, i16* %18, align 2
  store i16 %19, i16* %6, align 2
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i16, i16* %6, align 2
  %24 = zext i16 %23 to i32
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ule i32 %27, 268435455
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  call void @abort() #2
  unreachable

30:                                               ; preds = %2
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 -5, i16* %1, align 2
  store i16 -10, i16* %2, align 2
  call void @foo(i16* noundef %1, i16* noundef %2)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
