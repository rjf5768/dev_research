; ModuleID = './2002-12-13-MishaTest.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2002-12-13-MishaTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @sum(i16* nocapture noundef %0, i16* nocapture noundef readonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %10, %3
  %.01 = phi i16* [ %1, %3 ], [ %11, %10 ]
  %.0 = phi i32 [ 0, %3 ], [ %12, %10 ]
  %sext = shl i32 %2, 16
  %5 = ashr exact i32 %sext, 16
  %.not = icmp eq i32 %.0, %5
  br i1 %.not, label %13, label %6

6:                                                ; preds = %4
  %7 = load i16, i16* %.01, align 2
  %8 = load i16, i16* %0, align 2
  %9 = add i16 %8, %7
  store i16 %9, i16* %0, align 2
  br label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i16, i16* %.01, i64 1
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

13:                                               ; preds = %4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [2 x i16], align 2
  %2 = alloca i16, align 2
  store i16 0, i16* %2, align 2
  br label %3

3:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %.not = icmp eq i32 %.0, 2
  br i1 %.not, label %10, label %4

4:                                                ; preds = %3
  %5 = trunc i32 %.0 to i16
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [2 x i16], [2 x i16]* %1, i64 0, i64 %6
  store i16 %5, i16* %7, align 2
  br label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !6

10:                                               ; preds = %3
  %11 = getelementptr inbounds [2 x i16], [2 x i16]* %1, i64 0, i64 0
  %12 = call i32 @sum(i16* noundef nonnull %2, i16* noundef nonnull %11, i32 noundef 2)
  %13 = load i16, i16* %2, align 2
  %14 = sext i16 %13 to i32
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %14) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
