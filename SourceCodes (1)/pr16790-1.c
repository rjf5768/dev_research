; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr16790-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr16790-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test1(i32 noundef 16384)
  call void @test2(i32 noundef 16384)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @test1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = mul i32 %6, 2
  %8 = trunc i32 %7 to i16
  %9 = sext i16 %8 to i32
  %10 = mul nsw i32 %9, 3
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = mul i32 %11, 2
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %4, align 2
  %14 = load i16, i16* %4, align 2
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %15, 3
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @abort() #2
  unreachable

21:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @test2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = shl i32 %6, 1
  %8 = trunc i32 %7 to i16
  %9 = sext i16 %8 to i32
  %10 = mul nsw i32 %9, 3
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 %11, 1
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %4, align 2
  %14 = load i16, i16* %4, align 2
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %15, 3
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @abort() #2
  unreachable

21:                                               ; preds = %1
  ret void
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
