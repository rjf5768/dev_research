; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr83362.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr83362.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @foo(i32 noundef 1164)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 253
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #2
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %20, %1
  %4 = load i32, i32* @e, align 4
  %5 = udiv i32 %4, 4095
  store i32 %5, i32* @e, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i8, i8* @c, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* @d, align 4
  br label %11

11:                                               ; preds = %10, %3
  %12 = load i32, i32* @e, align 4
  %13 = sub i32 %12, 3
  store i32 %13, i32* @e, align 4
  %14 = load i32, i32* @b, align 4
  %15 = load i32, i32* @a, align 4
  %16 = icmp ule i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @e, align 4
  %19 = mul i32 %18, %17
  store i32 %19, i32* @e, align 4
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* @e, align 4
  %22 = icmp uge i32 %21, 88030
  br i1 %22, label %3, label %23, !llvm.loop !4

23:                                               ; preds = %20
  %24 = load i32, i32* @e, align 4
  ret i32 %24
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
