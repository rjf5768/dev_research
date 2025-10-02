; ModuleID = './complex-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ag = dso_local global { double, double } { double 1.000000e+00, double 1.000000e+00 }, align 8
@bg = dso_local global { double, double } { double -2.000000e+00, double 2.000000e+00 }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { double, double } @f(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = fadd double %0, %2
  %6 = fadd double %1, %3
  %7 = insertvalue { double, double } undef, double %5, 0
  %8 = insertvalue { double, double } %7, double %6, 1
  ret { double, double } %8
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca { double, double }, align 8
  %2 = alloca { double, double }, align 8
  %3 = alloca { double, double }, align 8
  %4 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @ag, i64 0, i32 0), align 8
  %5 = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @ag, i64 0, i32 1), align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 0
  %7 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  store double %4, double* %6, align 8
  store double %5, double* %7, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %9 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  store double -2.000000e+00, double* %8, align 8
  store double 2.000000e+00, double* %9, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = call { double, double } @f(double noundef %11, double noundef %13, double noundef %15, double noundef %17)
  %19 = extractvalue { double, double } %18, 0
  %20 = extractvalue { double, double } %18, 1
  %21 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  %22 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  store double %19, double* %21, align 8
  store double %20, double* %22, align 8
  %23 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fcmp une double %24, 1.000000e+00
  %28 = fcmp une double %26, 1.000000e+00
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %0
  %32 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = fcmp une double %33, -2.000000e+00
  %37 = fcmp une double %35, 2.000000e+00
  %38 = or i1 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  call void @abort() #3
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %31
  %41 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = getelementptr inbounds { double, double }, { double, double }* %3, i64 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = fcmp une double %42, -1.000000e+00
  %46 = fcmp une double %44, 3.000000e+00
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  call void @abort() #3
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %40
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %49, %48, %39, %30
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
