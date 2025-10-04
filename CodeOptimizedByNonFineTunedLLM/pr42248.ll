; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42248.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42248.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scf10 = type { { double, double }, { double, double } }

@g1s = dso_local global %struct.Scf10 zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(%struct.Scf10* noundef byval(%struct.Scf10) align 8 %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca { double, double }, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %1, double* %5, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %2, double* %6, align 8
  %7 = getelementptr inbounds %struct.Scf10, %struct.Scf10* %0, i32 0, i32 0
  %8 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fcmp une double %9, %13
  %17 = fcmp une double %11, %15
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  call void @abort() #2
  unreachable

20:                                               ; preds = %3
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init(%struct.Scf10* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca { double, double }, align 8
  %5 = alloca %struct.Scf10*, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %1, double* %6, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %2, double* %7, align 8
  store %struct.Scf10* %0, %struct.Scf10** %5, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = load %struct.Scf10*, %struct.Scf10** %5, align 8
  %13 = getelementptr inbounds %struct.Scf10, %struct.Scf10* %12, i32 0, i32 0
  %14 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 0
  %15 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 1
  store double %9, double* %14, align 8
  store double %11, double* %15, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca { double, double }, align 8
  %3 = alloca { double, double }, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %5 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  store double 1.000000e+00, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %2, i32 0, i32 1
  %9 = load double, double* %8, align 8
  call void @init(%struct.Scf10* noundef @g1s, double noundef %7, double noundef %9)
  %10 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %11 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double 1.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  %15 = load double, double* %14, align 8
  call void @check(%struct.Scf10* noundef byval(%struct.Scf10) align 8 @g1s, double noundef %13, double noundef %15)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
