; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_pointer_shape_tests_2_driver.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_pointer_shape_tests_2_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca [2 x [3 x i32]], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %18, %2
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %16
  store i32 %14, i32* %17, align 4
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  br label %10, !llvm.loop !4

21:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %44, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %30, 3
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %7, i64 0, i64 %35
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 %38
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %26, !llvm.loop !6

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %22, !llvm.loop !7

47:                                               ; preds = %22
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  call void @test_long_long_1d(i32* noundef %48, i32 noundef 10)
  %49 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %7, i64 0, i64 0
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %49, i64 0, i64 0
  call void @test_long_long_2d(i32* noundef %50, i32 noundef 3, i32 noundef 2)
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  call void @test_long_1d(i32* noundef %51, i32 noundef 10)
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  call void @test_int_1d(i32* noundef %52, i32 noundef 10)
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  call void @test_short_1d(i32* noundef %53, i32 noundef 10)
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  call void @test_mixed(i32* noundef %54, i32 noundef 10)
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
