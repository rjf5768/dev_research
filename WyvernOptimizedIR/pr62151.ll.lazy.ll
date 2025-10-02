; ModuleID = './pr62151.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr62151.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i16 0, align 2
@f = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @fn1() #0 {
  %1 = alloca [2 x i32], align 4
  store i16 0, i16* @b, align 2
  br label %2

2:                                                ; preds = %45, %0
  %3 = load i32, i32* @f, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 %4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @h, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %2
  store i32 0, i32* @d, align 4
  br label %45

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %12, %8
  %10 = load i32, i32* @f, align 4
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %15, label %11

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11
  %13 = load i32, i32* @f, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @f, align 4
  br label %9, !llvm.loop !4

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %41, %15
  %storemerge = phi i32 [ 0, %15 ], [ %43, %41 ]
  store i32 %storemerge, i32* @a, align 4
  %17 = icmp slt i32 %storemerge, 1
  br i1 %17, label %18, label %44

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %18
  %20 = load i16, i16* @b, align 2
  %21 = sext i16 %20 to i32
  %22 = xor i16 %20, 1
  %23 = sext i16 %22 to i32
  %24 = and i32 %23, 83647
  %25 = and i32 %24, %21
  %.not2 = icmp eq i32 %25, 0
  br i1 %.not2, label %29, label %26

26:                                               ; preds = %19
  %27 = load i16, i16* @b, align 2
  %28 = sext i16 %27 to i32
  br label %33

29:                                               ; preds = %19
  %30 = load i16, i16* @b, align 2
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %31, -1
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i32 [ %28, %26 ], [ %32, %29 ]
  store i32 %34, i32* @i, align 4
  store i32 %34, i32* @g, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @e, align 4
  %37 = load i32, i32* @c, align 4
  %.not3 = icmp eq i32 %37, 0
  br i1 %.not3, label %39, label %38

38:                                               ; preds = %33
  br label %40

39:                                               ; preds = %33
  ret i32 0

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* @a, align 4
  %43 = add nsw i32 %42, 1
  br label %16, !llvm.loop !6

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44, %7
  br label %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @fn1()
  %2 = load i32, i32* @g, align 4
  %.not = icmp eq i32 %2, -1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
