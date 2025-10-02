; ModuleID = './pr53160.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr53160.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 1, align 4
@e = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local global i8 0, align 1
@i = dso_local global i16 0, align 2
@h = dso_local global i64 0, align 8
@a = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %5, %3 ]
  store i32 %storemerge, i32* @e, align 4
  %.not = icmp eq i32 %storemerge, 0
  br i1 %.not, label %6, label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2
  %4 = load i32, i32* @e, align 4
  %5 = add nsw i32 %4, 1
  br label %1, !llvm.loop !4

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = load i32, i32* @g, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %4, label %2

2:                                                ; preds = %0
  %3 = load volatile i32, i32* @b, align 4
  br label %4

4:                                                ; preds = %2, %0
  call void @foo()
  br label %5

5:                                                ; preds = %13, %4
  %storemerge = phi i32 [ 0, %4 ], [ %15, %13 ]
  store i32 %storemerge, i32* @d, align 4
  %6 = icmp sgt i32 %storemerge, -1
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = load volatile i8, i8* @f, align 1
  %.not2 = icmp eq i8 %8, 0
  br i1 %.not2, label %10, label %9

9:                                                ; preds = %7
  br label %11

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %9
  %12 = sext i8 %8 to i16
  store i16 %12, i16* @i, align 2
  br label %13

13:                                               ; preds = %11
  %14 = load i32, i32* @d, align 4
  %15 = add nsw i32 %14, -1
  br label %5, !llvm.loop !6

16:                                               ; preds = %5
  %17 = load i32, i32* @c, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %22

20:                                               ; preds = %16
  %21 = load i16, i16* @i, align 2
  %phi.cast = sext i16 %21 to i64
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i64 [ 0, %19 ], [ %phi.cast, %20 ]
  store i64 %23, i64* @h, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* @a, align 4
  %.not1 = icmp eq i32 %24, 0
  br i1 %.not1, label %26, label %25

25:                                               ; preds = %22
  call void @abort() #3
  unreachable

26:                                               ; preds = %22
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
