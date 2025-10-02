; ModuleID = './Divsol.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/Divsol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"m=%i, rowstart=%i, rowend=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @HouseMatrix(double** noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = call double @xty(double* noundef %1, double* noundef %1, i32 noundef %2, i32 noundef %3) #4
  call void @MakeID(double** noundef %0) #4
  br label %6

6:                                                ; preds = %28, %4
  %.01 = phi i32 [ %2, %4 ], [ %29, %28 ]
  %.not = icmp sgt i32 %.01, %3
  br i1 %.not, label %30, label %7

7:                                                ; preds = %6
  br label %8

8:                                                ; preds = %25, %7
  %.0 = phi i32 [ %2, %7 ], [ %26, %25 ]
  %.not2 = icmp sgt i32 %.0, %3
  br i1 %.not2, label %27, label %9

9:                                                ; preds = %8
  %10 = sext i32 %.01 to i64
  %11 = getelementptr inbounds double, double* %1, i64 %10
  %12 = load double, double* %11, align 8
  %13 = sext i32 %.0 to i64
  %14 = getelementptr inbounds double, double* %1, i64 %13
  %15 = load double, double* %14, align 8
  %16 = sext i32 %.01 to i64
  %17 = getelementptr inbounds double*, double** %0, i64 %16
  %18 = load double*, double** %17, align 8
  %19 = sext i32 %.0 to i64
  %20 = getelementptr inbounds double, double* %18, i64 %19
  %21 = load double, double* %20, align 8
  %22 = fdiv double -2.000000e+00, %5
  %23 = fmul double %22, %12
  %24 = call double @llvm.fmuladd.f64(double %23, double %15, double %21)
  store double %24, double* %20, align 8
  br label %25

25:                                               ; preds = %9
  %26 = add nsw i32 %.0, 1
  br label %8, !llvm.loop !4

27:                                               ; preds = %8
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %.01, 1
  br label %6, !llvm.loop !6

30:                                               ; preds = %6
  ret void
}

