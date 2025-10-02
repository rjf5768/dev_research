; ModuleID = './20070614-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20070614-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global { double, double } { double 3.000000e+00, double 1.000000e+00 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(double noundef %0, double noundef %1, i32* nocapture noundef readnone %2) #0 {
  %4 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @v, i64 0, i32 0), align 8
  %5 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @v, i64 0, i32 1), align 8
  %6 = fcmp une double %4, %0
  %7 = fcmp une double %5, %1
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  call void @abort() #4
  unreachable

10:                                               ; preds = %3
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local { double, double } @bar(double noundef %0, double noundef %1) #2 {
  %3 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @v, i64 0, i32 0), align 8
  %4 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @v, i64 0, i32 1), align 8
  %5 = insertvalue { double, double } undef, double %3, 0
  %6 = insertvalue { double, double } %5, double %4, 1
  ret { double, double } %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz() #3 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %15, %0
  %.0 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %3 = icmp ult i32 %.0, 6
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = sitofp i32 %.0 to float
  %6 = fmul float %5, 0.000000e+00
  br i1 false, label %7, label %9, !prof !4

7:                                                ; preds = %4
  br i1 false, label %8, label %9, !prof !4

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8, %7, %4
  %10 = fpext float %6 to double
  %11 = fpext float %5 to double
  %12 = call { double, double } @bar(double noundef %10, double noundef %11) #5
  %13 = extractvalue { double, double } %12, 0
  %14 = extractvalue { double, double } %12, 1
  call void @foo(double noundef %13, double noundef %14, i32* noundef nonnull %1)
  br label %15

15:                                               ; preds = %9
  %16 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !5

17:                                               ; preds = %2
  ret i32 0
}

declare dso_local <2 x float> @__mulsc3(float, float, float, float)

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @baz()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{!"branch_weights", i32 1, i32 1048575}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
