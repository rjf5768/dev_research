; ModuleID = './pr65418-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65418-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, -216
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, -211
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %0, -218
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %0, -205
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %0, -223
  br i1 %10, label %11, label %12

11:                                               ; preds = %9, %7, %5, %3, %1
  br label %13

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12, %11
  %.0 = phi i32 [ 1, %11 ], [ 0, %12 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  store volatile i32 -230, i32* %1, align 4
  br label %2

2:                                                ; preds = %27, %0
  %3 = load volatile i32, i32* %1, align 4
  %4 = icmp slt i32 %3, -200
  br i1 %4, label %5, label %30

5:                                                ; preds = %2
  %6 = load volatile i32, i32* %1, align 4
  %7 = call i32 @foo(i32 noundef %6)
  %8 = load volatile i32, i32* %1, align 4
  %9 = icmp eq i32 %8, -216
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = load volatile i32, i32* %1, align 4
  %12 = icmp eq i32 %11, -211
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = load volatile i32, i32* %1, align 4
  %15 = icmp eq i32 %14, -218
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load volatile i32, i32* %1, align 4
  %18 = icmp eq i32 %17, -205
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load volatile i32, i32* %1, align 4
  %21 = icmp eq i32 %20, -223
  br label %22

22:                                               ; preds = %19, %16, %13, %10, %5
  %23 = phi i1 [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %5 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %.not = icmp eq i32 %7, %24
  br i1 %.not, label %26, label %25

25:                                               ; preds = %22
  call void @abort() #3
  unreachable

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26
  %28 = load volatile i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store volatile i32 %29, i32* %1, align 4
  br label %2, !llvm.loop !4

30:                                               ; preds = %2
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
