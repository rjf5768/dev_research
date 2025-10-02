; ModuleID = './lpbench.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/lpbench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\0Alpbench (Std. C) run time: %f\0A\0A\00", align 1
@seed = internal global i64 1325, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @matgen(double** nocapture noundef readonly %0, double* nocapture noundef %1) #0 {
  br label %3

3:                                                ; preds = %18, %2
  %.01 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %4 = icmp ult i32 %.01, 2000
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %15, %5
  %.0 = phi i32 [ 0, %5 ], [ %16, %15 ]
  %7 = icmp ult i32 %.0, 2000
  br i1 %7, label %8, label %17

8:                                                ; preds = %6
  %9 = call double @random_double()
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds double*, double** %0, i64 %10
  %12 = load double*, double** %11, align 8
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds double, double* %12, i64 %13
  store double %9, double* %14, align 8
  br label %15

15:                                               ; preds = %8
  %16 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !6

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %26, %20
  %.12 = phi i32 [ 0, %20 ], [ %27, %26 ]
  %22 = icmp ult i32 %.12, 2000
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = zext i32 %.12 to i64
  %25 = getelementptr inbounds double, double* %1, i64 %24
  store double 0.000000e+00, double* %25, align 8
  br label %26

26:                                               ; preds = %23
  %27 = add nuw nsw i32 %.12, 1
  br label %21, !llvm.loop !7

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %48, %28
  %.1 = phi i32 [ 0, %28 ], [ %49, %48 ]
  %30 = icmp ult i32 %.1, 2000
  br i1 %30, label %31, label %50

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %45, %31
  %.2 = phi i32 [ 0, %31 ], [ %46, %45 ]
  %33 = icmp ult i32 %.2, 2000
  br i1 %33, label %34, label %47

34:                                               ; preds = %32
  %35 = zext i32 %.1 to i64
  %36 = getelementptr inbounds double*, double** %0, i64 %35
  %37 = load double*, double** %36, align 8
  %38 = zext i32 %.2 to i64
  %39 = getelementptr inbounds double, double* %37, i64 %38
  %40 = load double, double* %39, align 8
  %41 = zext i32 %.2 to i64
  %42 = getelementptr inbounds double, double* %1, i64 %41
  %43 = load double, double* %42, align 8
  %44 = fadd double %43, %40
  store double %44, double* %42, align 8
  br label %45

45:                                               ; preds = %34
  %46 = add nuw nsw i32 %.2, 1
  br label %32, !llvm.loop !8

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  %49 = add nuw nsw i32 %.1, 1
  br label %29, !llvm.loop !9

