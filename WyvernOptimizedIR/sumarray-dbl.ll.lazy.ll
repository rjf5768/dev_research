; ModuleID = './sumarray-dbl.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/sumarray-dbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Array = type { [100 x <8 x double>] }
%union.D8V = type { <8 x double> }

@TheArray = dso_local global %union.Array zeroinitializer, align 64
@.str = private unnamed_addr constant [25 x i8] c"%g %g %g %g %g %g %g %g\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %union.D8V, align 64
  br label %2

2:                                                ; preds = %9, %0
  %.01 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %3 = icmp ult i32 %.01, 800
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = sitofp i32 %.01 to double
  %6 = fmul double %5, 1.234500e+01
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds [800 x double], [800 x double]* bitcast (%union.Array* @TheArray to [800 x double]*), i64 0, i64 %7
  store double %6, double* %8, align 8
  br label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %15, %11
  %.1 = phi i32 [ 0, %11 ], [ %20, %15 ]
  %.0 = phi <8 x double> [ zeroinitializer, %11 ], [ %19, %15 ]
  %13 = icmp ult i32 %.1, 100
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14
  %16 = zext i32 %.1 to i64
  %17 = getelementptr inbounds %union.Array, %union.Array* @TheArray, i64 0, i32 0, i64 %16
  %18 = load <8 x double>, <8 x double>* %17, align 64
  %19 = fadd <8 x double> %.0, %18
  %20 = add nuw nsw i32 %.1, 1
  br label %12, !llvm.loop !6

21:                                               ; preds = %12
  %22 = getelementptr inbounds %union.D8V, %union.D8V* %1, i64 0, i32 0
  store <8 x double> %.0, <8 x double>* %22, align 64
  call void @printD8V(%union.D8V* noundef nonnull %1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printD8V(%union.D8V* nocapture noundef readonly %0) #0 {
  %2 = getelementptr %union.D8V, %union.D8V* %0, i64 0, i32 0, i64 0
  %3 = load double, double* %2, align 64
  %4 = getelementptr inbounds %union.D8V, %union.D8V* %0, i64 0, i32 0, i64 1
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds %union.D8V, %union.D8V* %0, i64 0, i32 0, i64 2
  %7 = load double, double* %6, align 16
  %8 = getelementptr inbounds %union.D8V, %union.D8V* %0, i64 0, i32 0, i64 3
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds %union.D8V, %union.D8V* %0, i64 0, i32 0, i64 4
  %11 = load double, double* %10, align 32
  %12 = getelementptr inbounds %union.D8V, %union.D8V* %0, i64 0, i32 0, i64 5
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds %union.D8V, %union.D8V* %0, i64 0, i32 0, i64 6
  %15 = load double, double* %14, align 16
  %16 = getelementptr inbounds %union.D8V, %union.D8V* %0, i64 0, i32 0, i64 7
  %17 = load double, double* %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), double noundef %3, double noundef %5, double noundef %7, double noundef %9, double noundef %11, double noundef %13, double noundef %15, double noundef %17) #2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

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
!6 = distinct !{!6, !5}
