; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81556.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81556.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i64 -5174645608211675751, align 8
@c = dso_local global i64 -3105204974106010226, align 8
@d = dso_local global i64 2, align 8
@f = dso_local global i64 1, align 8
@g = dso_local global i64 0, align 8
@h = dso_local global i64 0, align 8
@e = dso_local global i64 -975186032896380117, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca i8, align 1
  %2 = load i64, i64* @d, align 8
  %3 = icmp ugt i64 %2, 1
  %4 = zext i1 %3 to i8
  store i8 %4, i8* %1, align 1
  %5 = load i64, i64* @f, align 8
  %6 = load i64, i64* @d, align 8
  %7 = icmp ugt i64 %6, 1
  %8 = zext i1 %7 to i32
  %9 = shl i32 %8, 9
  %10 = sext i32 %9 to i64
  %11 = urem i64 %5, %10
  store i64 %11, i64* @g, align 8
  %12 = load i8, i8* %1, align 1
  %13 = trunc i8 %12 to i1
  %14 = zext i1 %13 to i64
  %15 = load i64, i64* @e, align 8
  %16 = load i8, i8* %1, align 1
  %17 = trunc i8 %16 to i1
  %18 = zext i1 %17 to i64
  %19 = load i64, i64* @b, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* @c, align 8
  %22 = and i64 %20, %21
  %23 = and i64 %15, %22
  %24 = and i64 %14, %23
  store i64 %24, i64* @h, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  %2 = load i64, i64* @g, align 8
  %3 = icmp ne i64 %2, 1
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @h, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %4
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
