; ModuleID = './bmhsrch.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-stringsearch/bmhsrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pat = internal global i8* null, align 8
@patlen = internal global i32 0, align 4
@skip = internal global [256 x i32] zeroinitializer, align 16
@skip2 = internal global i32 0, align 4

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @bmh_init(i8* noundef %0) #0 {
  store i8* %0, i8** @pat, align 8
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #3
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* @patlen, align 4
  br label %4

4:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %5 = icmp ult i32 %.0, 256
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = load i32, i32* @patlen, align 4
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %26, %12
  %.1 = phi i32 [ 0, %12 ], [ %27, %26 ]
  %14 = load i32, i32* @patlen, align 4
  %15 = icmp slt i32 %.1, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i32, i32* @patlen, align 4
  %18 = xor i32 %.1, -1
  %19 = add i32 %17, %18
  %20 = load i8*, i8** @pat, align 8
  %21 = zext i32 %.1 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %24
  store i32 %19, i32* %25, align 4
  br label %26

26:                                               ; preds = %16
  %27 = add nuw nsw i32 %.1, 1
  br label %13, !llvm.loop !6

28:                                               ; preds = %13
  %29 = load i8*, i8** @pat, align 8
  %30 = load i32, i32* @patlen, align 4
  %31 = add nsw i32 %30, -1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %35
  store i32 32767, i32* %36, align 4
  %37 = load i32, i32* @patlen, align 4
  store i32 %37, i32* @skip2, align 4
  br label %38

38:                                               ; preds = %53, %28
  %.2 = phi i32 [ 0, %28 ], [ %54, %53 ]
  %39 = load i32, i32* @patlen, align 4
  %40 = add nsw i32 %39, -1
  %41 = icmp slt i32 %.2, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i8*, i8** @pat, align 8
  %44 = zext i32 %.2 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %46, %34
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @patlen, align 4
  %50 = xor i32 %.2, -1
  %51 = add i32 %49, %50
  store i32 %51, i32* @skip2, align 4
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52
  %54 = add nuw nsw i32 %.2, 1
  br label %38, !llvm.loop !7

55:                                               ; preds = %38
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i8* @bmh_search(i8* noundef readonly %0, i32 noundef %1) #2 {
  %3 = load i32, i32* @patlen, align 4
  %4 = xor i32 %1, -1
  %5 = add i32 %3, %4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %59

8:                                                ; preds = %2
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  br label %11

11:                                               ; preds = %58, %8
  %.02 = phi i32 [ %5, %8 ], [ %55, %58 ]
  br label %12

12:                                               ; preds = %21, %11
  %.1 = phi i32 [ %.02, %11 ], [ %19, %21 ]
  %13 = sext i32 %.1 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %.1, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %12, !llvm.loop !8

22:                                               ; preds = %12
  %23 = sub nsw i32 32767, %1
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %59

26:                                               ; preds = %22
  %27 = add nsw i32 %19, -32767
  %28 = load i32, i32* @patlen, align 4
  %29 = add nsw i32 %28, -1
  %30 = sub nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %10, i64 %31
  br label %33

33:                                               ; preds = %49, %26
  %.01 = phi i32 [ %29, %26 ], [ %34, %49 ]
  %34 = add nsw i32 %.01, -1
  %35 = icmp sgt i32 %.01, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8*, i8** @pat, align 8
  %42 = sext i32 %34 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %40, %45
  br label %47

47:                                               ; preds = %36, %33
  %48 = phi i1 [ false, %33 ], [ %46, %36 ]
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  br label %33, !llvm.loop !9

50:                                               ; preds = %47
  %51 = icmp slt i32 %.01, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  br label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @skip2, align 4
  %55 = add nsw i32 %27, %54
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %53
  br label %11

59:                                               ; preds = %57, %52, %25, %7
  %.0 = phi i8* [ null, %7 ], [ null, %25 ], [ %32, %52 ], [ null, %57 ]
  ret i8* %.0
}

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

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
