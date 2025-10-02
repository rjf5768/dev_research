; ModuleID = './20020411-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020411-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <2 x float> @foo() #0 {
  %1 = alloca <2 x float>, align 8
  %2 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 0
  %3 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 1
  store float 1.000000e+00, float* %2, align 8
  store float -1.000000e+00, float* %3, align 4
  %4 = load <2 x float>, <2 x float>* %1, align 8
  ret <2 x float> %4
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [1 x { double, double }], align 16
  %2 = alloca <2 x float>, align 8
  %3 = call <2 x float> @foo()
  store <2 x float> %3, <2 x float>* %2, align 8
  %4 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 0
  %5 = load float, float* %4, align 8
  %6 = getelementptr inbounds <2 x float>, <2 x float>* %2, i64 0, i64 1
  %7 = load float, float* %6, align 4
  %8 = fpext float %5 to double
  %9 = fpext float %7 to double
  %10 = getelementptr inbounds [1 x { double, double }], [1 x { double, double }]* %1, i64 0, i64 0, i32 0
  %11 = getelementptr inbounds [1 x { double, double }], [1 x { double, double }]* %1, i64 0, i64 0, i32 1
  store double %8, double* %10, align 16
  store double %9, double* %11, align 8
  %12 = fcmp une float %5, 1.000000e+00
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds [1 x { double, double }], [1 x { double, double }]* %1, i64 0, i64 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fcmp une double %15, -1.000000e+00
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %13
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %18, %17
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
