; ModuleID = './all.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/allroots/all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.A = internal global [4 x double] [double 4.100000e+00, double -3.900000e+00, double -1.000000e+00, double 1.000000e+00], align 16
@.str = private unnamed_addr constant [14 x i8] c"DEBUG: %g %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"==============================================================\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Find all roots of\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"x**%d - \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"x**%d + \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"using NEWTON method.\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"No roots\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"   ROOT = %g\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"  ROOT = %g (from quadratic formula)\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"----> Refine Root on the Orginal Polynomial (non-deflated)\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"     DEFLATED to\0A(x - %g)*(\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%g)\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"\0A  ROOT = %g (from quadratic formula)\0A\00", align 1
@str = private unnamed_addr constant [63 x i8] c"==============================================================\00", align 1
@str.1 = private unnamed_addr constant [18 x i8] c"Find all roots of\00", align 1
@str.2 = private unnamed_addr constant [21 x i8] c"using NEWTON method.\00", align 1
@str.3 = private unnamed_addr constant [63 x i8] c"==============================================================\00", align 1
@str.4 = private unnamed_addr constant [9 x i8] c"No roots\00", align 1
@str.5 = private unnamed_addr constant [59 x i8] c"----> Refine Root on the Orginal Polynomial (non-deflated)\00", align 1
@str.6 = private unnamed_addr constant [59 x i8] c"----> Refine Root on the Orginal Polynomial (non-deflated)\00", align 1
@str.7 = private unnamed_addr constant [59 x i8] c"----> Refine Root on the Orginal Polynomial (non-deflated)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double noundef 0x40337AAE58825399, double noundef 0x401CF55906D75FA4) #5
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @str, i64 0, i64 0))
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.1, i64 0, i64 0))
  br label %2

2:                                                ; preds = %20, %0
  %.0 = phi i32 [ 3, %0 ], [ %21, %20 ]
  %3 = icmp sgt i32 %.0, 0
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64
  %6 = getelementptr inbounds [4 x double], [4 x double]* @main.A, i64 0, i64 %5
  %7 = load double, double* %6, align 8
  %8 = call double @d_abs(double noundef %7) #5
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double noundef %8) #5
  %10 = add nsw i32 %.0, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x double], [4 x double]* @main.A, i64 0, i64 %11
  %13 = load double, double* %12, align 8
  %14 = fcmp olt double %13, 0.000000e+00
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.0) #5
  br label %19

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %.0) #5
  br label %19

19:                                               ; preds = %17, %15
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %.0, -1
  br label %2, !llvm.loop !4

22:                                               ; preds = %2
  %23 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @main.A, i64 0, i64 0), align 16
  %24 = call double @d_abs(double noundef %23) #5
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double noundef %24) #5
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.2, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @str.3, i64 0, i64 0))
  call void @allroots(i32 noundef 3, double* noundef getelementptr inbounds ([4 x double], [4 x double]* @main.A, i64 0, i64 0), i32 noundef 3, double* noundef getelementptr inbounds ([4 x double], [4 x double]* @main.A, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local double @d_abs(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @allroots(i32 noundef %0, double* noundef %1, i32 noundef %2, double* noundef %3) #0 {
  br label %5

5:                                                ; preds = %11, %4
  %.01 = phi i32 [ 0, %4 ], [ %13, %11 ]
  %.0 = phi double [ 0.000000e+00, %4 ], [ %12, %11 ]
  %.not = icmp sgt i32 %.01, %2
  br i1 %.not, label %14, label %6

6:                                                ; preds = %5
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds double, double* %3, i64 %7
  %9 = load double, double* %8, align 8
  %10 = call double @d_abs(double noundef %9) #5
  br label %11

11:                                               ; preds = %6
  %12 = fadd double %.0, %10
  %13 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !6

14:                                               ; preds = %5
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds double, double* %3, i64 %15
  %17 = load double, double* %16, align 8
  %18 = call double @d_abs(double noundef %17) #5
  %19 = fdiv double %.0, %18
  %20 = fsub double -1.000000e+00, %19
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.4, i64 0, i64 0))
  br label %70

23:                                               ; preds = %14
  %24 = icmp eq i32 %2, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = load double, double* %3, align 8
  %27 = fneg double %26
  %28 = getelementptr inbounds double, double* %3, i64 1
  %29 = load double, double* %28, align 8
  %30 = fdiv double %27, %29
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), double noundef %30) #5
  br label %69

