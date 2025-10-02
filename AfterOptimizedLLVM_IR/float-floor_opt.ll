; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/float-floor.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/float-floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global double 0x408FFFFFF0000000, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca float, align 4
  store i32 0, i32* %1, align 4
  %4 = load double, double* @d, align 8
  %5 = call double @llvm.floor.f64(double %4)
  store double %5, double* %2, align 8
  %6 = load double, double* @d, align 8
  %7 = call double @llvm.floor.f64(double %6)
  %8 = fptrunc double %7 to float
  store float %8, float* %3, align 4
  %9 = load double, double* %2, align 8
  %10 = fptosi double %9 to i32
  %11 = icmp ne i32 %10, 1023
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = load float, float* %3, align 4
  %14 = fptosi float %13 to i32
  %15 = icmp ne i32 %14, 1023
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %0
  call void @abort() #3
  unreachable

17:                                               ; preds = %12
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
