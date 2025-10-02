; ModuleID = './pr85582-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85582-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 2, align 4
@c = dso_local global i64 1, align 8
@e = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load i32, i32* @d, align 4
  store i32 %2, i32* @e, align 4
  %3 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %1

5:                                                ; preds = %1
  %6 = load i64, i64* @c, align 8
  %7 = load i32, i32* @e, align 4
  %8 = and i32 %7, 5
  %9 = zext i32 %8 to i64
  %10 = ashr i64 %6, %9
  br label %11

11:                                               ; preds = %19, %5
  %12 = load i32, i32* @b, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @c, align 8
  %15 = srem i64 %13, %14
  %sext = shl i64 %10, 32
  %16 = ashr exact i64 %sext, 32
  %17 = mul nsw i64 %15, %16
  store i64 %17, i64* @c, align 8
  %18 = load i32, i32* @e, align 4
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %19, label %20

19:                                               ; preds = %11
  br label %11

20:                                               ; preds = %11
  ret i32 0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
