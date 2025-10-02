; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69320-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69320-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = internal global i32* @d, align 8
@c = dso_local global i8 0, align 1
@a = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32*, i32** @e, align 8
  store i32 %4, i32* %5, align 4
  store i8 4, i8* @c, align 1
  br label %6

6:                                                ; preds = %12, %0
  %7 = load i8, i8* @c, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sge i32 %8, 14
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i32*, i32** @e, align 8
  store i32 1, i32* %11, align 4
  br label %12

12:                                               ; preds = %10
  %13 = load i8, i8* @c, align 1
  %14 = add i8 %13, 1
  store i8 %14, i8* @c, align 1
  br label %6, !llvm.loop !4

15:                                               ; preds = %6
  %16 = load i32, i32* @a, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* @f, align 4
  %19 = load i32, i32* @f, align 4
  %20 = load i32*, i32** @e, align 8
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @d, align 4
  %24 = xor i32 %23, -1
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @d, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* @b, align 4
  br label %29

29:                                               ; preds = %27, %15
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @exit(i32 noundef 0) #2
  unreachable

33:                                               ; preds = %29
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

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
