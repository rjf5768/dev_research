; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_pointer_logical_driver.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_pointer_logical_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca [10 x i8], align 1
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 1, i8* %6, align 1
  call void @test_scalar(i8* noundef %6)
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %16, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %14
  store i8 1, i8* %15, align 1
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 2
  store i32 %18, i32* %8, align 4
  br label %9, !llvm.loop !4

19:                                               ; preds = %9
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %27, %19
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  br label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %8, align 4
  br label %20, !llvm.loop !6

30:                                               ; preds = %20
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  call void @test_array(i8* noundef %31, i32 noundef 10)
  ret i32 0
}

declare dso_local void @test_scalar(i8* noundef) #1

declare dso_local void @test_array(i8* noundef, i32 noundef) #1

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
