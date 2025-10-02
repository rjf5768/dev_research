; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr83383.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr83383.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i64 16, align 8
@b = dso_local global i8 -61, align 1
@c = dso_local global i64 -1, align 8
@d = dso_local global i8 1, align 1
@e = dso_local global [2 x i64] [i64 3625445792498952486, i64 0], align 16
@f = dso_local global [2 x i64] [i64 0, i64 8985037393681294663], align 16
@g = dso_local global i64 5052410635626804928, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = load i64, i64* @a, align 8
  %2 = trunc i64 %1 to i8
  %3 = sext i8 %2 to i32
  %4 = load i8, i8* @b, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp slt i32 %3, %5
  %7 = zext i1 %6 to i32
  %8 = sext i32 %7 to i64
  store i64 %8, i64* @a, align 8
  %9 = load i8, i8* @d, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @e, i64 0, i64 0), align 16
  br label %15

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i64 [ %13, %12 ], [ 0, %14 ]
  %17 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @f, i64 0, i64 1), align 8
  %18 = load i64, i64* @a, align 8
  %19 = mul i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %24

22:                                               ; preds = %15
  %23 = load i64, i64* @g, align 8
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i64 [ 1, %21 ], [ %23, %22 ]
  %26 = sub i64 %16, %25
  store i64 %26, i64* @c, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  %2 = load i64, i64* @a, align 8
  %3 = icmp ne i64 %2, 1
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @c, align 8
  %6 = icmp ne i64 %5, 3625445792498952485
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
