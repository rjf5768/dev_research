; ModuleID = './bisect_test.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/04-bisect/bisect_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%5d %.15e\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"eps2 = %e,  k = %d\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @test_matrix(i32 noundef %0, double* nocapture noundef %1, double* nocapture noundef writeonly %2) #0 {
  br label %4

4:                                                ; preds = %26, %3
  %.0 = phi i32 [ 0, %3 ], [ %27, %26 ]
  %5 = icmp slt i32 %.0, %0
  br i1 %5, label %6, label %28

6:                                                ; preds = %4
  %7 = sitofp i32 %.0 to double
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds double, double* %2, i64 %8
  store double %7, double* %9, align 8
  %10 = add nuw nsw i32 %.0, 1
  %11 = sitofp i32 %10 to double
  %12 = add nuw nsw i32 %.0, 1
  %13 = sitofp i32 %12 to double
  %14 = fmul double %11, %13
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds double, double* %1, i64 %15
  store double %14, double* %16, align 8
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds double, double* %1, i64 %17
  %19 = load double, double* %18, align 8
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds double, double* %1, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fmul double %19, %22
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds double, double* %1, i64 %24
  store double %23, double* %25, align 8
  br label %26

26:                                               ; preds = %6
  %27 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

28:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %3) #3
  %13 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %4) #3
  %14 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double* noundef nonnull %6) #3
  %15 = load i32, i32* %4, align 4
  call void @dallocvector(i32 noundef %15, double** noundef nonnull %8) #3
  %16 = load i32, i32* %4, align 4
  call void @dallocvector(i32 noundef %16, double** noundef nonnull %9) #3
  %17 = load i32, i32* %4, align 4
  call void @dallocvector(i32 noundef %17, double** noundef nonnull %10) #3
  %18 = load i32, i32* %4, align 4
  call void @dallocvector(i32 noundef %18, double** noundef nonnull %11) #3
  br label %19

19:                                               ; preds = %56, %2
  %.0 = phi i32 [ 0, %2 ], [ %57, %56 ]
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %.0, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load double*, double** %8, align 8
  %25 = load double*, double** %9, align 8
  call void @test_matrix(i32 noundef %23, double* noundef %24, double* noundef %25)
  br label %26

26:                                               ; preds = %44, %22
  %.01 = phi i32 [ 0, %22 ], [ %45, %44 ]
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %.01, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load double*, double** %9, align 8
  %31 = zext i32 %.01 to i64
  %32 = getelementptr inbounds double, double* %30, i64 %31
  %33 = load double, double* %32, align 8
  %34 = zext i32 %.01 to i64
  %35 = getelementptr inbounds double, double* %30, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fmul double %33, %36
  %38 = load double*, double** %10, align 8
  %39 = zext i32 %.01 to i64
  %40 = getelementptr inbounds double, double* %38, i64 %39
  store double %37, double* %40, align 8
  %41 = load double*, double** %11, align 8
  %42 = zext i32 %.01 to i64
  %43 = getelementptr inbounds double, double* %41, i64 %42
  store double 0.000000e+00, double* %43, align 8
  br label %44

44:                                               ; preds = %29
  %45 = add nuw nsw i32 %.01, 1
  br label %26, !llvm.loop !6

46:                                               ; preds = %26
  %47 = load double*, double** %10, align 8
  store double 0.000000e+00, double* %47, align 8
  %48 = load double*, double** %9, align 8
  store double 0.000000e+00, double* %48, align 8
  %49 = load double*, double** %8, align 8
  %50 = load double*, double** %9, align 8
  %51 = load double*, double** %10, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load double, double* %6, align 8
  %54 = load double*, double** %11, align 8
  %55 = getelementptr inbounds double, double* %54, i64 -1
  call void @dbisect(double* noundef %49, double* noundef %50, double* noundef %51, i32 noundef %52, i32 noundef 1, i32 noundef %52, double noundef %53, double* noundef nonnull %7, i32* noundef nonnull %5, double* noundef nonnull %55) #3
  br label %56

56:                                               ; preds = %46
  %57 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !7

58:                                               ; preds = %19
  br label %59

59:                                               ; preds = %69, %58
  %.1 = phi i32 [ 1, %58 ], [ %70, %69 ]
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %.1, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = add nuw nsw i32 %.1, 1
  %64 = load double*, double** %11, align 8
  %65 = zext i32 %.1 to i64
  %66 = getelementptr inbounds double, double* %64, i64 %65
  %67 = load double, double* %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 noundef %63, double noundef %67) #3
  br label %69

69:                                               ; preds = %62
  %70 = add nuw nsw i32 %.1, 1
  br label %59, !llvm.loop !8

71:                                               ; preds = %59
  %72 = load double, double* %7, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), double noundef %72, i32 noundef %73) #3
  ret i32 0
}

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #2

declare dso_local void @dallocvector(i32 noundef, double** noundef) #2

declare dso_local void @dbisect(double* noundef, double* noundef, double* noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, double* noundef, i32* noundef, double* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
