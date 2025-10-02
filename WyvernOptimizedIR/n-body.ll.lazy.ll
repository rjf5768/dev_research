; ModuleID = './n-body.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/n-body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.planet = type { double, double, double, double, double, double, double }

@bodies = dso_local global [5 x %struct.planet] [%struct.planet { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x4043BD3CC9BE45DE }, %struct.planet { double 0x40135DA0343CD92C, double 0xBFF290ABC01FDB7C, double 0xBFBA86F96C25EBF0, double 0x3FE367069B93CCBC, double 0x40067EF2F57D949B, double 0xBF99D2D79A5A0715, double 0x3FA34C95D9AB33D8 }, %struct.planet { double 0x4020AFCDC332CA67, double 0x40107FCB31DE01B0, double 0xBFD9D353E1EB467C, double 0xBFF02C21B8879442, double 0x3FFD35E9BF1F8F13, double 0x3F813C485F1123B4, double 0x3F871D490D07C637 }, %struct.planet { double 0x4029C9EACEA7D9CF, double 0xC02E38E8D626667E, double 0xBFCC9557BE257DA0, double 0x3FF1531CA9911BEF, double 0x3FEBCC7F3E54BBC5, double 0xBF862F6BFAF23E7C, double 0x3F5C3DD29CF41EB3 }, %struct.planet { double 0x402EC267A905572A, double 0xC039EB5833C8A220, double 0x3FC6F1F393ABE540, double 0x3FEF54B61659BC4A, double 0x3FE307C631C4FBA3, double 0xBFA1CB88587665F6, double 0x3F60A8F3531799AC }], align 16
@.str = private unnamed_addr constant [6 x i8] c"%.9f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @advance(i32 noundef %0, %struct.planet* nocapture noundef %1, double noundef %2) #0 {
  br label %4

4:                                                ; preds = %75, %3
  %.01 = phi i32 [ 0, %3 ], [ %76, %75 ]
  %5 = icmp slt i32 %.01, %0
  br i1 %5, label %6, label %77

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64
  br label %8

8:                                                ; preds = %73, %6
  %.0.in = phi i32 [ %.01, %6 ], [ %.0, %73 ]
  %.0 = add nuw nsw i32 %.0.in, 1
  %9 = icmp slt i32 %.0, %0
  br i1 %9, label %10, label %74

10:                                               ; preds = %8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %7, i32 0
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %11, i32 0
  %15 = load double, double* %14, align 8
  %16 = fsub double %13, %15
  %17 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %7, i32 1
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %11, i32 1
  %20 = load double, double* %19, align 8
  %21 = fsub double %18, %20
  %22 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %7, i32 2
  %23 = load double, double* %22, align 8
  %24 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %11, i32 2
  %25 = load double, double* %24, align 8
  %26 = fsub double %23, %25
  %27 = fmul double %21, %21
  %28 = call double @llvm.fmuladd.f64(double %16, double %16, double %27)
  %29 = call double @llvm.fmuladd.f64(double %26, double %26, double %28)
  %30 = call double @sqrt(double noundef %29) #5
  %31 = fmul double %30, %30
  %32 = fmul double %31, %30
  %33 = fdiv double %2, %32
  %34 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %11, i32 6
  %35 = load double, double* %34, align 8
  %36 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %7, i32 3
  %37 = load double, double* %36, align 8
  %38 = fneg double %16
  %39 = fmul double %35, %38
  %40 = call double @llvm.fmuladd.f64(double %39, double %33, double %37)
  store double %40, double* %36, align 8
  %41 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %11, i32 6
  %42 = load double, double* %41, align 8
  %43 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %7, i32 4
  %44 = load double, double* %43, align 8
  %45 = fneg double %21
  %46 = fmul double %42, %45
  %47 = call double @llvm.fmuladd.f64(double %46, double %33, double %44)
  store double %47, double* %43, align 8
  %48 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %11, i32 6
  %49 = load double, double* %48, align 8
  %50 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %7, i32 5
  %51 = load double, double* %50, align 8
  %52 = fneg double %26
  %53 = fmul double %49, %52
  %54 = call double @llvm.fmuladd.f64(double %53, double %33, double %51)
  store double %54, double* %50, align 8
  %55 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %7, i32 6
  %56 = load double, double* %55, align 8
  %57 = fmul double %16, %56
  %58 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %11, i32 3
  %59 = load double, double* %58, align 8
  %60 = call double @llvm.fmuladd.f64(double %57, double %33, double %59)
  store double %60, double* %58, align 8
  %61 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %7, i32 6
  %62 = load double, double* %61, align 8
  %63 = fmul double %21, %62
  %64 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %11, i32 4
  %65 = load double, double* %64, align 8
  %66 = call double @llvm.fmuladd.f64(double %63, double %33, double %65)
  store double %66, double* %64, align 8
  %67 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %7, i32 6
  %68 = load double, double* %67, align 8
  %69 = fmul double %26, %68
  %70 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %11, i32 5
  %71 = load double, double* %70, align 8
  %72 = call double @llvm.fmuladd.f64(double %69, double %33, double %71)
  store double %72, double* %70, align 8
  br label %73

