; ModuleID = './20030916-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030916-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @f(i32* nocapture noundef writeonly %0) #0 {
  br label %2

2:                                                ; preds = %8, %1
  %.01 = phi i8 [ 16, %1 ], [ %9, %8 ]
  %.0 = phi i32 [ 0, %1 ], [ %10, %8 ]
  %3 = icmp ult i32 %.0, 16
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = add i8 %.01, -24
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %4
  %9 = add i8 %.01, 1
  %10 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

11:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [256 x i32], align 16
  br label %2

2:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %3 = icmp ult i32 %.0, 256
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %5
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !6

9:                                                ; preds = %2
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  call void @f(i32* noundef nonnull %10)
  br label %11

11:                                               ; preds = %25, %9
  %.1 = phi i32 [ 0, %9 ], [ %26, %25 ]
  %12 = icmp ult i32 %.1, 256
  br i1 %12, label %13, label %27

13:                                               ; preds = %11
  %14 = zext i32 %.1 to i64
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ugt i32 %.1, 7
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = icmp ult i32 %.1, 248
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i1 [ false, %13 ], [ %19, %18 ]
  %22 = zext i1 %21 to i32
  %.not = icmp eq i32 %16, %22
  br i1 %.not, label %24, label %23

23:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.1, 1
  br label %11, !llvm.loop !7

27:                                               ; preds = %11
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %27, %23
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
