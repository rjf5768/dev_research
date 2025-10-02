; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78477.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78477.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i16 0, align 2
@a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = trunc i32 %3 to i16
  store i16 %4, i16* @b, align 2
  %5 = load i16, i16* @b, align 2
  %6 = zext i16 %5 to i32
  %7 = and i32 %6, 1
  %8 = load i32, i32* @a, align 4
  %9 = lshr i32 %8, %7
  store i32 %9, i32* @a, align 4
  %10 = load i16, i16* @b, align 2
  %11 = zext i16 %10 to i32
  %12 = shl i32 %11, 5
  %13 = or i32 1, %12
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* @b, align 2
  %15 = load i16, i16* @b, align 2
  %16 = zext i16 %15 to i32
  %17 = ashr i32 %16, 15
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* @b, align 2
  %19 = load i16, i16* @b, align 2
  %20 = trunc i16 %19 to i8
  %21 = zext i8 %20 to i32
  %22 = load i16, i16* @b, align 2
  %23 = trunc i16 %22 to i8
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 2, %24
  %26 = and i32 %25, 1
  %27 = icmp sgt i32 %21, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  store i16 0, i16* @b, align 2
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @foo(i32 noundef 12345)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #2
  unreachable

7:                                                ; preds = %0
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
