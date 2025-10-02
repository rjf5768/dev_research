; ModuleID = './ts.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @match(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %13, %2
  %.02 = phi i8* [ %1, %2 ], [ %14, %13 ]
  %.01 = phi i8* [ %0, %2 ], [ %8, %13 ]
  %4 = load i8, i8* %.01, align 1
  %5 = load i8, i8* %.02, align 1
  %6 = icmp eq i8 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, i8* %.01, i64 1
  %9 = load i8, i8* %.01, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %16

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %3, !llvm.loop !4

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %11
  %.0 = phi i32 [ 1, %11 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @prefix(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %12, %2
  %.02 = phi i8* [ %1, %2 ], [ %6, %12 ]
  %.01 = phi i8* [ %0, %2 ], [ %4, %12 ]
  %4 = getelementptr inbounds i8, i8* %.01, i64 1
  %5 = load i8, i8* %.01, align 1
  %6 = getelementptr inbounds i8, i8* %.02, i64 1
  %7 = load i8, i8* %.02, align 1
  %8 = icmp eq i8 %5, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = icmp eq i8 %5, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  br label %16

12:                                               ; preds = %9
  br label %3, !llvm.loop !6

13:                                               ; preds = %3
  %14 = icmp eq i8 %5, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %13, %11
  %.0 = phi i32 [ 1, %11 ], [ %15, %13 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @letter(i32 noundef %0) #1 {
  %2 = icmp sgt i32 %0, 96
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 123
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %12

6:                                                ; preds = %3, %1
  %7 = icmp sgt i32 %0, 64
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = icmp slt i32 %0, 91
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8, %6
  br label %12

12:                                               ; preds = %11, %10, %5
  %.0 = phi i32 [ 1, %5 ], [ 1, %10 ], [ 0, %11 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @numb(i8* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %.01 = phi i32 [ 0, %1 ], [ %16, %11 ]
  %.0 = phi i8* [ %0, %1 ], [ %17, %11 ]
  %3 = load i8, i8* %.0, align 1
  %4 = icmp sgt i8 %3, 47
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load i8, i8* %.0, align 1
  %7 = icmp slt i8 %6, 58
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i1 [ false, %2 ], [ %7, %5 ]
  br i1 %9, label %10, label %18

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10
  %12 = mul nsw i32 %.01, 10
  %13 = load i8, i8* %.0, align 1
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %12, %14
  %16 = add nsw i32 %15, -48
  %17 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %2, !llvm.loop !7

18:                                               ; preds = %8
  ret i32 %.01
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @digit(i32 noundef %0) #1 {
  %2 = icmp sgt i32 %0, 47
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 58
  %phi.cast = zext i1 %4 to i32
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ 0, %1 ], [ %phi.cast, %3 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @max(i32 noundef %0, i32 noundef %1) #1 {
  %3 = icmp sgt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @tcopy(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) #2 {
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi i8* [ %1, %2 ], [ %7, %5 ]
  %.0 = phi i8* [ %0, %2 ], [ %6, %5 ]
  %4 = load i8, i8* %.01, align 1
  store i8 %4, i8* %.0, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, i8* %.0, i64 1
  %7 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %3, !llvm.loop !8

8:                                                ; preds = %3
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
