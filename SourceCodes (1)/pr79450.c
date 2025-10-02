; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79450.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79450.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8 noundef zeroext %0, i64 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %18, %2
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, %9
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %3, align 1
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = srem i32 %15, 24
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %3, align 1
  br label %18

18:                                               ; preds = %5
  %19 = load i8, i8* %3, align 1
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %5, label %23, !llvm.loop !4

23:                                               ; preds = %18
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i64
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %25, %26
  %28 = trunc i64 %27 to i32
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @foo(i8 noundef zeroext 1, i64 noundef 0)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 1
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
