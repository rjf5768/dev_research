; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65216.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65216.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 62, align 4
@a = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* @a, align 4
  br label %3

3:                                                ; preds = %25, %0
  %4 = load i32, i32* @a, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = xor i32 8, %7
  %9 = and i32 %8, 1
  %10 = load i32, i32* @b, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* @b, align 4
  store i32 0, i32* @e, align 4
  br label %12

12:                                               ; preds = %21, %6
  %13 = load i32, i32* @e, align 4
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load volatile i32, i32* @c, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load volatile i32, i32* @d, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %15
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* @e, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @e, align 4
  br label %12, !llvm.loop !4

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* @a, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @a, align 4
  br label %3, !llvm.loop !6

28:                                               ; preds = %3
  %29 = load i32, i32* @b, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #2
  unreachable

32:                                               ; preds = %28
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
