; ModuleID = './20050224-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050224-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i64 3221225472, align 8
@b = dso_local global i64 3489660928, align 8
@c = dso_local global i64 3223042392, align 8
@d = dso_local global i64 3223732224, align 8
@e = dso_local global i64 3223879680, align 8
@f = dso_local global i64 3224191864, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %.not = icmp eq i32 %0, 245
  br i1 %.not, label %4, label %6

4:                                                ; preds = %3
  %.not1 = icmp eq i32 %1, 36
  br i1 %.not1, label %5, label %6

5:                                                ; preds = %4
  %.not2 = icmp eq i32 %2, 444
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %5, %4, %3
  call void @abort() #2
  unreachable

7:                                                ; preds = %5
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i64, i64* @a, align 8
  br label %2

2:                                                ; preds = %25, %0
  %.04 = phi i32 [ 0, %0 ], [ %.3, %25 ]
  %.02 = phi i32 [ 0, %0 ], [ %.13, %25 ]
  %.01 = phi i64 [ %1, %0 ], [ %26, %25 ]
  %.0 = phi i32 [ 0, %0 ], [ %.2, %25 ]
  %3 = load i64, i64* @b, align 8
  %4 = icmp ult i64 %.01, %3
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = load i64, i64* @c, align 8
  %7 = icmp ult i64 %.01, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = add nsw i32 %.02, 1
  br label %24

10:                                               ; preds = %5
  %11 = load i64, i64* @d, align 8
  %.not = icmp ult i64 %.01, %11
  br i1 %.not, label %17, label %12

12:                                               ; preds = %10
  %13 = load i64, i64* @e, align 8
  %14 = icmp ult i64 %.01, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = add nsw i32 %.0, 1
  br label %23

17:                                               ; preds = %12, %10
  %18 = load i64, i64* @f, align 8
  %19 = icmp ult i64 %.01, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = add nsw i32 %.04, 1
  br label %22

22:                                               ; preds = %20, %17
  %.15 = phi i32 [ %21, %20 ], [ %.04, %17 ]
  br label %23

23:                                               ; preds = %22, %15
  %.26 = phi i32 [ %.04, %15 ], [ %.15, %22 ]
  %.1 = phi i32 [ %16, %15 ], [ %.0, %22 ]
  br label %24

24:                                               ; preds = %23, %8
  %.3 = phi i32 [ %.04, %8 ], [ %.26, %23 ]
  %.13 = phi i32 [ %9, %8 ], [ %.02, %23 ]
  %.2 = phi i32 [ %.0, %8 ], [ %.1, %23 ]
  br label %25

25:                                               ; preds = %24
  %26 = add i64 %.01, 4096
  br label %2, !llvm.loop !4

27:                                               ; preds = %2
  call void @foo(i32 noundef %.04, i32 noundef %.0, i32 noundef %.02)
  ret i32 0
}

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
