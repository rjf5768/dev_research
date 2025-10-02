; ModuleID = './pr68321.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68321.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i32 1, align 4
@u = dso_local global i32 5, align 4
@t5 = dso_local global i32 0, align 4
@n = dso_local global i8 0, align 1
@t2 = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@m = dso_local global i32 0, align 4
@t = dso_local global i8 0, align 1
@a = dso_local global [1 x i32] zeroinitializer, align 4
@i = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @fn1(i32 noundef %0) #0 {
  %2 = alloca [1 x i32], align 4
  br label %3

3:                                                ; preds = %17, %1
  %.off = add i32 %0, 2
  %4 = icmp ult i32 %.off, 5
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %11, %5
  %7 = load i32, i32* @t5, align 4
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %12, label %8

8:                                                ; preds = %6
  %9 = load i32, i32* @u, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %10, label %11

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %8
  br label %6, !llvm.loop !4

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12, %3
  %14 = and i32 %0, 4
  store i32 %14, i32* @t2, align 4
  %15 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %15, -1
  br i1 %.not, label %17, label %16

16:                                               ; preds = %13
  ret i32 0

17:                                               ; preds = %13
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @u, align 4
  br label %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %11, %0
  %.0 = phi i8 [ undef, %0 ], [ %.1, %11 ]
  %2 = load i32, i32* @e, align 4
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = load i32, i32* @m, align 4
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %6, label %8

6:                                                ; preds = %4
  %7 = load i8, i8* @t, align 1
  br label %8

8:                                                ; preds = %6, %4
  %.1 = phi i8 [ %.0, %4 ], [ %7, %6 ]
  %9 = sext i8 %.1 to i32
  %10 = call i32 @fn1(i32 noundef %9)
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @e, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* @e, align 4
  br label %1, !llvm.loop !6

14:                                               ; preds = %1
  %15 = load i32, i32* @t2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %20, label %19

19:                                               ; preds = %14
  call void @abort() #3
  unreachable

20:                                               ; preds = %14
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
