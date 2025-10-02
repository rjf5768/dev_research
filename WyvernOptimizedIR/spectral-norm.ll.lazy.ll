; ModuleID = './spectral-norm.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/spectral-norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%0.9f\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @eval_A(i32 noundef %0, i32 noundef %1) #0 {
  %3 = add nsw i32 %0, %1
  %4 = add nsw i32 %0, %1
  %5 = add nsw i32 %4, 1
  %6 = mul nsw i32 %3, %5
  %7 = sdiv i32 %6, 2
  %8 = add nsw i32 %7, %0
  %9 = add nsw i32 %8, 1
  %10 = sitofp i32 %9 to double
  %11 = fdiv double 1.000000e+00, %10
  ret double %11
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @eval_A_times_u(i32 noundef %0, double* nocapture noundef readonly %1, double* nocapture noundef %2) #1 {
  br label %4

4:                                                ; preds = %23, %3
  %.01 = phi i32 [ 0, %3 ], [ %24, %23 ]
  %5 = icmp slt i32 %.01, %0
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds double, double* %2, i64 %7
  store double 0.000000e+00, double* %8, align 8
  br label %9

9:                                                ; preds = %20, %6
  %.0 = phi i32 [ 0, %6 ], [ %21, %20 ]
  %10 = icmp slt i32 %.0, %0
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  %12 = call double @eval_A(i32 noundef %.01, i32 noundef %.0)
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds double, double* %1, i64 %13
  %15 = load double, double* %14, align 8
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds double, double* %2, i64 %16
  %18 = load double, double* %17, align 8
  %19 = call double @llvm.fmuladd.f64(double %12, double %15, double %18)
  store double %19, double* %17, align 8
  br label %20

20:                                               ; preds = %11
  %21 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !4

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !6

25:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @eval_At_times_u(i32 noundef %0, double* nocapture noundef readonly %1, double* nocapture noundef %2) #1 {
  br label %4

4:                                                ; preds = %23, %3
  %.01 = phi i32 [ 0, %3 ], [ %24, %23 ]
  %5 = icmp slt i32 %.01, %0
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds double, double* %2, i64 %7
  store double 0.000000e+00, double* %8, align 8
  br label %9

9:                                                ; preds = %20, %6
  %.0 = phi i32 [ 0, %6 ], [ %21, %20 ]
  %10 = icmp slt i32 %.0, %0
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  %12 = call double @eval_A(i32 noundef %.0, i32 noundef %.01)
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds double, double* %1, i64 %13
  %15 = load double, double* %14, align 8
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds double, double* %2, i64 %16
  %18 = load double, double* %17, align 8
  %19 = call double @llvm.fmuladd.f64(double %12, double %15, double %18)
  store double %19, double* %17, align 8
  br label %20

20:                                               ; preds = %11
  %21 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !7

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !8

25:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @eval_AtA_times_u(i32 noundef %0, double* nocapture noundef readonly %1, double* nocapture noundef %2) #1 {
  %4 = zext i32 %0 to i64
  %5 = alloca double, i64 %4, align 16
  call void @eval_A_times_u(i32 noundef %0, double* noundef %1, double* noundef nonnull %5)
  call void @eval_At_times_u(i32 noundef %0, double* noundef nonnull %5, double* noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #4 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @atoi(i8* noundef %6) #8
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 2000, %8 ]
  %11 = zext i32 %10 to i64
  %12 = alloca double, i64 %11, align 16
  %13 = zext i32 %10 to i64
  %14 = alloca double, i64 %13, align 16
  br label %15

15:                                               ; preds = %20, %9
  %.02 = phi i32 [ 0, %9 ], [ %21, %20 ]
  %16 = icmp slt i32 %.02, %10
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = zext i32 %.02 to i64
  %19 = getelementptr inbounds double, double* %12, i64 %18
  store double 1.000000e+00, double* %19, align 8
  br label %20

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %.02, 1
  br label %15, !llvm.loop !9

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %26, %22
  %.1 = phi i32 [ 0, %22 ], [ %27, %26 ]
  %24 = icmp ult i32 %.1, 10
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  call void @eval_AtA_times_u(i32 noundef %10, double* noundef nonnull %12, double* noundef nonnull %14)
  call void @eval_AtA_times_u(i32 noundef %10, double* noundef nonnull %14, double* noundef nonnull %12)
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.1, 1
  br label %23, !llvm.loop !10

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %32, %28
  %.2 = phi i32 [ 0, %28 ], [ %47, %32 ]
  %.01 = phi double [ 0.000000e+00, %28 ], [ %46, %32 ]
  %.0 = phi double [ 0.000000e+00, %28 ], [ %39, %32 ]
  %30 = icmp slt i32 %.2, %10
  br i1 %30, label %31, label %48

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = zext i32 %.2 to i64
  %34 = getelementptr inbounds double, double* %14, i64 %33
  %35 = load double, double* %34, align 8
  %36 = zext i32 %.2 to i64
  %37 = getelementptr inbounds double, double* %14, i64 %36
  %38 = load double, double* %37, align 8
  %39 = call double @llvm.fmuladd.f64(double %35, double %38, double %.0)
  %40 = zext i32 %.2 to i64
  %41 = getelementptr inbounds double, double* %12, i64 %40
  %42 = load double, double* %41, align 8
  %43 = zext i32 %.2 to i64
  %44 = getelementptr inbounds double, double* %14, i64 %43
  %45 = load double, double* %44, align 8
  %46 = call double @llvm.fmuladd.f64(double %42, double %45, double %.01)
  %47 = add nuw nsw i32 %.2, 1
  br label %29, !llvm.loop !11

48:                                               ; preds = %29
  %49 = fdiv double %.01, %.0
  %50 = call double @sqrt(double noundef %49) #9
  %51 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double noundef %50) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #5

declare dso_local i32 @printf(i8* noundef, ...) #6

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

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
