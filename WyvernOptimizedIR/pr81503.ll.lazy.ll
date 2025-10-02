; ModuleID = './pr81503.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81503.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i16 -24075, align 2
@b = dso_local global i16 3419, align 2
@c = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo() #0 {
  %1 = load i16, i16* @a, align 2
  %2 = zext i16 %1 to i32
  %3 = load i16, i16* @b, align 2
  %4 = zext i16 %3 to i32
  %5 = mul nsw i32 %4, -2
  %6 = sub nsw i32 0, %2
  %.not = icmp eq i32 %5, %6
  br i1 %.not, label %12, label %7

7:                                                ; preds = %0
  %8 = load i16, i16* @b, align 2
  %9 = zext i16 %8 to i32
  %10 = mul nsw i32 %9, -2
  %11 = xor i32 %10, -2147483648
  store i32 %11, i32* @c, align 4
  br label %12

12:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @main() #0 {
  call void @foo()
  %1 = load i32, i32* @c, align 4
  %.not = icmp eq i32 %1, 2147476810
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %3, %2
  %.0 = phi i32 [ -1, %2 ], [ 0, %3 ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
