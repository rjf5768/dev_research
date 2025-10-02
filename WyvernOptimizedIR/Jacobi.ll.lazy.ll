; ModuleID = './Jacobi.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/Jacobi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @ApplyGivens(double** nocapture noundef readonly %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  br label %8

8:                                                ; preds = %37, %7
  %.0 = phi i32 [ %5, %7 ], [ %38, %37 ]
  %.not = icmp sgt i32 %.0, %6
  br i1 %.not, label %39, label %9

9:                                                ; preds = %8
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds double*, double** %0, i64 %10
  %12 = load double*, double** %11, align 8
  %13 = sext i32 %.0 to i64
  %14 = getelementptr inbounds double, double* %12, i64 %13
  %15 = load double, double* %14, align 8
  %16 = sext i32 %4 to i64
  %17 = getelementptr inbounds double*, double** %0, i64 %16
  %18 = load double*, double** %17, align 8
  %19 = sext i32 %.0 to i64
  %20 = getelementptr inbounds double, double* %18, i64 %19
  %21 = load double, double* %20, align 8
  %22 = fneg double %21
  %23 = fmul double %22, %1
  %24 = call double @llvm.fmuladd.f64(double %2, double %15, double %23)
  %25 = sext i32 %3 to i64
  %26 = getelementptr inbounds double*, double** %0, i64 %25
  %27 = load double*, double** %26, align 8
  %28 = sext i32 %.0 to i64
  %29 = getelementptr inbounds double, double* %27, i64 %28
  store double %24, double* %29, align 8
  %30 = fmul double %21, %2
  %31 = call double @llvm.fmuladd.f64(double %1, double %15, double %30)
  %32 = sext i32 %4 to i64
  %33 = getelementptr inbounds double*, double** %0, i64 %32
  %34 = load double*, double** %33, align 8
  %35 = sext i32 %.0 to i64
  %36 = getelementptr inbounds double, double* %34, i64 %35
  store double %31, double* %36, align 8
  br label %37

37:                                               ; preds = %9
  %38 = add nsw i32 %.0, 1
  br label %8, !llvm.loop !4

39:                                               ; preds = %8
  br label %40

40:                                               ; preds = %69, %39
  %.1 = phi i32 [ %5, %39 ], [ %70, %69 ]
  %.not1 = icmp sgt i32 %.1, %6
  br i1 %.not1, label %71, label %41

41:                                               ; preds = %40
  %42 = sext i32 %.1 to i64
  %43 = getelementptr inbounds double*, double** %0, i64 %42
  %44 = load double*, double** %43, align 8
  %45 = sext i32 %3 to i64
  %46 = getelementptr inbounds double, double* %44, i64 %45
  %47 = load double, double* %46, align 8
  %48 = sext i32 %.1 to i64
  %49 = getelementptr inbounds double*, double** %0, i64 %48
  %50 = load double*, double** %49, align 8
  %51 = sext i32 %4 to i64
  %52 = getelementptr inbounds double, double* %50, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fneg double %53
  %55 = fmul double %54, %1
  %56 = call double @llvm.fmuladd.f64(double %2, double %47, double %55)
  %57 = sext i32 %.1 to i64
  %58 = getelementptr inbounds double*, double** %0, i64 %57
  %59 = load double*, double** %58, align 8
  %60 = sext i32 %3 to i64
  %61 = getelementptr inbounds double, double* %59, i64 %60
  store double %56, double* %61, align 8
  %62 = fmul double %53, %2
  %63 = call double @llvm.fmuladd.f64(double %1, double %47, double %62)
  %64 = sext i32 %.1 to i64
  %65 = getelementptr inbounds double*, double** %0, i64 %64
  %66 = load double*, double** %65, align 8
  %67 = sext i32 %4 to i64
  %68 = getelementptr inbounds double, double* %66, i64 %67
  store double %63, double* %68, align 8
  br label %69

69:                                               ; preds = %41
  %70 = add nsw i32 %.1, 1
  br label %40, !llvm.loop !6