73:                                               ; preds = %10
  br label %8, !llvm.loop !4

74:                                               ; preds = %8
  br label %75

75:                                               ; preds = %74
  %76 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !6

77:                                               ; preds = %4
  br label %78

78:                                               ; preds = %97, %77
  %.1 = phi i32 [ 0, %77 ], [ %98, %97 ]
  %79 = icmp slt i32 %.1, %0
  br i1 %79, label %80, label %99

80:                                               ; preds = %78
  %81 = zext i32 %.1 to i64
  %82 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %81, i32 3
  %83 = load double, double* %82, align 8
  %84 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %81, i32 0
  %85 = load double, double* %84, align 8
  %86 = call double @llvm.fmuladd.f64(double %2, double %83, double %85)
  store double %86, double* %84, align 8
  %87 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %81, i32 4
  %88 = load double, double* %87, align 8
  %89 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %81, i32 1
  %90 = load double, double* %89, align 8
  %91 = call double @llvm.fmuladd.f64(double %2, double %88, double %90)
  store double %91, double* %89, align 8
  %92 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %81, i32 5
  %93 = load double, double* %92, align 8
  %94 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %81, i32 2
  %95 = load double, double* %94, align 8
  %96 = call double @llvm.fmuladd.f64(double %2, double %93, double %95)
  store double %96, double* %94, align 8
  br label %97

97:                                               ; preds = %80
  %98 = add nuw nsw i32 %.1, 1
  br label %78, !llvm.loop !7

