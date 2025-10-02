; ModuleID = './dt.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c" %i iterations of each test. \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c" inner loop / array size %i.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = bitcast double** %3 to i8**
  %6 = call i32 @posix_memalign(i8** noundef nonnull %5, i64 noundef 16, i64 noundef 16384) #5
  %7 = bitcast double** %4 to i8**
  %8 = call i32 @posix_memalign(i8** noundef nonnull %7, i64 noundef 16, i64 noundef 16384) #5
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 131072) #5
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2048) #5
  br label %11

11:                                               ; preds = %27, %2
  %.0 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %12 = icmp ult i64 %.0, 2048
  br i1 %12, label %13, label %29

13:                                               ; preds = %11
  %14 = sub nsw i64 2048, %.0
  %15 = sitofp i64 %14 to float
  %16 = call float @cosf(float noundef %15) #5
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3FF000001AD7F29B
  %19 = load double*, double** %3, align 8
  %20 = getelementptr inbounds double, double* %19, i64 %.0
  store double %18, double* %20, align 8
  %21 = sitofp i64 %.0 to float
  %22 = call float @sinf(float noundef %21) #5
  %23 = fpext float %22 to double
  %24 = call double @llvm.fmuladd.f64(double %23, double 1.000000e-10, double 1.000000e+00)
  %25 = load double*, double** %4, align 8
  %26 = getelementptr inbounds double, double* %25, i64 %.0
  store double %24, double* %26, align 8
  br label %27

27:                                               ; preds = %13
  %28 = add nuw nsw i64 %.0, 1
  br label %11, !llvm.loop !4

29:                                               ; preds = %11
  %30 = load double*, double** %3, align 8
  %31 = load double*, double** %4, align 8
  call void @double_array_divs_variable(double* noundef %30, double* noundef %31)
  %32 = load double*, double** %3, align 8
  %33 = load double, double* %32, align 8
  %34 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %33) #5
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @posix_memalign(i8** noundef, i64 noundef, i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float noundef) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @double_array_divs_variable(double* noalias nocapture noundef %0, double* noalias nocapture noundef readonly %1) #4 {
  br label %3

3:                                                ; preds = %17, %2
  %.0 = phi i64 [ 0, %2 ], [ %18, %17 ]
  %4 = icmp ult i64 %.0, 131072
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %14, %5
  %.01 = phi i64 [ 0, %5 ], [ %15, %14 ]
  %7 = icmp ult i64 %.01, 2048
  br i1 %7, label %8, label %16

8:                                                ; preds = %6
  %9 = getelementptr inbounds double, double* %1, i64 %.01
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds double, double* %0, i64 %.01
  %12 = load double, double* %11, align 8
  %13 = fdiv double %12, %10
  store double %13, double* %11, align 8
  br label %14

14:                                               ; preds = %8
  %15 = add nuw nsw i64 %.01, 1
  br label %6, !llvm.loop !6

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i64 %.0, 1
  br label %3, !llvm.loop !7

19:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
