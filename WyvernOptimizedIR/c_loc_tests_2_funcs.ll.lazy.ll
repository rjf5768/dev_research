; ModuleID = './c_loc_tests_2_funcs.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_loc_tests_2_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctype = type { i32, double }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @test_scalar_address(i32* nocapture noundef readonly %0) #0 {
  %2 = load i32, i32* %0, align 4
  %.not = icmp eq i32 %2, 100
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 0, %3 ], [ 1, %4 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @test_array_address(i32* nocapture noundef readonly %0, i32 noundef %1) #1 {
  br label %3

3:                                                ; preds = %11, %2
  %.01 = phi i32 [ 0, %2 ], [ %12, %11 ]
  %4 = icmp slt i32 %.01, %1
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = load i32, i32* %7, align 4
  %.not = icmp eq i32 %8, 100
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  br label %14

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !4

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %9
  %.0 = phi i32 [ 0, %9 ], [ 1, %13 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local i32 @test_type_address(%struct.ctype* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ctype, %struct.ctype* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 100
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ctype, %struct.ctype* %0, i64 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = fadd double %7, -1.000000e+00
  %9 = fcmp ueq double %8, 0.000000e+00
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %12

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11, %10, %4
  %.0 = phi i32 [ 0, %4 ], [ 0, %10 ], [ 1, %11 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
