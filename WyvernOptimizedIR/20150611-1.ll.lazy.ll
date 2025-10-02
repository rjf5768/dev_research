; ModuleID = './20150611-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20150611-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i16 0, align 2
@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [1 x i32], align 4
  br label %2

2:                                                ; preds = %21, %0
  %3 = load i16, i16* @b, align 2
  %4 = icmp slt i16 %3, 2
  br i1 %4, label %5, label %24

5:                                                ; preds = %2
  store i32 0, i32* @a, align 4
  %6 = load i16, i16* @b, align 2
  %7 = icmp eq i16 %6, 28378
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %1, i64 0, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* @a, align 4
  br label %11

11:                                               ; preds = %8, %5
  %12 = load i32, i32* @d, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %13, label %20

13:                                               ; preds = %11
  %14 = load i16, i16* @b, align 2
  %.not1 = icmp eq i16 %14, 0
  br i1 %.not1, label %15, label %20

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %18, %15
  %17 = load i32, i32* @c, align 4
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %19, label %18

18:                                               ; preds = %16
  br label %16, !llvm.loop !4

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19, %13, %11
  br label %21

21:                                               ; preds = %20
  %22 = load i16, i16* @b, align 2
  %23 = add i16 %22, 1
  store i16 %23, i16* @b, align 2
  br label %2, !llvm.loop !6

24:                                               ; preds = %2
  ret i32 0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
