; ModuleID = './pr57131.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57131.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store volatile i32 0, i32* %1, align 4
  store volatile i64 0, i64* %2, align 8
  store volatile i32 0, i32* %3, align 4
  store volatile i32 1, i32* %4, align 4
  store volatile i32 1, i32* %5, align 4
  store volatile i64 1, i64* %6, align 8
  %7 = load volatile i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = load volatile i64, i64* %2, align 8
  %10 = load volatile i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = shl i64 %9, %11
  %13 = mul nsw i64 %12, %8
  %14 = load volatile i32, i32* %4, align 4
  %15 = load volatile i32, i32* %5, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = sdiv i64 %13, %17
  %19 = load volatile i64, i64* %6, align 8
  %20 = add nsw i64 %18, %19
  %.not = icmp eq i64 %20, 1
  br i1 %.not, label %22, label %21

21:                                               ; preds = %0
  call void @abort() #2
  unreachable

22:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
