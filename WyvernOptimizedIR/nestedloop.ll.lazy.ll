; ModuleID = './nestedloop.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Shootout/nestedloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @atoi(i8* noundef %6) #3
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 46, %8 ]
  br label %11

11:                                               ; preds = %45, %9
  %.04 = phi i32 [ 0, %9 ], [ %46, %45 ]
  %.0 = phi i32 [ 0, %9 ], [ %.1, %45 ]
  %12 = icmp slt i32 %.04, %10
  br i1 %12, label %13, label %47

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %42, %13
  %.05 = phi i32 [ 0, %13 ], [ %43, %42 ]
  %.1 = phi i32 [ %.0, %13 ], [ %.2, %42 ]
  %15 = icmp slt i32 %.05, %10
  br i1 %15, label %16, label %44

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %39, %16
  %.06 = phi i32 [ 0, %16 ], [ %40, %39 ]
  %.2 = phi i32 [ %.1, %16 ], [ %.3, %39 ]
  %18 = icmp slt i32 %.06, %10
  br i1 %18, label %19, label %41

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %36, %19
  %.03 = phi i32 [ 0, %19 ], [ %37, %36 ]
  %.3 = phi i32 [ %.2, %19 ], [ %.4, %36 ]
  %21 = icmp slt i32 %.03, %10
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %33, %22
  %.02 = phi i32 [ 0, %22 ], [ %34, %33 ]
  %.4 = phi i32 [ %.3, %22 ], [ %.5, %33 ]
  %24 = icmp slt i32 %.02, %10
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %29, %25
  %.01 = phi i32 [ 0, %25 ], [ %31, %29 ]
  %.5 = phi i32 [ %.4, %25 ], [ %30, %29 ]
  %27 = icmp slt i32 %.01, %10
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %.5, 1
  %31 = add nuw nsw i32 %.01, 1
  br label %26, !llvm.loop !4

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  %34 = add nuw nsw i32 %.02, 1
  br label %23, !llvm.loop !6

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.03, 1
  br label %20, !llvm.loop !7

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i32 %.06, 1
  br label %17, !llvm.loop !8

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.05, 1
  br label %14, !llvm.loop !9

44:                                               ; preds = %14
  br label %45

45:                                               ; preds = %44
  %46 = add nuw nsw i32 %.04, 1
  br label %11, !llvm.loop !10

47:                                               ; preds = %11
  %48 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %.0) #4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind }

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
