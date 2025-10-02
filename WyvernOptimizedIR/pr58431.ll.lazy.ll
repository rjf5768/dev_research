; ModuleID = './pr58431.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58431.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i16 0, align 2
@b = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global i8 0, align 1
@d = dso_local global i32 0, align 4
@h = dso_local global i8 0, align 1
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i16, i16* @i, align 2
  %2 = xor i16 %1, 1
  store i16 %2, i16* @i, align 2
  br label %3

3:                                                ; preds = %36, %0
  %storemerge = phi i32 [ 0, %0 ], [ %38, %36 ]
  store i32 %storemerge, i32* @b, align 4
  %4 = icmp slt i32 %storemerge, 1
  br i1 %4, label %5, label %39

5:                                                ; preds = %3
  %6 = zext i16 %2 to i32
  %7 = load i32, i32* @k, align 4
  store i32 %7, i32* @g, align 4
  %8 = load i32, i32* @j, align 4
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %9, label %12

9:                                                ; preds = %5
  %10 = load volatile i32, i32* @c, align 4
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i1 [ true, %5 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  store i32 %14, i32* @j, align 4
  %15 = load i8, i8* @a, align 1
  %16 = sext i8 %15 to i32
  %sext = shl i32 %6, 24
  %17 = ashr exact i32 %sext, 24
  %.not2 = icmp eq i32 %17, %16
  br i1 %.not2, label %27, label %18

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %23, %18
  %20 = load i32, i32* @d, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @d, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @d, align 4
  br label %19, !llvm.loop !4

26:                                               ; preds = %19
  br label %35

27:                                               ; preds = %12
  store i8 1, i8* @h, align 1
  br label %28

28:                                               ; preds = %31, %27
  %29 = load i32, i32* @e, align 4
  %.not3 = icmp eq i32 %29, 0
  br i1 %.not3, label %34, label %30

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* @e, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @e, align 4
  br label %28, !llvm.loop !6

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %26
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* @b, align 4
  %38 = add nsw i32 %37, 1
  br label %3, !llvm.loop !7

39:                                               ; preds = %3
  %40 = load i8, i8* @h, align 1
  %.not = icmp eq i8 %40, 0
  br i1 %.not, label %42, label %41

41:                                               ; preds = %39
  call void @abort() #2
  unreachable

42:                                               ; preds = %39
  ret i32 0
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
