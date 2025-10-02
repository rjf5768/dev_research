; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr67714.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr67714.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @fn1() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %7, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  store i8 -15, i8* %1, align 1
  br label %7

7:                                                ; preds = %6
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4
  br label %3, !llvm.loop !4

10:                                               ; preds = %3
  %11 = load i8, i8* %1, align 1
  ret i8 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* @c, align 4
  br label %5

5:                                                ; preds = %9, %0
  %6 = load i32, i32* @c, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  store i32 0, i32* @b, align 4
  br label %9

9:                                                ; preds = %8
  %10 = load i32, i32* @c, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @c, align 4
  br label %5, !llvm.loop !6

12:                                               ; preds = %5
  %13 = call signext i8 @fn1()
  store i8 %13, i8* %2, align 1
  %14 = load i8, i8* %2, align 1
  %15 = sext i8 %14 to i32
  %16 = load i32, i32* @b, align 4
  %17 = xor i32 %15, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %3, align 1
  %19 = load i8, i8* %3, align 1
  %20 = sext i8 %19 to i32
  store volatile i32 %20, i32* %4, align 4
  %21 = load volatile i32, i32* %4, align 4
  %22 = icmp ne i32 %21, -15
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  call void @abort() #2
  unreachable

24:                                               ; preds = %12
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
