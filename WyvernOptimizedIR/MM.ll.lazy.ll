; ModuleID = './MM.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/MM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double** @MakeMatrix(i32 noundef %0) #0 {
  %2 = call double** @newMatrix()
  br label %3

3:                                                ; preds = %47, %1
  %.01 = phi i32 [ 0, %1 ], [ %48, %47 ]
  %4 = icmp ult i32 %.01, 51
  br i1 %4, label %5, label %49

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %44, %5
  %.0 = phi i32 [ %.01, %5 ], [ %45, %44 ]
  %7 = icmp ult i32 %.0, 51
  br i1 %7, label %8, label %46

8:                                                ; preds = %6
  %9 = sub nsw i32 %.0, %.01
  %10 = call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = icmp sgt i32 %10, %0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds double*, double** %2, i64 %13
  %15 = load double*, double** %14, align 8
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds double, double* %15, i64 %16
  store double 0.000000e+00, double* %17, align 8
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds double*, double** %2, i64 %18
  %20 = load double*, double** %19, align 8
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds double, double* %20, i64 %21
  store double 0.000000e+00, double* %22, align 8
  br label %43

23:                                               ; preds = %8
  %24 = call double @sqrt(double noundef 0x401921FB54442D18) #8
  %25 = sub nsw i32 %.01, %.0
  %26 = sitofp i32 %25 to double
  %27 = fmul double %26, -3.200000e-01
  %28 = sub nsw i32 %.01, %.0
  %29 = sitofp i32 %28 to double
  %30 = fmul double %27, %29
  %31 = call double @exp(double noundef %30) #8
  %32 = fmul double %31, 0x3FD46D04297691DB
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds double*, double** %2, i64 %33
  %35 = load double*, double** %34, align 8
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds double, double* %35, i64 %36
  store double %32, double* %37, align 8
  %38 = zext i32 %.01 to i64
  %39 = getelementptr inbounds double*, double** %2, i64 %38
  %40 = load double*, double** %39, align 8
  %41 = zext i32 %.0 to i64
  %42 = getelementptr inbounds double, double* %40, i64 %41
  store double %32, double* %42, align 8
  br label %43

43:                                               ; preds = %23, %12
  br label %44

44:                                               ; preds = %43
  %45 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

46:                                               ; preds = %6
  br label %47

47:                                               ; preds = %46
  %48 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !6

49:                                               ; preds = %3
  ret double** %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double** @newMatrix() #0 {
  %1 = call noalias dereferenceable_or_null(408) i8* @malloc(i64 noundef 408) #8
  %2 = bitcast i8* %1 to double**
  br label %3

3:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %4 = icmp ult i32 %.0, 51
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = call noalias dereferenceable_or_null(408) i8* @malloc(i64 noundef 408) #8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds double*, double** %2, i64 %7
  %9 = bitcast double** %8 to i8**
  store i8* %6, i8** %9, align 8
  br label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !7

12:                                               ; preds = %3
  ret double** %2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double* @newVector() #0 {
  %1 = call noalias dereferenceable_or_null(408) i8* @malloc(i64 noundef 408) #8
  %2 = bitcast i8* %1 to double*
  ret double* %2
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @matrixMult(double** nocapture noundef readonly %0, double** nocapture noundef readonly %1, double** nocapture noundef readonly %2) #3 {
  br label %4

4:                                                ; preds = %43, %3
  %.02 = phi i32 [ 0, %3 ], [ %44, %43 ]
  %5 = icmp ult i32 %.02, 51
  br i1 %5, label %6, label %45

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %40, %6
  %.01 = phi i32 [ 0, %6 ], [ %41, %40 ]
  %8 = icmp ult i32 %.01, 51
  br i1 %8, label %9, label %42

9:                                                ; preds = %7
  %10 = zext i32 %.02 to i64
  %11 = getelementptr inbounds double*, double** %0, i64 %10
  %12 = load double*, double** %11, align 8
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds double, double* %12, i64 %13
  store double 0.000000e+00, double* %14, align 8
  br label %15

15:                                               ; preds = %37, %9
  %.0 = phi i32 [ 0, %9 ], [ %38, %37 ]
  %16 = icmp ult i32 %.0, 51
  br i1 %16, label %17, label %39

17:                                               ; preds = %15
  %18 = zext i32 %.02 to i64
  %19 = getelementptr inbounds double*, double** %1, i64 %18
  %20 = load double*, double** %19, align 8
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds double, double* %20, i64 %21
  %23 = load double, double* %22, align 8
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds double*, double** %2, i64 %24
  %26 = load double*, double** %25, align 8
  %27 = zext i32 %.01 to i64
  %28 = getelementptr inbounds double, double* %26, i64 %27
  %29 = load double, double* %28, align 8
  %30 = zext i32 %.02 to i64
  %31 = getelementptr inbounds double*, double** %0, i64 %30
  %32 = load double*, double** %31, align 8
  %33 = zext i32 %.01 to i64
  %34 = getelementptr inbounds double, double* %32, i64 %33
  %35 = load double, double* %34, align 8
  %36 = call double @llvm.fmuladd.f64(double %23, double %29, double %35)
  store double %36, double* %34, align 8
  br label %37

37:                                               ; preds = %17
  %38 = add nuw nsw i32 %.0, 1
  br label %15, !llvm.loop !8

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !9

42:                                               ; preds = %7
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !10

45:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @matrixTranspose(double** nocapture noundef readonly %0) #5 {
  br label %2

2:                                                ; preds = %32, %1
  %.01 = phi i32 [ 0, %1 ], [ %33, %32 ]
  %3 = icmp ult i32 %.01, 51
  br i1 %3, label %4, label %34

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %30, %4
  %.0.in = phi i32 [ %.01, %4 ], [ %.0, %30 ]
  %.0 = add nuw nsw i32 %.0.in, 1
  %6 = icmp ult i32 %.0.in, 50
  br i1 %6, label %7, label %31

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds double*, double** %0, i64 %8
  %10 = load double*, double** %9, align 8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds double, double* %10, i64 %11
  %13 = load double, double* %12, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds double*, double** %0, i64 %14
  %16 = load double*, double** %15, align 8
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds double, double* %16, i64 %17
  %19 = load double, double* %18, align 8
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds double*, double** %0, i64 %20
  %22 = load double*, double** %21, align 8
  %23 = zext i32 %.0 to i64
  %24 = getelementptr inbounds double, double* %22, i64 %23
  store double %19, double* %24, align 8
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds double*, double** %0, i64 %25
  %27 = load double*, double** %26, align 8
  %28 = zext i32 %.01 to i64
  %29 = getelementptr inbounds double, double* %27, i64 %28
  store double %13, double* %29, align 8
  br label %30

30:                                               ; preds = %7
  br label %5, !llvm.loop !11

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !12

34:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double** @newIdMatrix() #0 {
  %1 = call double** @newMatrix()
  call void @MakeID(double** noundef %1)
  ret double** %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @MakeID(double** nocapture noundef readonly %0) #5 {
  br label %2

2:                                                ; preds = %30, %1
  %.0 = phi i32 [ 0, %1 ], [ %31, %30 ]
  %3 = icmp ult i32 %.0, 51
  br i1 %3, label %4, label %32

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %27, %4
  %.01 = phi i32 [ %.0, %4 ], [ %28, %27 ]
  %6 = icmp ult i32 %.01, 51
  br i1 %6, label %7, label %29

7:                                                ; preds = %5
  %8 = icmp eq i32 %.0, %.01
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds double*, double** %0, i64 %10
  %12 = load double*, double** %11, align 8
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds double, double* %12, i64 %13
  store double 1.000000e+00, double* %14, align 8
  br label %26

15:                                               ; preds = %7
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds double*, double** %0, i64 %16
  %18 = load double*, double** %17, align 8
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds double, double* %18, i64 %19
  store double 0.000000e+00, double* %20, align 8
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds double*, double** %0, i64 %21
  %23 = load double*, double** %22, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds double, double* %23, i64 %24
  store double 0.000000e+00, double* %25, align 8
  br label %26

26:                                               ; preds = %15, %9
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !13

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !14

32:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeMatrix(double** noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.0 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %3 = icmp ult i32 %.0, 51
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds double*, double** %0, i64 %5
  %7 = bitcast double** %6 to i8**
  %8 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %8) #8
  br label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !15

11:                                               ; preds = %2
  %12 = bitcast double** %0 to i8*
  call void @free(i8* noundef %12) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local double @NormInf(double** nocapture noundef readonly %0) #6 {
  br label %2

2:                                                ; preds = %22, %1
  %.03 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %.01 = phi double [ 0.000000e+00, %1 ], [ %.1, %22 ]
  %3 = icmp ult i32 %.03, 51
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %8, %4
  %.02 = phi double [ 0.000000e+00, %4 ], [ %16, %8 ]
  %.0 = phi i32 [ 0, %4 ], [ %17, %8 ]
  %6 = icmp ult i32 %.0, 51
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7
  %9 = zext i32 %.03 to i64
  %10 = getelementptr inbounds double*, double** %0, i64 %9
  %11 = load double*, double** %10, align 8
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds double, double* %11, i64 %12
  %14 = load double, double* %13, align 8
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = fadd double %.02, %15
  %17 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !16

18:                                               ; preds = %5
  %19 = fcmp ogt double %.02, %.01
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %18
  %.1 = phi double [ %.02, %20 ], [ %.01, %18 ]
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.03, 1
  br label %2, !llvm.loop !17

24:                                               ; preds = %2
  ret double %.01
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local double @NormOne(double** nocapture noundef readonly %0) #6 {
  br label %2

2:                                                ; preds = %22, %1
  %.01 = phi double [ 0.000000e+00, %1 ], [ %.1, %22 ]
  %.0 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %3 = icmp ult i32 %.0, 51
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %8, %4
  %.03 = phi i32 [ 0, %4 ], [ %17, %8 ]
  %.02 = phi double [ 0.000000e+00, %4 ], [ %16, %8 ]
  %6 = icmp ult i32 %.03, 51
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7
  %9 = zext i32 %.03 to i64
  %10 = getelementptr inbounds double*, double** %0, i64 %9
  %11 = load double*, double** %10, align 8
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds double, double* %11, i64 %12
  %14 = load double, double* %13, align 8
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = fadd double %.02, %15
  %17 = add nuw nsw i32 %.03, 1
  br label %5, !llvm.loop !18

18:                                               ; preds = %5
  %19 = fcmp ogt double %.02, %.01
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %18
  %.1 = phi double [ %.02, %20 ], [ %.01, %18 ]
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !19

24:                                               ; preds = %2
  ret double %.01
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
