; ModuleID = './loop-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [3 x i32], align 4
  br label %2

2:                                                ; preds = %7, %0
  %.01 = phi i32 [ 0, %0 ], [ %9, %7 ]
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %3 = icmp ult i32 %.01, 3
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 %5
  store i32 %.0, i32* %6, align 4
  br label %7

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %.0, 1
  %9 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %19, %10
  %.1 = phi i32 [ 2, %10 ], [ %20, %19 ]
  %12 = icmp sgt i32 %.1, -1
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = sext i32 %.1 to i64
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %.not = icmp eq i32 %16, %.1
  br i1 %.not, label %18, label %17

17:                                               ; preds = %13
  call void @abort() #2
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %.1, -1
  br label %11, !llvm.loop !6

21:                                               ; preds = %11
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %21, %17
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
