; ModuleID = './pr78675.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78675.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i64 0, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i64 @foo(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.0 = phi i64 [ undef, %1 ], [ %11, %9 ]
  %3 = load i64, i64* @a, align 8
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = load i64, i64* @a, align 8
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %9, label %7

7:                                                ; preds = %5
  %8 = icmp ne i64 %0, 0
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i1 [ false, %5 ], [ %8, %7 ]
  %11 = zext i1 %10 to i64
  %12 = load i64, i64* @a, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* @a, align 8
  br label %2, !llvm.loop !4

14:                                               ; preds = %2
  ret i64 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i64 @foo(i64 noundef 0)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  store i64 0, i64* @a, align 8
  %4 = call i64 @foo(i64 noundef 1)
  %.not1 = icmp eq i64 %4, 0
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  store i64 0, i64* @a, align 8
  %7 = call i64 @foo(i64 noundef 25)
  %.not2 = icmp eq i64 %7, 0
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  store i64 -64, i64* @a, align 8
  %10 = call i64 @foo(i64 noundef 0)
  %.not3 = icmp eq i64 %10, 0
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  store i64 -64, i64* @a, align 8
  %13 = call i64 @foo(i64 noundef 1)
  %.not4 = icmp eq i64 %13, 0
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  store i64 -64, i64* @a, align 8
  %16 = call i64 @foo(i64 noundef 25)
  %.not5 = icmp eq i64 %16, 0
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %17, %14, %11, %8, %5, %2
  unreachable
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
