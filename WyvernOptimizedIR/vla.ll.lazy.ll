; ModuleID = './vla.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/vla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bork = dso_local global [4 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6], [3 x i32] [i32 7, i32 8, i32 9], [3 x i32] [i32 10, i32 11, i32 12]], align 16
@bork2 = dso_local global [2 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 1, i32 2, i32 3, i32 4], [4 x i32] [i32 5, i32 6, i32 7, i32 8], [4 x i32] [i32 9, i32 10, i32 11, i32 12]], [3 x [4 x i32]] [[4 x i32] [i32 13, i32 14, i32 15, i32 16], [4 x i32] [i32 17, i32 18, i32 19, i32 20], [4 x i32] [i32 21, i32 22, i32 23, i32 24]]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @function(i16 noundef signext %0, i32* nocapture noundef readonly %1) #0 {
  %3 = zext i16 %0 to i64
  br label %4

4:                                                ; preds = %26, %2
  %.01 = phi i32 [ 0, %2 ], [ %27, %26 ]
  %5 = icmp ult i32 %.01, 4
  br i1 %5, label %6, label %28

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %23, %6
  %.0 = phi i32 [ 0, %6 ], [ %24, %23 ]
  %8 = sext i16 %0 to i32
  %9 = icmp slt i32 %.0, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = zext i32 %.01 to i64
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @bork, i64 0, i64 %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %.01 to i64
  %16 = mul nuw nsw i64 %15, %3
  %17 = getelementptr inbounds i32, i32* %1, i64 %16
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %.not = icmp eq i32 %14, %20
  br i1 %.not, label %22, label %21

21:                                               ; preds = %10
  call void @abort() #2
  unreachable

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !4

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !6

28:                                               ; preds = %4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  call void @function(i16 noundef signext 3, i32* noundef getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @bork, i64 0, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function2(i16 noundef signext %0, i16 noundef signext %1, i32* nocapture noundef readonly %2) #0 {
  %4 = zext i16 %0 to i64
  %5 = zext i16 %1 to i64
  br label %6

6:                                                ; preds = %40, %3
  %.02 = phi i32 [ 0, %3 ], [ %41, %40 ]
  %7 = icmp ult i32 %.02, 2
  br i1 %7, label %8, label %42

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %37, %8
  %.01 = phi i32 [ 0, %8 ], [ %38, %37 ]
  %10 = sext i16 %0 to i32
  %11 = icmp slt i32 %.01, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %34, %12
  %.0 = phi i32 [ 0, %12 ], [ %35, %34 ]
  %14 = sext i16 %1 to i32
  %15 = icmp slt i32 %.0, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = zext i32 %.02 to i64
  %18 = zext i32 %.01 to i64
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [2 x [3 x [4 x i32]]], [2 x [3 x [4 x i32]]]* @bork2, i64 0, i64 %17, i64 %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %.02 to i64
  %23 = mul nuw nsw i64 %4, %5
  %24 = mul nuw nsw i64 %23, %22
  %25 = getelementptr inbounds i32, i32* %2, i64 %24
  %26 = zext i32 %.01 to i64
  %27 = mul nuw nsw i64 %26, %5
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %.not = icmp eq i32 %21, %31
  br i1 %.not, label %33, label %32

32:                                               ; preds = %16
  call void @abort() #2
  unreachable

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !7

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.01, 1
  br label %9, !llvm.loop !8

39:                                               ; preds = %9
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.02, 1
  br label %6, !llvm.loop !9

42:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  call void @function2(i16 noundef signext 3, i16 noundef signext 4, i32* noundef getelementptr inbounds ([2 x [3 x [4 x i32]]], [2 x [3 x [4 x i32]]]* @bork2, i64 0, i64 0, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @test()
  call void @test2()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
