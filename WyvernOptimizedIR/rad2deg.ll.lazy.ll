; ModuleID = './rad2deg.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-basicmath/rad2deg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @rad2deg(double noundef %0) #0 {
  %2 = fmul double %0, 1.800000e+02
  %3 = call double @atan(double noundef 1.000000e+00) #2
  %4 = fdiv double %2, 0x400921FB54442D18
  ret double %4
}

; Function Attrs: nounwind
declare dso_local double @atan(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @deg2rad(double noundef %0) #0 {
  %2 = call double @atan(double noundef 1.000000e+00) #2
  %3 = fmul double %0, 0x400921FB54442D18
  %4 = fdiv double %3, 1.800000e+02
  ret double %4
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
