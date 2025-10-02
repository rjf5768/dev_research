; ModuleID = './pr58640.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58640.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 1, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call signext i8 @foo()
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal signext i8 @foo() #2 {
  %1 = load i32, i32* @a, align 4
  br label %2

2:                                                ; preds = %41, %0
  %.01 = phi i32 [ 1, %0 ], [ %42, %41 ]
  %3 = icmp ult i32 %.01, 3
  br i1 %3, label %4, label %43

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %37, %4
  %6 = load i32, i32* @b, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %40

8:                                                ; preds = %5
  %9 = load i32, i32* @d, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %33, label %10

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %29, %10
  %storemerge = phi i32 [ 0, %10 ], [ %31, %29 ]
  store i32 %storemerge, i32* @c, align 4
  %12 = icmp slt i32 %storemerge, 4
  br i1 %12, label %13, label %32

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %26, %13
  %.1 = phi i32 [ 0, %13 ], [ %27, %26 ]
  %15 = icmp ult i32 %.1, 3
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %20, %16
  %storemerge2 = phi i32 [ 0, %16 ], [ %22, %20 ]
  store i32 %storemerge2, i32* @e, align 4
  %18 = icmp slt i32 %storemerge2, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  store i32 %1, i32* @a, align 4
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* @e, align 4
  %22 = add nsw i32 %21, 1
  br label %17, !llvm.loop !4

23:                                               ; preds = %17
  %.not3 = icmp eq i32 %.1, 0
  br i1 %.not3, label %25, label %24

24:                                               ; preds = %23
  br label %28

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.1, 1
  br label %14, !llvm.loop !6

.loopexit:                                        ; preds = %14
  br label %28

28:                                               ; preds = %.loopexit, %24
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* @c, align 4
  %31 = add nsw i32 %30, 1
  br label %11, !llvm.loop !7

32:                                               ; preds = %11
  br label %36

33:                                               ; preds = %8
  br i1 true, label %34, label %35

34:                                               ; preds = %33
  br label %37

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35, %32
  br label %44

37:                                               ; preds = %34
  %38 = load i32, i32* @b, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @b, align 4
  br label %5, !llvm.loop !8

40:                                               ; preds = %5
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !9

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %43, %36
  ret i8 0
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
