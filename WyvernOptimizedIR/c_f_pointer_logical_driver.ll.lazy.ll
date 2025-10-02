; ModuleID = './c_f_pointer_logical_driver.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_pointer_logical_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [10 x i8], align 1
  store i8 1, i8* %3, align 1
  call void @test_scalar(i8* noundef nonnull %3) #2
  br label %5

5:                                                ; preds = %10, %2
  %.0 = phi i32 [ 0, %2 ], [ %11, %10 ]
  %6 = icmp ult i32 %.0, 10
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 %8
  store i8 1, i8* %9, align 1
  br label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %.0, 2
  br label %5, !llvm.loop !4

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %18, %12
  %.1 = phi i32 [ 1, %12 ], [ %19, %18 ]
  %14 = icmp ult i32 %.1, 10
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = zext i32 %.1 to i64
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 %16
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %15
  %19 = add nuw nsw i32 %.1, 2
  br label %13, !llvm.loop !6

20:                                               ; preds = %13
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  call void @test_array(i8* noundef nonnull %21, i32 noundef 10) #2
  ret i32 0
}

declare dso_local void @test_scalar(i8* noundef) #1

declare dso_local void @test_array(i8* noundef, i32 noundef) #1

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
