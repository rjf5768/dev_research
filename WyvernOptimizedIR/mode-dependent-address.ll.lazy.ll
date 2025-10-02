; ModuleID = './mode-dependent-address.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/mode-dependent-address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.correct = private unnamed_addr constant [96 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 56, i32 57, i32 58, i32 59, i32 64, i32 65, i32 66, i32 67, i32 64, i32 65, i32 66, i32 67, i32 72, i32 73, i32 74, i32 75, i32 72, i32 73, i32 74, i32 75, i32 80, i32 81, i32 82, i32 83, i32 80, i32 81, i32 82, i32 83, i32 88, i32 89, i32 90, i32 91, i32 88, i32 89, i32 90, i32 91], align 16
@arg4 = dso_local global [96 x i8] zeroinitializer, align 16
@arg1 = dso_local global [96 x i16] zeroinitializer, align 16
@arg2 = dso_local global [96 x i32] zeroinitializer, align 16
@arg3 = dso_local global [96 x i64] zeroinitializer, align 16
@result = dso_local global [96 x i8] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f883b(i8* nocapture noundef writeonly %0, i16* noalias nocapture noundef readonly %1, i32* noalias nocapture noundef readonly %2, i64* noalias nocapture noundef readonly %3, i8* noalias nocapture noundef readnone %4) #0 {
  br label %6

6:                                                ; preds = %38, %5
  %.0 = phi i32 [ 0, %5 ], [ %39, %38 ]
  %7 = icmp ult i32 %.0, 96
  br i1 %7, label %8, label %40

8:                                                ; preds = %6
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds i16, i16* %1, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = icmp sgt i16 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %19

14:                                               ; preds = %8
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i16, i16* %1, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  br label %19

19:                                               ; preds = %14, %13
  %20 = phi i32 [ 1, %13 ], [ %18, %14 ]
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds i32, i32* %2, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 31
  %25 = ashr i32 %20, %24
  %26 = xor i32 %25, 1
  %27 = add nsw i32 %26, 32
  %28 = lshr i32 %27, 7
  %29 = or i32 %28, 251
  %30 = zext i32 %29 to i64
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds i64, i64* %3, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %33, %30
  %35 = trunc i64 %34 to i8
  %36 = zext i32 %.0 to i64
  %37 = getelementptr inbounds i8, i8* %0, i64 %36
  store i8 %35, i8* %37, align 1
  br label %38

38:                                               ; preds = %19
  %39 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

40:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %17, %0
  %.0 = phi i32 [ 0, %0 ], [ %18, %17 ]
  %2 = icmp ult i32 %.0, 96
  br i1 %2, label %3, label %19

3:                                                ; preds = %1
  %4 = trunc i32 %.0 to i8
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [96 x i8], [96 x i8]* @arg4, i64 0, i64 %5
  store i8 %4, i8* %6, align 1
  %7 = trunc i32 %.0 to i16
  %8 = and i16 %7, 255
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [96 x i16], [96 x i16]* @arg1, i64 0, i64 %9
  store i16 %8, i16* %10, align 2
  %11 = zext i16 %8 to i32
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds [96 x i32], [96 x i32]* @arg2, i64 0, i64 %12
  store i32 %11, i32* %13, align 4
  %14 = zext i16 %8 to i64
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds [96 x i64], [96 x i64]* @arg3, i64 0, i64 %15
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %3
  %18 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

19:                                               ; preds = %1
  call void @f883b(i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @result, i64 0, i64 0), i16* noundef getelementptr inbounds ([96 x i16], [96 x i16]* @arg1, i64 0, i64 0), i32* noundef getelementptr inbounds ([96 x i32], [96 x i32]* @arg2, i64 0, i64 0), i64* noundef getelementptr inbounds ([96 x i64], [96 x i64]* @arg3, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @arg4, i64 0, i64 0))
  br label %20

20:                                               ; preds = %32, %19
  %.1 = phi i32 [ 0, %19 ], [ %33, %32 ]
  %21 = icmp ult i32 %.1, 96
  br i1 %21, label %22, label %34

22:                                               ; preds = %20
  %23 = zext i32 %.1 to i64
  %24 = getelementptr inbounds [96 x i8], [96 x i8]* @result, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = zext i32 %.1 to i64
  %28 = getelementptr inbounds [96 x i32], [96 x i32]* @__const.main.correct, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %.not = icmp eq i32 %29, %26
  br i1 %.not, label %31, label %30

30:                                               ; preds = %22
  call void @abort() #4
  unreachable

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i32 %.1, 1
  br label %20, !llvm.loop !7

34:                                               ; preds = %20
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
