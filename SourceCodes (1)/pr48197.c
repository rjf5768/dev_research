; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr48197.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr48197.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@y = internal global i32 32768, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @y, align 4
  %4 = trunc i32 %3 to i16
  %5 = sext i16 %4 to i32
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = xor i32 0, %6
  %8 = zext i32 %7 to i64
  %9 = icmp sgt i64 0, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %0
  %12 = load i32, i32* @y, align 4
  %13 = trunc i32 %12 to i16
  %14 = sext i16 %13 to i32
  %15 = xor i32 0, %14
  %16 = zext i32 %15 to i64
  %17 = icmp sgt i64 0, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  call void @abort() #2
  unreachable

19:                                               ; preds = %11
  %20 = load i32, i32* %2, align 4
  %21 = xor i32 0, %20
  %22 = zext i32 %21 to i64
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @abort() #2
  unreachable

25:                                               ; preds = %19
  %26 = load i32, i32* @y, align 4
  %27 = trunc i32 %26 to i16
  %28 = sext i16 %27 to i32
  %29 = xor i32 0, %28
  %30 = zext i32 %29 to i64
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  call void @abort() #2
  unreachable

33:                                               ; preds = %25
  ret i32 0
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