50:                                               ; preds = %29
  ret void
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @idamax(i32 noundef %0, double* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %53

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %52

10:                                               ; preds = %7
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %32, label %11

11:                                               ; preds = %10
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds double, double* %1, i64 %12
  %14 = load double, double* %13, align 8
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = add nsw i32 %3, 1
  br label %17

17:                                               ; preds = %28, %11
  %.04 = phi double [ %15, %11 ], [ %.15, %28 ]
  %.02 = phi i32 [ 1, %11 ], [ %30, %28 ]
  %.01 = phi i32 [ %16, %11 ], [ %29, %28 ]
  %.0 = phi i32 [ 0, %11 ], [ %.1, %28 ]
  %18 = icmp slt i32 %.02, %0
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = add nsw i32 %.01, %2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %1, i64 %21
  %23 = load double, double* %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = fcmp ogt double %24, %.04
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %19
  %.15 = phi double [ %24, %26 ], [ %.04, %19 ]
  %.1 = phi i32 [ %.02, %26 ], [ %.0, %19 ]
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %.01, %3
  %30 = add nuw nsw i32 %.02, 1
  br label %17, !llvm.loop !10

31:                                               ; preds = %17
  br label %51

32:                                               ; preds = %10
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds double, double* %1, i64 %33
  %35 = load double, double* %34, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  br label %37

37:                                               ; preds = %48, %32
  %.26 = phi double [ %36, %32 ], [ %.37, %48 ]
  %.13 = phi i32 [ 1, %32 ], [ %49, %48 ]
  %.2 = phi i32 [ 0, %32 ], [ %.3, %48 ]
  %38 = icmp slt i32 %.13, %0
  br i1 %38, label %39, label %50

39:                                               ; preds = %37
  %40 = add nsw i32 %.13, %2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %1, i64 %41
  %43 = load double, double* %42, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  %45 = fcmp ogt double %44, %.26
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %39
  %.37 = phi double [ %44, %46 ], [ %.26, %39 ]
  %.3 = phi i32 [ %.13, %46 ], [ %.2, %39 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nuw nsw i32 %.13, 1
  br label %37, !llvm.loop !11

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %31
  %.4 = phi i32 [ %.0, %31 ], [ %.2, %50 ]
  br label %52

52:                                               ; preds = %51, %9
  %.5 = phi i32 [ 0, %9 ], [ %.4, %51 ]
  br label %53

53:                                               ; preds = %52, %6
  %.6 = phi i32 [ -1, %6 ], [ %.5, %52 ]
  ret i32 %.6
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, double* nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %21, label %8

8:                                                ; preds = %7
  %9 = mul nsw i32 %0, %4
  br label %10

10:                                               ; preds = %18, %8
  %.0 = phi i32 [ 0, %8 ], [ %19, %18 ]
  %11 = icmp slt i32 %.0, %9
  br i1 %11, label %12, label %20

12:                                               ; preds = %10
  %13 = add nsw i32 %.0, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, double* %2, i64 %14
  %16 = load double, double* %15, align 8
  %17 = fmul double %16, %1
  store double %17, double* %15, align 8
  br label %18

18:                                               ; preds = %12
  %19 = add nsw i32 %.0, %4
  br label %10, !llvm.loop !12

20:                                               ; preds = %10
  br label %33

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %30, %21
  %.1 = phi i32 [ 0, %21 ], [ %31, %30 ]
  %23 = icmp slt i32 %.1, %0
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  %25 = add nsw i32 %.1, %3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %2, i64 %26
  %28 = load double, double* %27, align 8
  %29 = fmul double %28, %1
  store double %29, double* %27, align 8
  br label %30

30:                                               ; preds = %24
  %31 = add nuw nsw i32 %.1, 1
  br label %22, !llvm.loop !13

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %20
  br label %34

34:                                               ; preds = %33, %5
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, double* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, double* nocapture noundef %5, i32 noundef %6, i32 noundef %7) #3 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %59

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %59

12:                                               ; preds = %10
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %13, label %14

13:                                               ; preds = %12
  %.not5 = icmp eq i32 %7, 1
  br i1 %.not5, label %42, label %14

14:                                               ; preds = %13, %12
  %15 = icmp slt i32 %4, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = sub nsw i32 1, %0
  %18 = mul nsw i32 %17, %4
  br label %19

19:                                               ; preds = %16, %14
  %.01 = phi i32 [ %18, %16 ], [ 0, %14 ]
  %20 = icmp slt i32 %7, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = sub nsw i32 1, %0
  %23 = mul nsw i32 %22, %7
  br label %24

24:                                               ; preds = %21, %19
  %.0 = phi i32 [ %23, %21 ], [ 0, %19 ]
  br label %25

25:                                               ; preds = %37, %24
  %.03 = phi i32 [ 0, %24 ], [ %40, %37 ]
  %.12 = phi i32 [ %.01, %24 ], [ %39, %37 ]
  %.1 = phi i32 [ %.0, %24 ], [ %38, %37 ]
  %26 = icmp slt i32 %.03, %0
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = add nsw i32 %.12, %3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %2, i64 %29
  %31 = load double, double* %30, align 8
  %32 = add nsw i32 %.1, %6
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %5, i64 %33
  %35 = load double, double* %34, align 8
  %36 = call double @llvm.fmuladd.f64(double %1, double %31, double %35)
  store double %36, double* %34, align 8
  br label %37

37:                                               ; preds = %27
  %38 = add nsw i32 %.1, %7
  %39 = add nsw i32 %.12, %4
  %40 = add nuw nsw i32 %.03, 1
  br label %25, !llvm.loop !14

41:                                               ; preds = %25
  br label %59

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %55, %42
  %.14 = phi i32 [ 0, %42 ], [ %56, %55 ]
  %44 = icmp slt i32 %.14, %0
  br i1 %44, label %45, label %57

45:                                               ; preds = %43
  %46 = add nsw i32 %.14, %3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %2, i64 %47
  %49 = load double, double* %48, align 8
  %50 = add nsw i32 %.14, %6
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %5, i64 %51
  %53 = load double, double* %52, align 8
  %54 = call double @llvm.fmuladd.f64(double %1, double %49, double %53)
  store double %54, double* %52, align 8
  br label %55

55:                                               ; preds = %45
  %56 = add nuw nsw i32 %.14, 1
  br label %43, !llvm.loop !15

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58, %41, %10, %8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @dgefa(double** nocapture noundef readonly %0, i32* nocapture noundef writeonly %1) #3 {
  br label %3

3:                                                ; preds = %60, %2
  %.01 = phi i32 [ 0, %2 ], [ %61, %60 ]
  %4 = icmp ult i32 %.01, 1999
  br i1 %4, label %5, label %62

5:                                                ; preds = %3
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds double*, double** %0, i64 %6
  %8 = load double*, double** %7, align 8
  %9 = add nuw nsw i32 %.01, 1
  %10 = sub nsw i32 2000, %.01
  %11 = call i32 @idamax(i32 noundef %10, double* noundef %8, i32 noundef %.01, i32 noundef 1)
  %12 = add nsw i32 %11, %.01
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds i32, i32* %1, i64 %13
  store i32 %12, i32* %14, align 4
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds double, double* %8, i64 %15
  %17 = load double, double* %16, align 8
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %59

19:                                               ; preds = %5
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %31, label %20

20:                                               ; preds = %19
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds double, double* %8, i64 %21
  %23 = load double, double* %22, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds double, double* %8, i64 %24
  %26 = load double, double* %25, align 8
  %27 = sext i32 %12 to i64
  %28 = getelementptr inbounds double, double* %8, i64 %27
  store double %26, double* %28, align 8
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds double, double* %8, i64 %29
  store double %23, double* %30, align 8
  br label %31

31:                                               ; preds = %20, %19
  %32 = zext i32 %.01 to i64
  %33 = getelementptr inbounds double, double* %8, i64 %32
  %34 = load double, double* %33, align 8
  %35 = fdiv double -1.000000e+00, %34
  %36 = sub nsw i32 1999, %.01
  call void @dscal(i32 noundef %36, double noundef %35, double* noundef %8, i32 noundef %9, i32 noundef 1)
  br label %37

37:                                               ; preds = %56, %31
  %.0 = phi i32 [ %9, %31 ], [ %57, %56 ]
  %38 = icmp ult i32 %.0, 2000
  br i1 %38, label %39, label %58

39:                                               ; preds = %37
  %40 = zext i32 %.0 to i64
  %41 = getelementptr inbounds double*, double** %0, i64 %40
  %42 = load double*, double** %41, align 8
  %43 = sext i32 %12 to i64
  %44 = getelementptr inbounds double, double* %42, i64 %43
  %45 = load double, double* %44, align 8
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %54, label %46

46:                                               ; preds = %39
  %47 = zext i32 %.01 to i64
  %48 = getelementptr inbounds double, double* %42, i64 %47
  %49 = load double, double* %48, align 8
  %50 = sext i32 %12 to i64
  %51 = getelementptr inbounds double, double* %42, i64 %50
  store double %49, double* %51, align 8
  %52 = zext i32 %.01 to i64
  %53 = getelementptr inbounds double, double* %42, i64 %52
  store double %45, double* %53, align 8
  br label %54

54:                                               ; preds = %46, %39
  %55 = sub nsw i32 1999, %.01
  call void @daxpy(i32 noundef %55, double noundef %45, double* noundef %8, i32 noundef %9, i32 noundef 1, double* noundef %42, i32 noundef %9, i32 noundef 1)
  br label %56

56:                                               ; preds = %54
  %57 = add nuw nsw i32 %.0, 1
  br label %37, !llvm.loop !16

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58, %5
  br label %60

60:                                               ; preds = %59
  %61 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !17

62:                                               ; preds = %3
  %63 = getelementptr inbounds i32, i32* %1, i64 1999
  store i32 1999, i32* %63, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @dgesl(double** nocapture noundef readonly %0, i32* nocapture noundef readonly %1, double* nocapture noundef %2) #3 {
  br label %4

4:                                                ; preds = %27, %3
  %.01 = phi i32 [ 0, %3 ], [ %28, %27 ]
  %5 = icmp ult i32 %.01, 1999
  br i1 %5, label %6, label %29

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds i32, i32* %1, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, double* %2, i64 %10
  %12 = load double, double* %11, align 8
  %.not = icmp eq i32 %9, %.01
  br i1 %.not, label %21, label %13

13:                                               ; preds = %6
  %14 = zext i32 %.01 to i64
  %15 = getelementptr inbounds double, double* %2, i64 %14
  %16 = load double, double* %15, align 8
  %17 = sext i32 %9 to i64
  %18 = getelementptr inbounds double, double* %2, i64 %17
  store double %16, double* %18, align 8
  %19 = zext i32 %.01 to i64
  %20 = getelementptr inbounds double, double* %2, i64 %19
  store double %12, double* %20, align 8
  br label %21

21:                                               ; preds = %13, %6
  %22 = add nuw nsw i32 %.01, 1
  %23 = sub nsw i32 1999, %.01
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds double*, double** %0, i64 %24
  %26 = load double*, double** %25, align 8
  call void @daxpy(i32 noundef %23, double noundef %12, double* noundef %26, i32 noundef %22, i32 noundef 1, double* noundef %2, i32 noundef %22, i32 noundef 1)
  br label %27

27:                                               ; preds = %21
  %28 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !18

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %51, %29
  %.0 = phi i32 [ 0, %29 ], [ %52, %51 ]
  %31 = icmp ult i32 %.0, 2000
  br i1 %31, label %32, label %53

32:                                               ; preds = %30
  %33 = sub nsw i32 1999, %.0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double*, double** %0, i64 %34
  %36 = load double*, double** %35, align 8
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds double, double* %36, i64 %37
  %39 = load double, double* %38, align 8
  %40 = sext i32 %33 to i64
  %41 = getelementptr inbounds double, double* %2, i64 %40
  %42 = load double, double* %41, align 8
  %43 = fdiv double %42, %39
  store double %43, double* %41, align 8
  %44 = sext i32 %33 to i64
  %45 = getelementptr inbounds double, double* %2, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fneg double %46
  %48 = sext i32 %33 to i64
  %49 = getelementptr inbounds double*, double** %0, i64 %48
  %50 = load double*, double** %49, align 8
  call void @daxpy(i32 noundef %33, double noundef %47, double* noundef %50, i32 noundef 0, i32 noundef 1, double* noundef %2, i32 noundef 0, i32 noundef 1)
  br label %51

51:                                               ; preds = %32
  %52 = add nuw nsw i32 %.0, 1
  br label %30, !llvm.loop !19

53:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #4 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi i32 [ 1, %4 ], [ %14, %13 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8*, i8** %1, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %9, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !20

.loopexit:                                        ; preds = %5
  br label %15

15:                                               ; preds = %.loopexit, %11
  br label %16

16:                                               ; preds = %15, %2
  %.1 = phi i1 [ %6, %15 ], [ false, %2 ]
  %17 = call noalias dereferenceable_or_null(16000) i8* @malloc(i64 noundef 16000) #10
  %18 = bitcast i8* %17 to double**
  br label %19

19:                                               ; preds = %26, %16
  %.12 = phi i32 [ 0, %16 ], [ %27, %26 ]
  %20 = icmp ult i32 %.12, 2000
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = call noalias dereferenceable_or_null(16008) i8* @malloc(i64 noundef 16008) #10
  %23 = zext i32 %.12 to i64
  %24 = getelementptr inbounds double*, double** %18, i64 %23
  %25 = bitcast double** %24 to i8**
  store i8* %22, i8** %25, align 8
  br label %26

26:                                               ; preds = %21
  %27 = add nuw nsw i32 %.12, 1
  br label %19, !llvm.loop !21

28:                                               ; preds = %19
  %29 = call noalias dereferenceable_or_null(16000) i8* @malloc(i64 noundef 16000) #10
  %30 = bitcast i8* %29 to double*
  %31 = call noalias dereferenceable_or_null(8000) i8* @malloc(i64 noundef 8000) #10
  %32 = bitcast i8* %31 to i32*
  call void @matgen(double** noundef %18, double* noundef %30)
  call void @dgefa(double** noundef %18, i32* noundef %32)
  call void @dgesl(double** noundef %18, i32* noundef %32, double* noundef %30)
  call void @free(i8* noundef %31) #10
  call void @free(i8* noundef %29) #10
  br label %33

33:                                               ; preds = %40, %28
  %.2 = phi i32 [ 0, %28 ], [ %41, %40 ]
  %34 = icmp ult i32 %.2, 2000
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = zext i32 %.2 to i64
  %37 = getelementptr inbounds double*, double** %18, i64 %36
  %38 = bitcast double** %37 to i8**
  %39 = load i8*, i8** %38, align 8
  call void @free(i8* noundef %39) #10
  br label %40

40:                                               ; preds = %35
  %41 = add nuw nsw i32 %.2, 1
  br label %33, !llvm.loop !22

42:                                               ; preds = %33
  call void @free(i8* noundef %17) #10
  br i1 %.1, label %43, label %46

43:                                               ; preds = %42
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), double noundef 0.000000e+00) #10
  br label %49

46:                                               ; preds = %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), double noundef 0.000000e+00) #10
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %51 = call i32 @fflush(%struct._IO_FILE* noundef %50) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #5

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #6

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #7

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal double @random_double() #8 {
  %1 = load i64, i64* @seed, align 8
  %2 = xor i64 %1, 123459876
  store i64 %2, i64* @seed, align 8
  %3 = sdiv i64 %2, 127773
  %.neg = mul i64 %3, -127773
  %4 = add i64 %.neg, %2
  %5 = mul nsw i64 %4, 16807
  %.neg1 = mul nsw i64 %3, -2836
  %6 = add i64 %.neg1, %5
  store i64 %6, i64* @seed, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i64, i64* @seed, align 8
  %10 = add nsw i64 %9, 2147483647
  store i64 %10, i64* @seed, align 8
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i64, i64* @seed, align 8
  %13 = sitofp i64 %12 to double
  %14 = fmul double %13, 0x3E00000000200FE1
  %15 = xor i64 %12, 123459876
  store i64 %15, i64* @seed, align 8
  ret double %14
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }

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
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
