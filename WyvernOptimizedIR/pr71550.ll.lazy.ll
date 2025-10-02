; ModuleID = './pr71550.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr71550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 3, align 4
@h = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@c = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global i8* null, align 8
@b = dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %37, %0
  %2 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %40, label %3

3:                                                ; preds = %1
  %4 = load i32, i32* @h, align 4
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %10, label %5

5:                                                ; preds = %3
  br i1 true, label %6, label %10

6:                                                ; preds = %5
  %7 = load i32, i32* @c, align 4
  %8 = load i32, i32* @f, align 4
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %7, i32 noundef %8) #3
  br label %10

10:                                               ; preds = %6, %5, %3
  br label %11

11:                                               ; preds = %28, %10
  %.1 = phi i32 [ 0, %10 ], [ %29, %28 ]
  %12 = icmp ult i32 %.1, 2
  br i1 %12, label %13, label %30

13:                                               ; preds = %11
  %14 = load i32, i32* @g, align 4
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %27, label %15

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %23, %15
  %17 = load i32, i32* @d, align 4
  %18 = icmp ult i32 %17, 10
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i8*, i8** @e, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  store i32 %22, i32* @b, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @d, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* @d, align 4
  br label %16, !llvm.loop !4

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %13
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.1, 1
  br label %11, !llvm.loop !6

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %34, %30
  %.2 = phi i32 [ 0, %30 ], [ %35, %34 ]
  %32 = icmp eq i32 %.2, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.2, 1
  br label %31, !llvm.loop !7

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @a, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @a, align 4
  br label %1, !llvm.loop !8

40:                                               ; preds = %1
  call void @exit(i32 noundef 0) #4
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
