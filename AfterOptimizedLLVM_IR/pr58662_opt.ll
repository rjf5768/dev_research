; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58662.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58662.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @a, align 4
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @foo(i32 noundef %5, i16 noundef signext -30000)
  store i32 %6, i32* @d, align 4
  %7 = load i32, i32* @d, align 4
  %8 = srem i32 %7, 14
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %2, align 1
  %10 = load i8, i8* %2, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* @c, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %0
  %17 = phi i1 [ false, %0 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  store volatile i32 %18, i32* @b, align 4
  %19 = load volatile i32, i32* @b, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @abort() #2
  unreachable

22:                                               ; preds = %16
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 noundef %0, i16 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i16 %1, i16* %4, align 2
  %5 = load i32, i32* %3, align 4
  %6 = load i16, i16* %4, align 2
  %7 = sext i16 %6 to i32
  %8 = sdiv i32 %5, %7
  ret i32 %8
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
