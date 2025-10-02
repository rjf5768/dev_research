; ModuleID = './idctref.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/idctref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = internal global [8 x [8 x double]] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize_Reference_IDCT() #0 {
  br label %1

1:                                                ; preds = %25, %0
  %.0 = phi i32 [ 0, %0 ], [ %26, %25 ]
  %2 = icmp ult i32 %.0, 8
  br i1 %2, label %3, label %27

3:                                                ; preds = %1
  %4 = icmp eq i32 %.0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  %sqrtf = call float @sqrtf(float noundef 1.250000e-01) #1
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi double [ 0x3FD6A09E667F3BCD, %5 ], [ 5.000000e-01, %6 ]
  br label %9

9:                                                ; preds = %22, %7
  %.01 = phi i32 [ 0, %7 ], [ %23, %22 ]
  %10 = icmp ult i32 %.01, 8
  br i1 %10, label %11, label %24

11:                                               ; preds = %9
  %12 = sitofp i32 %.0 to double
  %13 = fmul double %12, 0x3FD921FB54442D18
  %14 = sitofp i32 %.01 to double
  %15 = fadd double %14, 5.000000e-01
  %16 = fmul double %13, %15
  %17 = call double @cos(double noundef %16) #4
  %18 = fmul double %8, %17
  %19 = zext i32 %.0 to i64
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i64 0, i64 %19, i64 %20
  store double %18, double* %21, align 8
  br label %22

22:                                               ; preds = %11
  %23 = add nuw nsw i32 %.01, 1
  br label %9, !llvm.loop !4

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

27:                                               ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Reference_IDCT(i16* nocapture noundef %0) #2 {
  %2 = alloca [64 x double], align 16
  br label %3

3:                                                ; preds = %33, %1
  %.01 = phi i32 [ 0, %1 ], [ %34, %33 ]
  %4 = icmp ult i32 %.01, 8
  br i1 %4, label %5, label %35

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %30, %5
  %.03 = phi i32 [ 0, %5 ], [ %31, %30 ]
  %7 = icmp ult i32 %.03, 8
  br i1 %7, label %8, label %32

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %12, %8
  %.05 = phi i32 [ 0, %8 ], [ %24, %12 ]
  %.0 = phi double [ 0.000000e+00, %8 ], [ %23, %12 ]
  %10 = icmp ult i32 %.05, 8
  br i1 %10, label %11, label %25

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11
  %13 = zext i32 %.05 to i64
  %14 = zext i32 %.03 to i64
  %15 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i64 0, i64 %13, i64 %14
  %16 = load double, double* %15, align 8
  %17 = shl nsw i32 %.01, 3
  %18 = add nuw nsw i32 %17, %.05
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %0, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = sitofp i16 %21 to double
  %23 = call double @llvm.fmuladd.f64(double %16, double %22, double %.0)
  %24 = add nuw nsw i32 %.05, 1
  br label %9, !llvm.loop !7

25:                                               ; preds = %9
  %26 = shl nsw i32 %.01, 3
  %27 = add nuw nsw i32 %26, %.03
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [64 x double], [64 x double]* %2, i64 0, i64 %28
  store double %.0, double* %29, align 8
  br label %30

30:                                               ; preds = %25
  %31 = add nuw nsw i32 %.03, 1
  br label %6, !llvm.loop !8

32:                                               ; preds = %6
  br label %33

33:                                               ; preds = %32
  %34 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !9

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %79, %35
  %.14 = phi i32 [ 0, %35 ], [ %80, %79 ]
  %37 = icmp ult i32 %.14, 8
  br i1 %37, label %38, label %81

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %76, %38
  %.12 = phi i32 [ 0, %38 ], [ %77, %76 ]
  %40 = icmp ult i32 %.12, 8
  br i1 %40, label %41, label %78

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %45, %41
  %.16 = phi i32 [ 0, %41 ], [ %56, %45 ]
  %.1 = phi double [ 0.000000e+00, %41 ], [ %55, %45 ]
  %43 = icmp ult i32 %.16, 8
  br i1 %43, label %44, label %57

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = zext i32 %.16 to i64
  %47 = zext i32 %.12 to i64
  %48 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i64 0, i64 %46, i64 %47
  %49 = load double, double* %48, align 8
  %50 = shl nsw i32 %.16, 3
  %51 = add nuw nsw i32 %50, %.14
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [64 x double], [64 x double]* %2, i64 0, i64 %52
  %54 = load double, double* %53, align 8
  %55 = call double @llvm.fmuladd.f64(double %49, double %54, double %.1)
  %56 = add nuw nsw i32 %.16, 1
  br label %42, !llvm.loop !10

57:                                               ; preds = %42
  %58 = fadd double %.1, 5.000000e-01
  %59 = call double @llvm.floor.f64(double %58)
  %60 = fptosi double %59 to i32
  %61 = icmp slt i32 %60, -256
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %69

63:                                               ; preds = %57
  %64 = icmp sgt i32 %60, 255
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  br label %67

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %66, %65
  %68 = phi i32 [ 255, %65 ], [ %60, %66 ]
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi i32 [ -256, %62 ], [ %68, %67 ]
  %71 = trunc i32 %70 to i16
  %72 = shl nsw i32 %.12, 3
  %73 = add nuw nsw i32 %72, %.14
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %0, i64 %74
  store i16 %71, i16* %75, align 2
  br label %76

76:                                               ; preds = %69
  %77 = add nuw nsw i32 %.12, 1
  br label %39, !llvm.loop !11

78:                                               ; preds = %39
  br label %79

79:                                               ; preds = %78
  %80 = add nuw nsw i32 %.14, 1
  br label %36, !llvm.loop !12

81:                                               ; preds = %36
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare float @sqrtf(float)

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
