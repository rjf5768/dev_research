; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980709-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980709-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store volatile double 3.200000e+01, double* %2, align 8
  %4 = load volatile double, double* %2, align 8
  %5 = call double @pow(double noundef %4, double noundef 0x3FD5555555555555) #3
  store double %5, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fadd double %6, 1.000000e-01
  %8 = fcmp ogt double %7, 0x400965FE974A3401
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load double, double* %3, align 8
  %11 = fsub double %10, 1.000000e-01
  %12 = fcmp olt double %11, 0x400965FE974A3401
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void @exit(i32 noundef 0) #4
  unreachable

14:                                               ; preds = %9, %0
  call void @abort() #4
  unreachable
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
