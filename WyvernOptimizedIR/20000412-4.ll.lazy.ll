; ModuleID = './20000412-4.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000412-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = sub nsw i32 %0, %2
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %10

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9, %8
  %11 = phi i32 [ %6, %8 ], [ 0, %9 ]
  br label %12

12:                                               ; preds = %23, %10
  %.0 = phi i32 [ %11, %10 ], [ %24, %23 ]
  %13 = icmp slt i32 %.0, 3
  br i1 %13, label %14, label %25

14:                                               ; preds = %12
  %15 = sub nsw i32 %.0, %0
  %16 = add nsw i32 %15, %2
  %17 = mul nsw i32 %16, %3
  %18 = sub nsw i32 %17, %1
  %19 = add nsw i32 %18, %2
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  call void @abort() #3
  unreachable

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %.0, 1
  br label %12, !llvm.loop !4

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %29, %25
  %.1 = phi i32 [ %11, %25 ], [ %30, %29 ]
  %27 = icmp slt i32 %.1, 3
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %.1, 1
  br label %26, !llvm.loop !6

31:                                               ; preds = %26
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #2 {
  br label %3

3:                                                ; preds = %6, %2
  %.0 = phi i32 [ 1, %2 ], [ %7, %6 ]
  %4 = icmp ult i32 %.0, 4
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  call void @f(i32 noundef %.0, i32 noundef 1, i32 noundef 2, i32 noundef 5, i32 noundef 8)
  br label %6

6:                                                ; preds = %5
  %7 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !7

8:                                                ; preds = %3
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
