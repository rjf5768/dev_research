; ModuleID = './c_f_pointer_shape_tests_4_driver.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_pointer_shape_tests_4_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca [10 x i32], align 16
  %4 = alloca [2 x [3 x i32]], align 16
  br label %5

5:                                                ; preds = %10, %2
  %.01 = phi i32 [ 0, %2 ], [ %11, %10 ]
  %6 = icmp ult i32 %.01, 10
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %8
  store i32 %.01, i32* %9, align 4
  br label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !4

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %27, %12
  %.1 = phi i32 [ 0, %12 ], [ %28, %27 ]
  %14 = icmp ult i32 %.1, 2
  br i1 %14, label %15, label %29

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %24, %15
  %.0 = phi i32 [ 0, %15 ], [ %25, %24 ]
  %17 = icmp ult i32 %.0, 3
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  %19 = mul nsw i32 %.1, 3
  %20 = add nuw nsw i32 %19, %.0
  %21 = zext i32 %.1 to i64
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %4, i64 0, i64 %21, i64 %22
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %18
  %25 = add nuw nsw i32 %.0, 1
  br label %16, !llvm.loop !6

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.1, 1
  br label %13, !llvm.loop !7

29:                                               ; preds = %13
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  call void @test_long_long_1d(i32* noundef nonnull %30, i32 noundef 10) #2
  %31 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %4, i64 0, i64 0, i64 0
  call void @test_long_long_2d(i32* noundef nonnull %31, i32 noundef 3, i32 noundef 2) #2
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  call void @test_long_1d(i32* noundef nonnull %32, i32 noundef 10) #2
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  call void @test_int_1d(i32* noundef nonnull %33, i32 noundef 10) #2
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  call void @test_short_1d(i32* noundef nonnull %34, i32 noundef 10) #2
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  call void @test_mixed(i32* noundef nonnull %35, i32 noundef 10) #2
  ret i32 0
}

declare dso_local void @test_long_long_1d(i32* noundef, i32 noundef) #1

declare dso_local void @test_long_long_2d(i32* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @test_long_1d(i32* noundef, i32 noundef) #1

declare dso_local void @test_int_1d(i32* noundef, i32 noundef) #1

declare dso_local void @test_short_1d(i32* noundef, i32 noundef) #1

declare dso_local void @test_mixed(i32* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
