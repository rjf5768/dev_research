; ModuleID = './sumarraymalloc.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/sumarraymalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Sum1 = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Sum2 = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8*, i8** %1, i64 1
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @atoi(i8* noundef %7) #6
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i32 [ 100, %4 ], [ %8, %5 ]
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = call noalias i8* @malloc(i64 noundef %12) #7
  %14 = bitcast i8* %13 to i32*
  call void @FillArray(i32* noundef %14, i32 noundef %10)
  %15 = call i32 @SumArray(i32* noundef %14, i32 noundef 100)
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %15) #7
  %17 = call i32 @SumArray2(i32* noundef %14, i32 noundef 100)
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef %17) #7
  call void @free(i8* noundef %13) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal void @FillArray(i32* nocapture noundef writeonly %0, i32 noundef %1) #3 {
  br label %3

3:                                                ; preds = %8, %2
  %.0 = phi i32 [ 0, %2 ], [ %9, %8 ]
  %4 = icmp ult i32 %.0, %1
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  store i32 %.0, i32* %7, align 4
  br label %8

8:                                                ; preds = %5
  %9 = add i32 %.0, 1
  br label %3, !llvm.loop !4

10:                                               ; preds = %3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @SumArray(i32* nocapture noundef readonly %0, i32 noundef %1) #5 {
  br label %3

3:                                                ; preds = %6, %2
  %.01 = phi i32 [ 0, %2 ], [ %10, %6 ]
  %.0 = phi i32 [ 0, %2 ], [ %11, %6 ]
  %4 = icmp ult i32 %.0, %1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %.01, %9
  %11 = add i32 %.0, 1
  br label %3, !llvm.loop !6

12:                                               ; preds = %3
  ret i32 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @SumArray2(i32* nocapture noundef readonly %0, i32 noundef %1) #5 {
  br label %3

3:                                                ; preds = %6, %2
  %.02 = phi i32 [ 0, %2 ], [ %8, %6 ]
  %.01 = phi i32 [ 0, %2 ], [ %10, %6 ]
  %.0 = phi i32* [ %0, %2 ], [ %9, %6 ]
  %4 = icmp ult i32 %.01, %1
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = load i32, i32* %.0, align 4
  %8 = add nsw i32 %.02, %7
  %9 = getelementptr inbounds i32, i32* %.0, i64 1
  %10 = add i32 %.01, 1
  br label %3, !llvm.loop !7

11:                                               ; preds = %3
  ret i32 %.02
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

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
