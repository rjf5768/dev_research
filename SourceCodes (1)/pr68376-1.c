; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68376-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68376-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 1, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %30, %0
  %4 = load i32, i32* @a, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %33

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %26, %6
  %8 = load i32, i32* @b, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = load i8, i8* @d, align 1
  %12 = sext i8 %11 to i32
  %13 = xor i32 %12, -1
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %2, align 1
  %15 = load i8, i8* @d, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i8, i8* @d, align 1
  store i8 %19, i8* %2, align 1
  br label %20

20:                                               ; preds = %18, %10
  %21 = load i8, i8* %2, align 1
  store i8 %21, i8* @d, align 1
  %22 = load i32, i32* @c, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void @abort() #2
  unreachable

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @b, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @b, align 4
  br label %7, !llvm.loop !4

29:                                               ; preds = %7
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* @a, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @a, align 4
  br label %3, !llvm.loop !6

33:                                               ; preds = %3
  %34 = load i8, i8* @d, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @abort() #2
  unreachable

38:                                               ; preds = %33
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
