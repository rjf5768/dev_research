; ModuleID = './ssad-run.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ssad-run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @bar(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32* nocapture noundef writeonly %3) #0 {
  %5 = call i32 @foo(i8* noundef %0, i32 noundef 16, i8* noundef %1, i32 noundef %2)
  store i32 %5, i32* %3, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define internal i32 @foo(i8* nocapture noundef readonly %0, i32 noundef %1, i8* nocapture noundef readonly %2, i32 noundef %3) #1 {
  br label %5

5:                                                ; preds = %25, %4
  %.04 = phi i32 [ 0, %4 ], [ %.1, %25 ]
  %.03 = phi i32 [ 0, %4 ], [ %30, %25 ]
  %.02 = phi i8* [ %2, %4 ], [ %27, %25 ]
  %.0 = phi i8* [ %0, %4 ], [ %29, %25 ]
  %6 = icmp ult i32 %.03, 16
  br i1 %6, label %7, label %31

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %11, %7
  %.1 = phi i32 [ %.04, %7 ], [ %22, %11 ]
  %.01 = phi i32 [ 0, %7 ], [ %23, %11 ]
  %9 = icmp ult i32 %.01, 16
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds i8, i8* %.0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds i8, i8* %.02, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sub nsw i32 %15, %19
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = add nsw i32 %.1, %21
  %23 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !4

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %24
  %26 = sext i32 %3 to i64
  %27 = getelementptr inbounds i8, i8* %.02, i64 %26
  %28 = sext i32 %1 to i64
  %29 = getelementptr inbounds i8, i8* %.0, i64 %28
  %30 = add nuw nsw i32 %.03, 1
  br label %5, !llvm.loop !6

31:                                               ; preds = %5
  ret i32 %.04
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %33, %0
  %.0 = phi i32 [ 0, %0 ], [ %34, %33 ]
  %5 = icmp ult i32 %.0, 256
  br i1 %5, label %6, label %35

6:                                                ; preds = %4
  %7 = and i32 %.0, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %.0.tr1 = trunc i32 %.0 to i8
  %10 = shl i8 %.0.tr1, 1
  %11 = and i8 %10, 14
  %12 = or i8 %11, 1
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %13
  store i8 %12, i8* %14, align 1
  %15 = trunc i32 %.0 to i8
  %16 = and i8 %15, 7
  %17 = sub nsw i8 0, %16
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %18
  store i8 %17, i8* %19, align 1
  br label %32

20:                                               ; preds = %6
  %.0.tr = trunc i32 %.0 to i8
  %21 = shl i8 %.0.tr, 1
  %22 = and i8 %21, 14
  %23 = sub nuw nsw i8 -2, %22
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %24
  store i8 %23, i8* %25, align 1
  %26 = trunc i32 %.0 to i8
  %27 = lshr i8 %26, 1
  %28 = and i8 %27, 3
  %29 = sub nsw i8 0, %28
  %30 = zext i32 %.0 to i64
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %30
  store i8 %29, i8* %31, align 1
  br label %32

32:                                               ; preds = %20, %9
  br label %33

33:                                               ; preds = %32
  %34 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !7

35:                                               ; preds = %4
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  call void @bar(i8* noundef nonnull %36, i8* noundef nonnull %37, i32 noundef 16, i32* noundef nonnull %3)
  %38 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %38, 2368
  br i1 %.not, label %40, label %39

39:                                               ; preds = %35
  call void @abort() #6
  unreachable

40:                                               ; preds = %35
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn nounwind }

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
