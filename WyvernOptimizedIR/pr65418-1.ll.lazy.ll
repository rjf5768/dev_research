; ModuleID = './pr65418-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65418-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, -216
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, -132
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %0, -218
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %0, -146
  br i1 %8, label %9, label %10

9:                                                ; preds = %7, %5, %3, %1
  br label %11

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %9
  %.0 = phi i32 [ 1, %9 ], [ 0, %10 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  store volatile i32 -230, i32* %1, align 4
  br label %2

2:                                                ; preds = %24, %0
  %3 = load volatile i32, i32* %1, align 4
  %4 = icmp slt i32 %3, -120
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = load volatile i32, i32* %1, align 4
  %7 = call i32 @foo(i32 noundef %6)
  %8 = load volatile i32, i32* %1, align 4
  %9 = icmp eq i32 %8, -216
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = load volatile i32, i32* %1, align 4
  %12 = icmp eq i32 %11, -132
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load volatile i32, i32* %1, align 4
  %15 = icmp eq i32 %14, -218
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load volatile i32, i32* %1, align 4
  %18 = icmp eq i32 %17, -146
  br label %19

19:                                               ; preds = %16, %13, %10, %5
  %20 = phi i1 [ true, %13 ], [ true, %10 ], [ true, %5 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %.not = icmp eq i32 %7, %21
  br i1 %.not, label %23, label %22

22:                                               ; preds = %19
  call void @abort() #3
  unreachable

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23
  %25 = load volatile i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store volatile i32 %26, i32* %1, align 4
  br label %2, !llvm.loop !4

27:                                               ; preds = %2
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