32:                                               ; preds = %23
  %33 = icmp eq i32 %2, 2
  br i1 %33, label %34, label %66

34:                                               ; preds = %32
  %35 = getelementptr inbounds double, double* %3, i64 1
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds double, double* %3, i64 2
  %38 = load double, double* %37, align 8
  %39 = load double, double* %3, align 8
  %40 = fmul double %38, -4.000000e+00
  %41 = fmul double %40, %39
  %42 = call double @llvm.fmuladd.f64(double %36, double %36, double %41)
  %43 = call double @sqrt(double noundef %42) #5
  %44 = fsub double %43, %36
  %45 = getelementptr inbounds double, double* %3, i64 2
  %46 = load double, double* %45, align 8
  %47 = fmul double %46, 2.000000e+00
  %48 = fdiv double %44, %47
  %49 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), double noundef %48) #5
  %50 = getelementptr inbounds double, double* %3, i64 1
  %51 = load double, double* %50, align 8
  %52 = fneg double %51
  %53 = getelementptr inbounds double, double* %3, i64 2
  %54 = load double, double* %53, align 8
  %55 = load double, double* %3, align 8
  %56 = fmul double %54, -4.000000e+00
  %57 = fmul double %56, %55
  %58 = call double @llvm.fmuladd.f64(double %51, double %51, double %57)
  %59 = call double @sqrt(double noundef %58) #5
  %60 = fsub double %52, %59
  %61 = getelementptr inbounds double, double* %3, i64 2
  %62 = load double, double* %61, align 8
  %63 = fmul double %62, 2.000000e+00
  %64 = fdiv double %60, %63
  %65 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), double noundef %64) #5
  br label %68

66:                                               ; preds = %32
  %67 = call double @newton(i32 noundef %2, double* noundef %3, double noundef %20, double noundef %19) #5
  call void @deflat(i32 noundef %0, double* noundef %1, i32 noundef %2, double* noundef %3, double noundef %67)
  br label %68

68:                                               ; preds = %66, %34
  br label %69

69:                                               ; preds = %68, %25
  br label %70

70:                                               ; preds = %69, %22
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

declare dso_local double @newton(i32 noundef, double* noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deflat(i32 noundef %0, double* noundef %1, i32 noundef %2, double* nocapture noundef readonly %3, double noundef %4) #0 {
  %.not = icmp eq i32 %2, %0
  br i1 %.not, label %10, label %6

6:                                                ; preds = %5
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @str.7, i64 0, i64 0))
  %7 = fadd double %4, -5.000000e-01
  %8 = fadd double %4, 5.000000e-01
  %9 = call double @newton(i32 noundef %0, double* noundef %1, double noundef %7, double noundef %8) #5
  br label %10

10:                                               ; preds = %6, %5
  %11 = sext i32 %2 to i64
  %12 = call noalias i8* @calloc(i64 noundef %11, i64 noundef 8) #5
  %13 = bitcast i8* %12 to double*
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds double, double* %3, i64 %14
  %16 = load double, double* %15, align 8
  %17 = add nsw i32 %2, -1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, double* %13, i64 %18
  store double %16, double* %19, align 8
  %20 = add nsw i32 %2, -2
  br label %21

21:                                               ; preds = %35, %10
  %.01 = phi i32 [ %20, %10 ], [ %36, %35 ]
  %22 = icmp sgt i32 %.01, -1
  br i1 %22, label %23, label %37

23:                                               ; preds = %21
  %24 = add nsw i32 %.01, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %13, i64 %25
  %27 = load double, double* %26, align 8
  %28 = add nsw i32 %.01, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %3, i64 %29
  %31 = load double, double* %30, align 8
  %32 = call double @llvm.fmuladd.f64(double %27, double %4, double %31)
  %33 = sext i32 %.01 to i64
  %34 = getelementptr inbounds double, double* %13, i64 %33
  store double %32, double* %34, align 8
  br label %35

