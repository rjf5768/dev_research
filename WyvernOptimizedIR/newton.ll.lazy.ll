; ModuleID = './newton.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/allroots/newton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"     NEWTON Called on interval [%g,%g]\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"     X[%d] = %g\0A\00", align 1
@DERIV_X = external dso_local global double, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"ROOT: %g (approx.)\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @newton(i32 noundef %0, double* noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = fcmp olt double %3, %2
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %4
  %.03 = phi double [ %2, %6 ], [ %3, %4 ]
  %.02 = phi double [ %3, %6 ], [ %2, %4 ]
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), double noundef %.02, double noundef %.03) #2
  %9 = fadd double %.02, %.03
  %10 = fmul double %9, 5.000000e-01
  br label %11

11:                                               ; preds = %21, %7
  %.04 = phi double [ %.02, %7 ], [ %.01, %21 ]
  %.01 = phi double [ %10, %7 ], [ %27, %21 ]
  %.0 = phi i32 [ 0, %7 ], [ %28, %21 ]
  %12 = fsub double %.01, %.04
  %13 = call double @d_abs(double noundef %12) #2
  %14 = call double @d_abs(double noundef %.01) #2
  %15 = fdiv double %13, %14
  %16 = fcmp ogt double %15, 5.000000e-06
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = icmp ult i32 %.0, 41
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i1 [ false, %11 ], [ %18, %17 ]
  br i1 %20, label %21, label %29

21:                                               ; preds = %19
  %22 = add nuw nsw i32 %.0, 1
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef %22, double noundef %.01) #2
  %24 = call double @HORNERS(i32 noundef %0, double* noundef %1, double noundef %.01) #2
  %25 = load double, double* @DERIV_X, align 8
  %26 = fdiv double %24, %25
  %27 = fsub double %.01, %26
  %28 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !4

29:                                               ; preds = %19
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), double noundef %.01) #2
  ret double %.01
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local double @d_abs(double noundef) #1

declare dso_local double @HORNERS(i32 noundef, double* noundef, double noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
