; ModuleID = './dbra-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/dbra-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @f1(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.02 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %.01 = phi i64 [ %0, %1 ], [ %5, %9 ]
  %3 = icmp ult i32 %.02, 10
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = add nsw i64 %.01, -1
  %6 = icmp eq i64 %.01, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %12

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %.02, 1
  br label %2, !llvm.loop !4

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %7
  %.0 = phi i32 [ %.02, %7 ], [ -1, %11 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @f2(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %8, %1
  %.02 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %.01 = phi i64 [ %0, %1 ], [ %5, %8 ]
  %3 = icmp ult i32 %.02, 10
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = add nsw i64 %.01, -1
  %.not = icmp eq i64 %.01, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4
  br label %11

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7
  %9 = add nuw nsw i32 %.02, 1
  br label %2, !llvm.loop !6

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %6
  %.0 = phi i32 [ %.02, %6 ], [ -1, %10 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @f3(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.02 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %.01 = phi i64 [ %0, %1 ], [ %5, %9 ]
  %3 = icmp ult i32 %.02, 10
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = add nsw i64 %.01, -1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %12

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %.02, 1
  br label %2, !llvm.loop !7

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %7
  %.0 = phi i32 [ %.02, %7 ], [ -1, %11 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @f4(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %8, %1
  %.02 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %.01 = phi i64 [ %0, %1 ], [ %5, %8 ]
  %3 = icmp ult i32 %.02, 10
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = add nsw i64 %.01, -1
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4
  br label %11

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7
  %9 = add nuw nsw i32 %.02, 1
  br label %2, !llvm.loop !8

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %6
  %.0 = phi i32 [ %.02, %6 ], [ -1, %10 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @f5(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.02 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %.01 = phi i64 [ %0, %1 ], [ %5, %9 ]
  %3 = icmp ult i32 %.02, 10
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = add nsw i64 %.01, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %12

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %.02, 1
  br label %2, !llvm.loop !9

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %7
  %.0 = phi i32 [ %.02, %7 ], [ -1, %11 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @f6(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %8, %1
  %.02 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %.01 = phi i64 [ %0, %1 ], [ %5, %8 ]
  %3 = icmp ult i32 %.02, 10
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = add nsw i64 %.01, 1
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4
  br label %11

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7
  %9 = add nuw nsw i32 %.02, 1
  br label %2, !llvm.loop !10

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %6
  %.0 = phi i32 [ %.02, %6 ], [ -1, %10 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @f1(i64 noundef 5)
  %.not = icmp eq i32 %1, 5
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i32 @f2(i64 noundef 1)
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = call i32 @f2(i64 noundef 0)
  %.not2 = icmp eq i32 %7, 1
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = call i32 @f3(i64 noundef 5)
  %.not3 = icmp eq i32 %10, 4
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = call i32 @f4(i64 noundef 1)
  %.not4 = icmp eq i32 %13, 1
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  %16 = call i32 @f4(i64 noundef 0)
  %.not5 = icmp eq i32 %16, 0
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  %19 = call i32 @f5(i64 noundef -5)
  %.not6 = icmp eq i32 %19, 4
  br i1 %.not6, label %21, label %20

20:                                               ; preds = %18
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  %22 = call i32 @f6(i64 noundef -1)
  %.not7 = icmp eq i32 %22, 1
  br i1 %.not7, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  %25 = call i32 @f6(i64 noundef 0)
  %.not8 = icmp eq i32 %25, 0
  br i1 %.not8, label %27, label %26

26:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %27, %26, %23, %20, %17, %14, %11, %8, %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