71:                                               ; preds = %40
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double** @Jacobi(double** nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = call double** @newIdMatrix() #4
  br label %6

6:                                                ; preds = %92, %2
  %.02 = phi i32 [ %1, %2 ], [ %93, %92 ]
  %7 = icmp sgt i32 %.02, 1
  br i1 %7, label %8, label %94

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %89, %8
  %.01 = phi i32 [ 0, %8 ], [ %90, %89 ]
  %10 = sub nsw i32 51, %.02
  %11 = icmp slt i32 %.01, %10
  br i1 %11, label %12, label %91

12:                                               ; preds = %9
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds double*, double** %0, i64 %13
  %15 = load double*, double** %14, align 8
  %16 = add nsw i32 %.01, %.02
  %17 = add nsw i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, double* %15, i64 %18
  %20 = load double, double* %19, align 8
  %21 = zext i32 %.01 to i64
  %22 = getelementptr inbounds double*, double** %0, i64 %21
  %23 = load double*, double** %22, align 8
  %24 = add nsw i32 %.01, %.02
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  %27 = load double, double* %26, align 8
  call void @Givens(double noundef %20, double noundef %27, double* noundef nonnull %3, double* noundef nonnull %4) #4
  %28 = load double, double* %3, align 8
  %29 = load double, double* %4, align 8
  %30 = add nsw i32 %.01, %.02
  %31 = add nsw i32 %30, -1
  %32 = add nsw i32 %.01, %.02
  %33 = shl nsw i32 %.02, 1
  %34 = add nsw i32 %.01, %33
  %35 = icmp slt i32 %34, 51
  br i1 %35, label %36, label %39

36:                                               ; preds = %12
  %37 = shl nsw i32 %.02, 1
  %38 = add nsw i32 %.01, %37
  br label %40

39:                                               ; preds = %12
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 50, %39 ]
  call void @ApplyGivens(double** noundef %0, double noundef %28, double noundef %29, i32 noundef %31, i32 noundef %32, i32 noundef %.01, i32 noundef %41)
  %42 = load double, double* %3, align 8
  %43 = load double, double* %4, align 8
  %44 = add nsw i32 %.01, %.02
  %45 = add nsw i32 %44, -1
  %46 = add nsw i32 %.01, %.02
  call void @ApplyRGivens(double** noundef %5, double noundef %42, double noundef %43, i32 noundef %45, i32 noundef %46) #4
  br label %47

47:                                               ; preds = %81, %40
  %.01.pn = phi i32 [ %.01, %40 ], [ %.0, %81 ]
  %.0 = add nsw i32 %.01.pn, %.02
  %48 = sub nsw i32 51, %.02
  %49 = icmp slt i32 %.0, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  %51 = add nsw i32 %.0, -1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double*, double** %0, i64 %52
  %54 = load double*, double** %53, align 8
  %55 = add nsw i32 %.0, %.02
  %56 = add nsw i32 %55, -1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %54, i64 %57
  %59 = load double, double* %58, align 8
  %60 = add nsw i32 %.0, -1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double*, double** %0, i64 %61
  %63 = load double*, double** %62, align 8
  %64 = add nsw i32 %.0, %.02
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %63, i64 %65
  %67 = load double, double* %66, align 8
  call void @Givens(double noundef %59, double noundef %67, double* noundef nonnull %3, double* noundef nonnull %4) #4
  %68 = load double, double* %3, align 8
  %69 = load double, double* %4, align 8
  %70 = add nsw i32 %.0, %.02
  %71 = add nsw i32 %70, -1
  %72 = add nsw i32 %.0, %.02
  %73 = add nsw i32 %.0, -1
  %74 = shl nsw i32 %.02, 1
  %75 = add nsw i32 %.0, %74
  %76 = icmp slt i32 %75, 51
  br i1 %76, label %77, label %80

77:                                               ; preds = %50
  %78 = shl nsw i32 %.02, 1
  %79 = add nsw i32 %.0, %78
  br label %81

80:                                               ; preds = %50
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 50, %80 ]
  call void @ApplyGivens(double** noundef %0, double noundef %68, double noundef %69, i32 noundef %71, i32 noundef %72, i32 noundef %73, i32 noundef %82)
  %83 = load double, double* %3, align 8
  %84 = load double, double* %4, align 8
  %85 = add nsw i32 %.0, %.02
  %86 = add nsw i32 %85, -1
  %87 = add nsw i32 %.0, %.02
  call void @ApplyRGivens(double** noundef %5, double noundef %83, double noundef %84, i32 noundef %86, i32 noundef %87) #4
  br label %47, !llvm.loop !7

88:                                               ; preds = %47
  br label %89

89:                                               ; preds = %88
  %90 = add nuw nsw i32 %.01, 1
  br label %9, !llvm.loop !8

91:                                               ; preds = %9
  br label %92

92:                                               ; preds = %91
  %93 = add nsw i32 %.02, -1
  br label %6, !llvm.loop !9

94:                                               ; preds = %6
  ret double** %5
}

declare dso_local double** @newIdMatrix() #3

declare dso_local void @Givens(double noundef, double noundef, double* noundef, double* noundef) #3

declare dso_local void @ApplyRGivens(double** noundef, double noundef, double noundef, i32 noundef, i32 noundef) #3

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
