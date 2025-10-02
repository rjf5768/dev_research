; ModuleID = './complex-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @g0(double noundef %0) #0 {
  ret double 1.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @g1(double noundef %0) #0 {
  ret double -1.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @g2(double noundef %0) #0 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { double, double } @xcexp(double noundef %0, double noundef %1) #0 {
  %3 = alloca { double, double }, align 8
  %4 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  store double %0, double* %4, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  store double %1, double* %5, align 8
  %6 = call double @g0(double noundef %0)
  %7 = call double @g1(double noundef %1)
  %8 = fmul double %6, %7
  %9 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  store double %8, double* %9, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = call double @g2(double noundef %11)
  %13 = fmul double %6, %12
  %14 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  store double %13, double* %14, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = insertvalue { double, double } undef, double %16, 0
  %18 = insertvalue { double, double } %17, double %13, 1
  ret { double, double } %18
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca { double, double }, align 8
  %2 = call { double, double } @xcexp(double noundef 0.000000e+00, double noundef 1.000000e+00)
  %3 = extractvalue { double, double } %2, 0
  %4 = extractvalue { double, double } %2, 1
  %5 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 0
  %6 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  store double %3, double* %5, align 8
  store double %4, double* %6, align 8
  %7 = fcmp une double %3, -1.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %0
  %10 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fcmp une double %11, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %9
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %14, %13, %8
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
