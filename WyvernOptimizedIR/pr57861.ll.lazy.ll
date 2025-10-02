; ModuleID = './pr57861.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57861.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i16 1, align 2
@b = dso_local global i32 0, align 4
@g = dso_local global i32* @b, align 8
@f = dso_local global i16 0, align 2
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i16, i16* @a, align 2
  %2 = trunc i16 %1 to i8
  %3 = call i32 @foo(i8 noundef signext %2)
  %4 = load i32*, i32** @g, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i16, i16* @a, align 2
  %.not = icmp eq i16 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #3
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @foo(i8 noundef signext %0) #1 {
  br label %2

2:                                                ; preds = %23, %1
  %storemerge = phi i32 [ 0, %1 ], [ %25, %23 ]
  store i32 %storemerge, i32* @c, align 4
  %3 = icmp slt i32 %storemerge, 2
  br i1 %3, label %4, label %26

4:                                                ; preds = %2
  store i32 0, i32* @j, align 4
  br i1 false, label %7, label %5

5:                                                ; preds = %4
  %6 = icmp ne i8 %0, 0
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i1 [ true, %4 ], [ %6, %5 ]
  %9 = zext i1 %8 to i32
  store i32 %9, i32* @i, align 4
  %10 = sext i8 %0 to i32
  %11 = select i1 %8, i32 %10, i32 0
  %12 = load i32, i32* @e, align 4
  %13 = icmp ult i32 %12, %11
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load i32, i32* @d, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %19, label %16

16:                                               ; preds = %14
  %17 = load i32, i32* @h, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i1 [ false, %14 ], [ %18, %16 ]
  %21 = zext i1 %20 to i16
  store i16 %21, i16* @a, align 2
  store i16 0, i16* @f, align 2
  br label %22

22:                                               ; preds = %19, %7
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @c, align 4
  %25 = add nsw i32 %24, 1
  br label %2, !llvm.loop !4

26:                                               ; preds = %2
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
