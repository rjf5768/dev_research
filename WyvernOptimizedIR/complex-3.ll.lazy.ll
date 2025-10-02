; ModuleID = './complex-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/complex-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <2 x float> @f(float noundef %0, float noundef %1) #0 {
  %3 = alloca <2 x float>, align 8
  %4 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 0
  store float %0, float* %4, align 8
  %5 = getelementptr inbounds <2 x float>, <2 x float>* %3, i64 0, i64 1
  store float %1, float* %5, align 4
  %6 = load <2 x float>, <2 x float>* %3, align 8
  ret <2 x float> %6
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca <2 x float>, align 8
  %2 = call <2 x float> @f(float noundef 1.000000e+00, float noundef 0.000000e+00)
  store <2 x float> %2, <2 x float>* %1, align 8
  %3 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 0
  %4 = load float, float* %3, align 8
  %5 = fcmp une float %4, 1.000000e+00
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds <2 x float>, <2 x float>* %1, i64 0, i64 1
  %8 = load float, float* %7, align 4
  %9 = fcmp une float %8, 0.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %6
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %11, %10
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
