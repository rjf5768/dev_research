; ModuleID = './pr91137.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr91137.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@c = dso_local global [70 x i32] zeroinitializer, align 16
@d = dso_local global [70 x [70 x i32]] zeroinitializer, align 16
@e = dso_local global i32 0, align 4
@a = dso_local global i64 0, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @f(i64* nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  store i64 %3, i64* %0, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @fn2() #1 {
  br label %1

1:                                                ; preds = %34, %0
  %.0 = phi i32 [ 0, %0 ], [ %35, %34 ]
  %2 = icmp ult i32 %.0, 70
  br i1 %2, label %3, label %36

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %24, %3
  %.01 = phi i32 [ 0, %3 ], [ %25, %24 ]
  %5 = icmp ult i32 %.01, 70
  br i1 %5, label %6, label %26

6:                                                ; preds = %4
  %7 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %11, label %8

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds [70 x i32], [70 x i32]* @c, i64 0, i64 %9
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %8, %6
  br label %12

12:                                               ; preds = %21, %11
  %.02 = phi i32 [ 0, %11 ], [ %22, %21 ]
  %13 = icmp ult i32 %.02, 70
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = zext i32 %.02 to i64
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds [70 x [70 x i32]], [70 x [70 x i32]]* @d, i64 0, i64 %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %.01 to i64
  %20 = getelementptr inbounds [70 x [70 x i32]], [70 x [70 x i32]]* @d, i64 0, i64 %19, i64 1
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %14
  %22 = add nuw nsw i32 %.02, 1
  br label %12, !llvm.loop !4

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !6

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %31, %26
  %.03 = phi i32 [ 0, %26 ], [ %32, %31 ]
  %28 = icmp ult i32 %.03, 70
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load i32, i32* getelementptr inbounds ([70 x i32], [70 x i32]* @c, i64 0, i64 0), align 16
  store i32 %30, i32* @e, align 4
  br label %31

31:                                               ; preds = %29
  %32 = add nuw nsw i32 %.03, 1
  br label %27, !llvm.loop !7

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !8

36:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  store i32 5, i32* @b, align 4
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp ult i32 %.0, 70
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [70 x i32], [70 x i32]* @c, i64 0, i64 %4
  store i32 2075593088, i32* %5, align 4
  br label %6

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !9

8:                                                ; preds = %1
  call void @fn2()
  %9 = load i32, i32* @e, align 4
  call void @f(i64* noundef nonnull @a, i32 noundef %9)
  %10 = load i64, i64* @a, align 8
  %.not = icmp eq i64 %10, 0
  br i1 %.not, label %12, label %11

11:                                               ; preds = %8
  call void @abort() #4
  unreachable

12:                                               ; preds = %8
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
