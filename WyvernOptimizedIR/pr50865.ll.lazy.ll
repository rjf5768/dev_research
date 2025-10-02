; ModuleID = './pr50865.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr50865.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store volatile i64 1, i64* %1, align 8
  store volatile i64 -1, i64* %2, align 8
  store volatile i64 -1, i64* %3, align 8
  %4 = load volatile i64, i64* %1, align 8
  %5 = srem i64 -9223372036854775808, %4
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %0
  %8 = load volatile i64, i64* %2, align 8
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %17

11:                                               ; preds = %7
  %12 = load volatile i64, i64* %2, align 8
  %13 = sub nsw i64 0, %12
  %14 = srem i64 -9223372036854775808, %13
  %.not1 = icmp eq i64 %14, 0
  br i1 %.not1, label %16, label %15

15:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %10
  %18 = load volatile i64, i64* %3, align 8
  %19 = sub nsw i64 0, %18
  %20 = srem i64 -9223372036854775808, %19
  %.not2 = icmp eq i64 %20, 0
  br i1 %.not2, label %22, label %21

21:                                               ; preds = %17
  call void @abort() #2
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %17
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %21, %15, %6
  unreachable
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
