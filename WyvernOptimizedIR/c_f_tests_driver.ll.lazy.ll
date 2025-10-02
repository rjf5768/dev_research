; ModuleID = './c_f_tests_driver.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_f_tests_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myCDerived = type { i32, double, float, i16, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.myCDerived, align 8
  %4 = alloca [10 x %struct.myCDerived], align 16
  %5 = alloca [2 x [3 x %struct.myCDerived]], align 16
  %6 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %3, i64 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %3, i64 0, i32 1
  store double 2.000000e+00, double* %7, align 8
  %8 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %3, i64 0, i32 2
  store float 3.000000e+00, float* %8, align 8
  %9 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %3, i64 0, i32 3
  store i16 4, i16* %9, align 4
  %10 = getelementptr inbounds %struct.myCDerived, %struct.myCDerived* %3, i64 0, i32 4
  store i8* null, i8** %10, align 8
  br label %11

11:                                               ; preds = %31, %2
  %.01 = phi i32 [ 0, %2 ], [ %32, %31 ]
  %12 = icmp ult i32 %.01, 10
  br i1 %12, label %13, label %33

13:                                               ; preds = %11
  %14 = add nuw nsw i32 %.01, 1
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %4, i64 0, i64 %15, i32 0
  store i32 %14, i32* %16, align 16
  %17 = add nuw nsw i32 %.01, 1
  %18 = sitofp i32 %17 to double
  %19 = zext i32 %.01 to i64
  %20 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %4, i64 0, i64 %19, i32 1
  store double %18, double* %20, align 8
  %21 = add nuw nsw i32 %.01, 1
  %22 = sitofp i32 %21 to float
  %23 = zext i32 %.01 to i64
  %24 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %4, i64 0, i64 %23, i32 2
  store float %22, float* %24, align 16
  %25 = trunc i32 %.01 to i16
  %26 = add i16 %25, 1
  %27 = zext i32 %.01 to i64
  %28 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %4, i64 0, i64 %27, i32 3
  store i16 %26, i16* %28, align 4
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %4, i64 0, i64 %29, i32 4
  store i8* null, i8** %30, align 8
  br label %31

31:                                               ; preds = %13
  %32 = add nuw nsw i32 %.01, 1
  br label %11, !llvm.loop !4

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %72, %33
  %.1 = phi i32 [ 0, %33 ], [ %73, %72 ]
  %35 = icmp ult i32 %.1, 2
  br i1 %35, label %36, label %74

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %69, %36
  %.0 = phi i32 [ 0, %36 ], [ %70, %69 ]
  %38 = icmp ult i32 %.0, 3
  br i1 %38, label %39, label %71

39:                                               ; preds = %37
  %40 = shl nuw nsw i32 %.1, 1
  %41 = add nuw nsw i32 %40, %.0
  %42 = zext i32 %.1 to i64
  %43 = zext i32 %.0 to i64
  %44 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %5, i64 0, i64 %42, i64 %43, i32 0
  store i32 %41, i32* %44, align 16
  %45 = shl nuw nsw i32 %.1, 1
  %46 = sitofp i32 %45 to double
  %47 = sitofp i32 %.0 to double
  %48 = fadd double %46, %47
  %49 = zext i32 %.1 to i64
  %50 = zext i32 %.0 to i64
  %51 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %5, i64 0, i64 %49, i64 %50, i32 1
  store double %48, double* %51, align 8
  %52 = shl nuw nsw i32 %.1, 1
  %53 = sitofp i32 %52 to double
  %54 = sitofp i32 %.0 to double
  %55 = fadd double %53, %54
  %56 = fptrunc double %55 to float
  %57 = zext i32 %.1 to i64
  %58 = zext i32 %.0 to i64
  %59 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %5, i64 0, i64 %57, i64 %58, i32 2
  store float %56, float* %59, align 16
  %60 = shl nuw nsw i32 %.1, 1
  %61 = add nuw nsw i32 %60, %.0
  %62 = trunc i32 %61 to i16
  %63 = zext i32 %.1 to i64
  %64 = zext i32 %.0 to i64
  %65 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %5, i64 0, i64 %63, i64 %64, i32 3
  store i16 %62, i16* %65, align 4
  %66 = zext i32 %.1 to i64
  %67 = zext i32 %.0 to i64
  %68 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %5, i64 0, i64 %66, i64 %67, i32 4
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %39
  %70 = add nuw nsw i32 %.0, 1
  br label %37, !llvm.loop !6

71:                                               ; preds = %37
  br label %72

72:                                               ; preds = %71
  %73 = add nuw nsw i32 %.1, 1
  br label %34, !llvm.loop !7

74:                                               ; preds = %34
  %75 = getelementptr inbounds [10 x %struct.myCDerived], [10 x %struct.myCDerived]* %4, i64 0, i64 0
  %76 = getelementptr inbounds [2 x [3 x %struct.myCDerived]], [2 x [3 x %struct.myCDerived]]* %5, i64 0, i64 0, i64 0
  call void @testDerivedPtrs(%struct.myCDerived* noundef nonnull %3, %struct.myCDerived* noundef nonnull %75, i32 noundef 10, %struct.myCDerived* noundef nonnull %76, i32 noundef 3, i32 noundef 2) #3
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

declare dso_local void @testDerivedPtrs(%struct.myCDerived* noundef, %struct.myCDerived* noundef, i32 noundef, %struct.myCDerived* noundef, i32 noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
