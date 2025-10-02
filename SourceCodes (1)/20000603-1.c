; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000603-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000603-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s1 = type { double }
%struct.s2 = type { double }
%union.u = type { %struct.s1 }

; Function Attrs: noinline nounwind uwtable
define dso_local double @f(%struct.s1* noundef %0, %struct.s2* noundef %1) #0 {
  %3 = alloca %struct.s1*, align 8
  %4 = alloca %struct.s2*, align 8
  store %struct.s1* %0, %struct.s1** %3, align 8
  store %struct.s2* %1, %struct.s2** %4, align 8
  %5 = load %struct.s1*, %struct.s1** %3, align 8
  %6 = getelementptr inbounds %struct.s1, %struct.s1* %5, i32 0, i32 0
  store double 1.000000e+00, double* %6, align 8
  %7 = load %struct.s2*, %struct.s2** %4, align 8
  %8 = getelementptr inbounds %struct.s2, %struct.s2* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fadd double %9, 1.000000e+00
  ret double %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.u, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast %union.u* %2 to %struct.s1*
  %4 = getelementptr inbounds %struct.s1, %struct.s1* %3, i32 0, i32 0
  store double 0.000000e+00, double* %4, align 8
  %5 = bitcast %union.u* %2 to %struct.s1*
  %6 = bitcast %union.u* %2 to %struct.s2*
  %7 = call double @f(%struct.s1* noundef %5, %struct.s2* noundef %6)
  %8 = fcmp une double %7, 2.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
