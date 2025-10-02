; ModuleID = './pr49039.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49039.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cnt = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, -2
  br i1 %5, label %6, label %7

6:                                                ; preds = %4, %2
  br label %27

7:                                                ; preds = %4
  %8 = icmp ult i32 %0, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %11

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %9
  %12 = phi i32 [ %0, %9 ], [ %1, %10 ]
  %13 = icmp ugt i32 %0, %1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %14
  %17 = phi i32 [ %0, %14 ], [ %1, %15 ]
  %18 = icmp eq i32 %12, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @cnt, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @cnt, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = icmp eq i32 %17, -2
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i32, i32* @cnt, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @cnt, align 4
  br label %27

27:                                               ; preds = %24, %22, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @foo(i32 noundef -2, i32 noundef 1)
  %1 = load i32, i32* @cnt, align 4
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