declare dso_local double @xty(double* noundef, double* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @MakeID(double** noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ApplyHouse(double** noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = call double** @newMatrix() #4
  %6 = call double** @newMatrix() #4
  call void @HouseMatrix(double** noundef %6, double* noundef %1, i32 noundef 0, i32 noundef 50)
  call void @matrixMult(double** noundef %5, double** noundef %0, double** noundef %6) #4
  call void @matrixMult(double** noundef %0, double** noundef %6, double** noundef %5) #4
  call void @freeMatrix(double** noundef %6) #4
  call void @freeMatrix(double** noundef %5) #4
  ret void
}

declare dso_local double** @newMatrix() #1

declare dso_local void @matrixMult(double** noundef, double** noundef, double** noundef) #1

declare dso_local void @freeMatrix(double** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @WeirdHouse(double** nocapture noundef readonly %0, double* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  br label %6

6:                                                ; preds = %8, %5
  %.01 = phi i32 [ %3, %5 ], [ %22, %8 ]
  %.0 = phi double [ 0.000000e+00, %5 ], [ %21, %8 ]
  %.not = icmp sgt i32 %.01, %4
  br i1 %.not, label %23, label %7

7:                                                ; preds = %6
  br label %8

8:                                                ; preds = %7
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds double*, double** %0, i64 %9
  %11 = load double*, double** %10, align 8
  %12 = sext i32 %.01 to i64
  %13 = getelementptr inbounds double, double* %11, i64 %12
  %14 = load double, double* %13, align 8
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds double*, double** %0, i64 %15
  %17 = load double*, double** %16, align 8
  %18 = sext i32 %.01 to i64
  %19 = getelementptr inbounds double, double* %17, i64 %18
  %20 = load double, double* %19, align 8
  %21 = call double @llvm.fmuladd.f64(double %14, double %20, double %.0)
  %22 = add nsw i32 %.01, 1
  br label %6, !llvm.loop !7

23:                                               ; preds = %6
  %24 = sext i32 %2 to i64
  %25 = getelementptr inbounds double*, double** %0, i64 %24
  %26 = load double*, double** %25, align 8
  %27 = sext i32 %4 to i64
  %28 = getelementptr inbounds double, double* %26, i64 %27
  %29 = load double, double* %28, align 8
  %30 = sext i32 %2 to i64
  %31 = getelementptr inbounds double*, double** %0, i64 %30
  %32 = load double*, double** %31, align 8
  %33 = sext i32 %4 to i64
  %34 = getelementptr inbounds double, double* %32, i64 %33
  %35 = load double, double* %34, align 8
  %36 = call i32 @sign(double noundef %35) #4
  %37 = sitofp i32 %36 to double
  %38 = call double @sqrt(double noundef %.0) #4
  %39 = call double @llvm.fmuladd.f64(double %37, double %38, double %29)
  %40 = fdiv double 1.000000e+00, %39
  br label %41

41:                                               ; preds = %53, %23
  %.1 = phi i32 [ %3, %23 ], [ %54, %53 ]
  %42 = icmp slt i32 %.1, %4
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  %44 = sext i32 %2 to i64
  %45 = getelementptr inbounds double*, double** %0, i64 %44
  %46 = load double*, double** %45, align 8
  %47 = sext i32 %.1 to i64
  %48 = getelementptr inbounds double, double* %46, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fmul double %49, %40
  %51 = sext i32 %.1 to i64
  %52 = getelementptr inbounds double, double* %1, i64 %51
  store double %50, double* %52, align 8
  br label %53

53:                                               ; preds = %43
  %54 = add nsw i32 %.1, 1
  br label %41, !llvm.loop !8

55:                                               ; preds = %41
  %56 = sext i32 %4 to i64
  %57 = getelementptr inbounds double, double* %1, i64 %56
  store double 1.000000e+00, double* %57, align 8
  ret void
}

declare dso_local i32 @sign(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double** @DivideAndSolve(double** noundef %0, i32 noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = call double** @newIdMatrix() #4
  %6 = call double** @newMatrix() #4
  %7 = call double* @newVector() #4
  %8 = add nsw i32 %1, 1
  %9 = sitofp i32 %8 to double
  br label %10

10:                                               ; preds = %143, %2
  %.0 = phi i32 [ %8, %2 ], [ %146, %143 ]
  %11 = icmp slt i32 %.0, 51
  br i1 %11, label %12, label %147

12:                                               ; preds = %10
  %13 = sitofp i32 %.0 to double
  %14 = fadd double %13, %9
  %15 = fadd double %14, -1.000000e+00
  %16 = fcmp olt double %15, 5.000000e+01
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = sitofp i32 %.0 to double
  %19 = fadd double %18, %9
  %20 = fadd double %19, -1.000000e+00
  br label %22

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi double [ %20, %17 ], [ 5.000000e+01, %21 ]
  %24 = fptosi double %23 to i32
  %25 = sitofp i32 %.0 to double
  %26 = fsub double %25, %9
  %27 = fptosi double %26 to i32
  %28 = sitofp i32 %27 to double
  %29 = fadd double %28, %9
  %30 = fadd double %29, -1.000000e+00
  %31 = fptosi double %30 to i32
  br label %32

32:                                               ; preds = %54, %22
  %.02 = phi i32 [ %27, %22 ], [ %55, %54 ]
  %.not = icmp sgt i32 %.02, %31
  br i1 %.not, label %56, label %33

33:                                               ; preds = %32
  %34 = call double @norm(double** noundef %0, i32 noundef %.02, i32 noundef %.0, i32 noundef %24) #4
  %35 = fcmp une double %34, 0.000000e+00
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  call void @House(double** noundef %0, double* noundef %7, i32 noundef %.02, i32 noundef %.0, i32 noundef %24) #4
  br label %37

37:                                               ; preds = %42, %36
  %.01 = phi i32 [ 0, %36 ], [ %43, %42 ]
  %38 = icmp slt i32 %.01, %.0
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = zext i32 %.01 to i64
  %41 = getelementptr inbounds double, double* %7, i64 %40
  store double 0.000000e+00, double* %41, align 8
  br label %42

42:                                               ; preds = %39
  %43 = add nuw nsw i32 %.01, 1
  br label %37, !llvm.loop !9

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %50, %44
  %.1.in = phi i32 [ %24, %44 ], [ %.1, %50 ]
  %.1 = add nsw i32 %.1.in, 1
  %46 = icmp slt i32 %.1.in, 50
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = sext i32 %.1 to i64
  %49 = getelementptr inbounds double, double* %7, i64 %48
  store double 0.000000e+00, double* %49, align 8
  br label %50

50:                                               ; preds = %47
  br label %45, !llvm.loop !10

51:                                               ; preds = %45
  call void @ApplyHouse(double** noundef %0, double* noundef %7, i32 noundef %.0, i32 noundef %24)
  br label %52

52:                                               ; preds = %51, %33
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef %.02, i32 noundef %.0, i32 noundef %24) #4
  call void @printVector(double* noundef %7) #4
  call void @printMatrix(double** noundef %0) #4
  br label %54

54:                                               ; preds = %52
  %55 = add nsw i32 %.02, 1
  br label %32, !llvm.loop !11

56:                                               ; preds = %32
  call void @WeirdHouse(double** noundef %0, double* noundef %7, i32 noundef %.0, i32 noundef %27, i32 noundef %31)
  call void @ApplyHouse(double** noundef %0, double* noundef %7, i32 noundef %27, i32 noundef %31)
  br label %57

57:                                               ; preds = %81, %56
  %58 = sext i32 %.0 to i64
  %59 = getelementptr inbounds double*, double** %0, i64 %58
  %60 = load double*, double** %59, align 8
  %61 = sext i32 %31 to i64
  %62 = getelementptr inbounds double, double* %60, i64 %61
  %63 = load double, double* %62, align 8
  %64 = add nsw i32 %.0, -1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double*, double** %0, i64 %65
  %67 = load double*, double** %66, align 8
  %68 = sext i32 %31 to i64
  %69 = getelementptr inbounds double, double* %67, i64 %68
  %70 = load double, double* %69, align 8
  %71 = sext i32 %.0 to i64
  %72 = getelementptr inbounds double*, double** %0, i64 %71
  %73 = load double*, double** %72, align 8
  %74 = add nsw i32 %31, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %73, i64 %75
  %77 = load double, double* %76, align 8
  %78 = fsub double %70, %77
  %79 = fmul double %78, 1.000000e-10
  %80 = fcmp ogt double %63, %79
  br i1 %80, label %81, label %143

81:                                               ; preds = %57
  call void @printMatrix(double** noundef %0) #4
  %82 = add nsw i32 %.0, -1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double*, double** %0, i64 %83
  %85 = load double*, double** %84, align 8
  %86 = sext i32 %31 to i64
  %87 = getelementptr inbounds double, double* %85, i64 %86
  %88 = load double, double* %87, align 8
  %89 = sext i32 %.0 to i64
  %90 = getelementptr inbounds double*, double** %0, i64 %89
  %91 = load double*, double** %90, align 8
  %92 = add nsw i32 %31, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %91, i64 %93
  %95 = load double, double* %94, align 8
  %96 = fsub double %88, %95
  %97 = fmul double %96, 5.000000e-01
  %98 = sext i32 %.0 to i64
  %99 = getelementptr inbounds double*, double** %0, i64 %98
  %100 = load double*, double** %99, align 8
  %101 = sext i32 %31 to i64
  %102 = getelementptr inbounds double, double* %100, i64 %101
  %103 = load double, double* %102, align 8
  %104 = sext i32 %.0 to i64
  %105 = getelementptr inbounds double*, double** %0, i64 %104
  %106 = load double*, double** %105, align 8
  %107 = add nsw i32 %31, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %106, i64 %108
  %110 = load double, double* %109, align 8
  %111 = fadd double %110, %97
  %112 = call i32 @sign(double noundef %97) #4
  %113 = sitofp i32 %112 to double
  %114 = fmul double %103, %103
  %115 = call double @llvm.fmuladd.f64(double %97, double %97, double %114)
  %116 = call double @sqrt(double noundef %115) #4
  %117 = fneg double %113
  %118 = call double @llvm.fmuladd.f64(double %117, double %116, double %111)
  %119 = add nsw i32 %.0, -1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double*, double** %0, i64 %120
  %122 = load double*, double** %121, align 8
  %123 = sext i32 %31 to i64
  %124 = getelementptr inbounds double, double* %122, i64 %123
  %125 = load double, double* %124, align 8
  %126 = fsub double %125, %118
  %127 = sext i32 %.0 to i64
  %128 = getelementptr inbounds double*, double** %0, i64 %127
  %129 = load double*, double** %128, align 8
  %130 = sext i32 %31 to i64
  %131 = getelementptr inbounds double, double* %129, i64 %130
  %132 = load double, double* %131, align 8
  call void @Givens(double noundef %126, double noundef %132, double* noundef nonnull %3, double* noundef nonnull %4) #4
  %133 = load double, double* %3, align 8
  %134 = load double, double* %4, align 8
  %135 = add nsw i32 %.0, -1
  call void @ApplyGivens(double** noundef %0, double noundef %133, double noundef %134, i32 noundef %135, i32 noundef %.0, i32 noundef 0, i32 noundef 50) #4
  %136 = sext i32 %27 to i64
  %137 = getelementptr inbounds double*, double** %0, i64 %136
  %138 = load double*, double** %137, align 8
  %139 = sext i32 %31 to i64
  %140 = getelementptr inbounds double, double* %138, i64 %139
  %141 = load double, double* %140, align 8
  %142 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double noundef %141) #4
  br label %57, !llvm.loop !12

143:                                              ; preds = %57
  %144 = sitofp i32 %.0 to double
  %145 = fadd double %144, %9
  %146 = fptosi double %145 to i32
  br label %10, !llvm.loop !13

147:                                              ; preds = %10
  ret double** undef
}

declare dso_local double** @newIdMatrix() #1

declare dso_local double* @newVector() #1

declare dso_local double @norm(double** noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @House(double** noundef, double* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @printVector(double* noundef) #1

declare dso_local void @printMatrix(double** noundef) #1

declare dso_local void @Givens(double noundef, double noundef, double* noundef, double* noundef) #1

declare dso_local void @ApplyGivens(double** noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = distinct !{!13, !5}
