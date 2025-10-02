; ModuleID = './20000224-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000224-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loop_1 = dso_local global i32 100, align 4
@loop_2 = dso_local global i32 7, align 4
@flag = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @test() #0 {
  br label %1

1:                                                ; preds = %16, %0
  %.01 = phi i32 [ 0, %0 ], [ %.2, %16 ]
  %2 = load i32, i32* @loop_1, align 4
  %3 = icmp sgt i32 %2, %.01
  br i1 %3, label %4, label %19

4:                                                ; preds = %1
  %5 = load i32, i32* @flag, align 4
  %6 = and i32 %5, 1
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %16, label %7

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %12, %7
  %.1 = phi i32 [ %.01, %7 ], [ %13, %12 ]
  %.0 = phi i32 [ 0, %7 ], [ %14, %12 ]
  %9 = load i32, i32* @loop_2, align 4
  %10 = icmp slt i32 %.0, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11
  %13 = add nsw i32 %.1, 1
  %14 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !4

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %4
  %.2 = phi i32 [ %.1, %15 ], [ %.01, %4 ]
  %17 = load i32, i32* @flag, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @flag, align 4
  br label %1, !llvm.loop !6

19:                                               ; preds = %1
  ret i32 1
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @test()
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
