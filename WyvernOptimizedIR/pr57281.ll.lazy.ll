; ModuleID = './pr57281.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57281.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global i32* @d, align 8
@c = dso_local global i64 0, align 8
@g = dso_local global i64* @c, align 8
@b = dso_local global i32 0, align 4
@f = dso_local global i64 0, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = load i32, i32* @b, align 4
  %3 = sext i32 %2 to i64
  %4 = load i64*, i64** @g, align 8
  store i64 %3, i64* %4, align 8
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %2, %6 ], [ 0, %7 ]
  ret i32 %9
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = load i32, i32* @a, align 4
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %3, -20
  br i1 %.not, label %12, label %4

4:                                                ; preds = %2
  %5 = load volatile i64, i64* @f, align 8
  %6 = load i32*, i32** @e, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @foo(i32 noundef %1)
  %8 = load i32*, i32** @e, align 8
  store i32 %7, i32* %8, align 4
  br label %9

9:                                                ; preds = %4
  %10 = load i32, i32* @b, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* @b, align 4
  br label %2, !llvm.loop !4

12:                                               ; preds = %2
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
