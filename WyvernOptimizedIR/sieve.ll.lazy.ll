; ModuleID = './sieve.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Shootout/sieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.flags = internal global [8193 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"Count: %d\0A\00", align 1

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
  %10 = phi i32 [ %7, %4 ], [ 170000, %8 ]
  br label %11

11:                                               ; preds = %39, %9
  %.04 = phi i32 [ %10, %9 ], [ %12, %39 ]
  %.0 = phi i32 [ 0, %9 ], [ %.1, %39 ]
  %12 = add nsw i32 %.04, -1
  %.not = icmp eq i32 %.04, 0
  br i1 %.not, label %40, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %18, %13
  %.02 = phi i64 [ 2, %13 ], [ %19, %18 ]
  %15 = icmp ult i64 %.02, 8193
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %.02
  store i8 1, i8* %17, align 1
  br label %18

18:                                               ; preds = %16
  %19 = add nuw nsw i64 %.02, 1
  br label %14, !llvm.loop !4

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %37, %20
  %.13 = phi i64 [ 2, %20 ], [ %38, %37 ]
  %.1 = phi i32 [ 0, %20 ], [ %.2, %37 ]
  %22 = icmp ult i64 %.13, 8193
  br i1 %22, label %23, label %39

23:                                               ; preds = %21
  %24 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %.13
  %25 = load i8, i8* %24, align 1
  %.not5 = icmp eq i8 %25, 0
  br i1 %.not5, label %36, label %26

26:                                               ; preds = %23
  %27 = shl nuw nsw i64 %.13, 1
  br label %28

28:                                               ; preds = %32, %26
  %.01 = phi i64 [ %27, %26 ], [ %33, %32 ]
  %29 = icmp ult i64 %.01, 8193
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %.01
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %30
  %33 = add nuw nsw i64 %.01, %.13
  br label %28, !llvm.loop !6

34:                                               ; preds = %28
  %35 = add nsw i32 %.1, 1
  br label %36

36:                                               ; preds = %34, %23
  %.2 = phi i32 [ %35, %34 ], [ %.1, %23 ]
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i64 %.13, 1
  br label %21, !llvm.loop !7

39:                                               ; preds = %21
  br label %11, !llvm.loop !8

40:                                               ; preds = %11
  %41 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %.0) #4
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
