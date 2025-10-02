; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020614-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020614-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i32 127, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = shl i32 %5, 1
  %7 = trunc i32 %6 to i8
  %8 = sext i8 %7 to i32
  %9 = sdiv i32 %8, 2
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %3, align 1
  %11 = load i8, i8* %3, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  call void @abort() #2
  unreachable

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = mul nsw i32 %16, 2
  %18 = trunc i32 %17 to i8
  %19 = sext i8 %18 to i32
  %20 = sdiv i32 %19, 2
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %3, align 1
  %22 = load i8, i8* %3, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  call void @abort() #2
  unreachable

26:                                               ; preds = %15
  store i32 255, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = shl i32 %27, 1
  %29 = trunc i32 %28 to i8
  %30 = zext i8 %29 to i32
  %31 = sdiv i32 %30, 2
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %4, align 1
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 127
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  call void @abort() #2
  unreachable

37:                                               ; preds = %26
  %38 = load i32, i32* %2, align 4
  %39 = mul nsw i32 %38, 2
  %40 = trunc i32 %39 to i8
  %41 = zext i8 %40 to i32
  %42 = sdiv i32 %41, 2
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %4, align 1
  %44 = load i8, i8* %4, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 127
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  call void @abort() #2
  unreachable

48:                                               ; preds = %37
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
