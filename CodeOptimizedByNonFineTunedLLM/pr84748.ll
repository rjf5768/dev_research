; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84748.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84748.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g0 = dso_local global i64 0, align 8
@g1 = dso_local global i64 0, align 8
@a = dso_local global i32 0, align 4
@b = dso_local global i128 0, align 16
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @store(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  store i64 %5, i64* @g0, align 8
  %6 = load i64, i64* %4, align 8
  store i64 %6, i64* @g1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca i128, align 16
  %2 = load i32, i32* @a, align 4
  %3 = sext i32 %2 to i128
  %4 = load i128, i128* @b, align 16
  %5 = add i128 %4, %3
  store i128 %5, i128* @b, align 16
  %6 = load i32, i32* @d, align 4
  %7 = icmp ne i32 %6, 84347
  %8 = zext i1 %7 to i32
  store i32 %8, i32* @c, align 4
  %9 = load i32, i32* @c, align 4
  %10 = sext i32 %9 to i128
  %11 = load i128, i128* @b, align 16
  %12 = udiv i128 %11, %10
  store i128 %12, i128* @b, align 16
  %13 = load i128, i128* @b, align 16
  store i128 %13, i128* %1, align 16
  %14 = load i128, i128* %1, align 16
  %15 = lshr i128 %14, 0
  %16 = trunc i128 %15 to i64
  %17 = load i128, i128* %1, align 16
  %18 = lshr i128 %17, 64
  %19 = trunc i128 %18 to i64
  call void @store(i64 noundef %16, i64 noundef %19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  %2 = load i64, i64* @g0, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @g1, align 8
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