35:                                               ; preds = %23
  %36 = add nsw i32 %.01, -1
  br label %21, !llvm.loop !7

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %56, %37
  %.0 = phi i32 [ %2, %37 ], [ %57, %56 ]
  %39 = icmp sgt i32 %.0, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %38
  %41 = sext i32 %.0 to i64
  %42 = getelementptr inbounds double, double* %3, i64 %41
  %43 = load double, double* %42, align 8
  %44 = call double @d_abs(double noundef %43) #5
  %45 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double noundef %44) #5
  %46 = add nsw i32 %.0, -1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %3, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fcmp olt double %49, 0.000000e+00
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.0) #5
  br label %55

53:                                               ; preds = %40
  %54 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %.0) #5
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %.0, -1
  br label %38, !llvm.loop !8

58:                                               ; preds = %38
  %59 = load double, double* %3, align 8
  %60 = call double @d_abs(double noundef %59) #5
  %61 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double noundef %60) #5
  %62 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), double noundef %4) #5
  br label %63

63:                                               ; preds = %81, %58
  %.1.in = phi i32 [ %2, %58 ], [ %.1, %81 ]
  %.1 = add nsw i32 %.1.in, -1
  %64 = icmp sgt i32 %.1.in, 1
  br i1 %64, label %65, label %82

65:                                               ; preds = %63
  %66 = sext i32 %.1 to i64
  %67 = getelementptr inbounds double, double* %13, i64 %66
  %68 = load double, double* %67, align 8
  %69 = call double @d_abs(double noundef %68) #5
  %70 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double noundef %69) #5
  %71 = add nsw i32 %.1.in, -2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %13, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fcmp olt double %74, 0.000000e+00
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.1) #5
  br label %80

78:                                               ; preds = %65
  %79 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %.1) #5
  br label %80

80:                                               ; preds = %78, %76
  br label %81

81:                                               ; preds = %80
  br label %63, !llvm.loop !9

82:                                               ; preds = %63
  %83 = load double, double* %13, align 8
  %84 = call double @d_abs(double noundef %83) #5
  %85 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), double noundef %84) #5
  %86 = icmp eq i32 %2, 3
  br i1 %86, label %87, label %125

87:                                               ; preds = %82
  %88 = getelementptr inbounds double, double* %13, i64 1
  %89 = load double, double* %88, align 8
  %90 = getelementptr inbounds double, double* %13, i64 2
  %91 = load double, double* %90, align 8
  %92 = load double, double* %13, align 8
  %93 = fmul double %91, -4.000000e+00
  %94 = fmul double %93, %92
  %95 = call double @llvm.fmuladd.f64(double %89, double %89, double %94)
  %96 = call double @sqrt(double noundef %95) #5
  %97 = fsub double %96, %89
  %98 = getelementptr inbounds double, double* %13, i64 2
  %99 = load double, double* %98, align 8
  %100 = fmul double %99, 2.000000e+00
  %101 = fdiv double %97, %100
  %102 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), double noundef %101) #5
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @str.5, i64 0, i64 0))
  %103 = fadd double %101, -5.000000e-01
  %104 = fadd double %101, 5.000000e-01
  %105 = call double @newton(i32 noundef %0, double* noundef %1, double noundef %103, double noundef %104) #5
  %106 = getelementptr inbounds double, double* %13, i64 1
  %107 = load double, double* %106, align 8
  %108 = fneg double %107
  %109 = getelementptr inbounds double, double* %13, i64 2
  %110 = load double, double* %109, align 8
  %111 = load double, double* %13, align 8
  %112 = fmul double %110, -4.000000e+00
  %113 = fmul double %112, %111
  %114 = call double @llvm.fmuladd.f64(double %107, double %107, double %113)
  %115 = call double @sqrt(double noundef %114) #5
  %116 = fsub double %108, %115
  %117 = getelementptr inbounds double, double* %13, i64 2
  %118 = load double, double* %117, align 8
  %119 = fmul double %118, 2.000000e+00
  %120 = fdiv double %116, %119
  %121 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), double noundef %120) #5
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @str.6, i64 0, i64 0))
  %122 = fadd double %120, -5.000000e-01
  %123 = fadd double %120, 5.000000e-01
  %124 = call double @newton(i32 noundef %0, double* noundef %1, double noundef %122, double noundef %123) #5
  br label %127

125:                                              ; preds = %82
  %126 = add nsw i32 %2, -1
  call void @allroots(i32 noundef %0, double* noundef %1, i32 noundef %126, double* noundef nonnull %13)
  br label %127

127:                                              ; preds = %125, %87
  call void @free(i8* noundef %12) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind }
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
