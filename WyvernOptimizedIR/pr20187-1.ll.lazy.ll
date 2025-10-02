; ModuleID = './pr20187-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20187-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 257, align 4
@b = dso_local global i32 256, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @test() #0 {
  %1 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %4, label %2

2:                                                ; preds = %0
  %3 = load i32, i32* @a, align 4
  br label %5

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i32 [ %3, %2 ], [ 1, %4 ]
  %7 = load i32, i32* @a, align 4
  %8 = load i32, i32* @b, align 4
  %9 = mul nsw i32 %7, %8
  %10 = and i32 %6, %9
  %11 = and i32 %10, 255
  %.not1 = icmp eq i32 %11, 0
  %12 = zext i1 %.not1 to i32
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @main() #0 {
  %1 = call i32 @test()
  %2 = sub nsw i32 1, %1
  ret i32 %2
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
