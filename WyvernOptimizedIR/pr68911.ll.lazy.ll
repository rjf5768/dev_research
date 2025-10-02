; ModuleID = './pr68911.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68911.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i16 0, align 2
@a = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %26, %0
  %.01 = phi i32 [ 2, %0 ], [ %.2, %26 ]
  %.0 = phi i32 [ 0, %0 ], [ %.1, %26 ]
  %2 = load i32, i32* @c, align 4
  %3 = icmp slt i32 %2, 2
  br i1 %3, label %4, label %29

4:                                                ; preds = %1
  %5 = icmp ugt i32 %.01, -8
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %11, label %8

8:                                                ; preds = %6
  %9 = load i16, i16* @d, align 2
  %10 = icmp ne i16 %9, 0
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i1 [ false, %6 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = xor i32 %13, -1
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* @a, align 1
  br label %16

16:                                               ; preds = %11, %4
  %.12 = phi i32 [ %14, %11 ], [ %.01, %4 ]
  br label %17

17:                                               ; preds = %23, %16
  %.2 = phi i32 [ %.12, %16 ], [ %24, %23 ]
  %.1 = phi i32 [ %.0, %16 ], [ %20, %23 ]
  %18 = icmp ult i32 %.2, 94
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = add i32 %.1, 1
  %21 = icmp ugt i32 %20, 100
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %30

23:                                               ; preds = %19
  %24 = add i32 %.2, 1
  br label %17, !llvm.loop !4

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @c, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @c, align 4
  br label %1, !llvm.loop !6

29:                                               ; preds = %1
  ret i32 0

30:                                               ; preds = %22
  call void @abort() #2
  unreachable
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