99:                                               ; preds = %78
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @energy(i32 noundef %0, %struct.planet* nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %52, %2
  %.02 = phi double [ 0.000000e+00, %2 ], [ %.1, %52 ]
  %.01 = phi i32 [ 0, %2 ], [ %53, %52 ]
  %4 = icmp slt i32 %.01, %0
  br i1 %4, label %5, label %54

5:                                                ; preds = %3
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %6, i32 6
  %8 = load double, double* %7, align 8
  %9 = fmul double %8, 5.000000e-01
  %10 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %6, i32 3
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %6, i32 4
  %13 = load double, double* %12, align 8
  %14 = fmul double %13, %13
  %15 = call double @llvm.fmuladd.f64(double %11, double %11, double %14)
  %16 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %6, i32 5
  %17 = load double, double* %16, align 8
  %18 = call double @llvm.fmuladd.f64(double %17, double %17, double %15)
  %19 = call double @llvm.fmuladd.f64(double %9, double %18, double %.02)
  br label %20

20:                                               ; preds = %43, %5
  %.1 = phi double [ %19, %5 ], [ %50, %43 ]
  %.0.in = phi i32 [ %.01, %5 ], [ %.0, %43 ]
  %.0 = add nuw nsw i32 %.0.in, 1
  %21 = icmp slt i32 %.0, %0
  br i1 %21, label %22, label %51

22:                                               ; preds = %20
  %23 = zext i32 %.0 to i64
  %24 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %6, i32 0
  %25 = load double, double* %24, align 8
  %26 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %23, i32 0
  %27 = load double, double* %26, align 8
  %28 = fsub double %25, %27
  %29 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %6, i32 1
  %30 = load double, double* %29, align 8
  %31 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %23, i32 1
  %32 = load double, double* %31, align 8
  %33 = fsub double %30, %32
  %34 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %6, i32 2
  %35 = load double, double* %34, align 8
  %36 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %23, i32 2
  %37 = load double, double* %36, align 8
  %38 = fsub double %35, %37
  %39 = fmul double %33, %33
  %40 = call double @llvm.fmuladd.f64(double %28, double %28, double %39)
  %41 = call double @llvm.fmuladd.f64(double %38, double %38, double %40)
  %42 = call double @sqrt(double noundef %41) #5
  br label %43

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %6, i32 6
  %45 = load double, double* %44, align 8
  %46 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %23, i32 6
  %47 = load double, double* %46, align 8
  %48 = fmul double %45, %47
  %49 = fdiv double %48, %42
  %50 = fsub double %.1, %49
  br label %20, !llvm.loop !8

51:                                               ; preds = %20
  br label %52

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !9

54:                                               ; preds = %3
  ret double %.02
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @offset_momentum(i32 noundef %0, %struct.planet* nocapture noundef %1) #3 {
  br label %3

3:                                                ; preds = %6, %2
  %.03 = phi double [ 0.000000e+00, %2 ], [ %20, %6 ]
  %.02 = phi double [ 0.000000e+00, %2 ], [ %27, %6 ]
  %.01 = phi double [ 0.000000e+00, %2 ], [ %13, %6 ]
  %.0 = phi i32 [ 0, %2 ], [ %28, %6 ]
  %4 = icmp slt i32 %.0, %0
  br i1 %4, label %5, label %29

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %7, i32 5
  %9 = load double, double* %8, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %10, i32 6
  %12 = load double, double* %11, align 8
  %13 = call double @llvm.fmuladd.f64(double %9, double %12, double %.01)
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %14, i32 4
  %16 = load double, double* %15, align 8
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %17, i32 6
  %19 = load double, double* %18, align 8
  %20 = call double @llvm.fmuladd.f64(double %16, double %19, double %.03)
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %21, i32 3
  %23 = load double, double* %22, align 8
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 %24, i32 6
  %26 = load double, double* %25, align 8
  %27 = call double @llvm.fmuladd.f64(double %23, double %26, double %.02)
  %28 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !10

29:                                               ; preds = %3
  %30 = fdiv double %.02, 0xC043BD3CC9BE45DE
  %31 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 0, i32 3
  store double %30, double* %31, align 8
  %32 = fdiv double %.03, 0xC043BD3CC9BE45DE
  %33 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 0, i32 4
  store double %32, double* %33, align 8
  %34 = fdiv double %.01, 0xC043BD3CC9BE45DE
  %35 = getelementptr inbounds %struct.planet, %struct.planet* %1, i64 0, i32 5
  store double %34, double* %35, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  call void @offset_momentum(i32 noundef 5, %struct.planet* noundef getelementptr inbounds ([5 x %struct.planet], [5 x %struct.planet]* @bodies, i64 0, i64 0))
  %3 = call double @energy(i32 noundef 5, %struct.planet* noundef getelementptr inbounds ([5 x %struct.planet], [5 x %struct.planet]* @bodies, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double noundef %3) #5
  br label %5

5:                                                ; preds = %8, %2
  %.0 = phi i32 [ 1, %2 ], [ %9, %8 ]
  %6 = icmp ult i32 %.0, 5000001
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  call void @advance(i32 noundef 5, %struct.planet* noundef getelementptr inbounds ([5 x %struct.planet], [5 x %struct.planet]* @bodies, i64 0, i64 0), double noundef 1.000000e-02)
  br label %8

8:                                                ; preds = %7
  %9 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !11

10:                                               ; preds = %5
  %11 = call double @energy(i32 noundef 5, %struct.planet* noundef getelementptr inbounds ([5 x %struct.planet], [5 x %struct.planet]* @bodies, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double noundef %11) #5
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
