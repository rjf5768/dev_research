; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2002-10-12-StructureArgs.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2002-10-12-StructureArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec2 = type { double, double }

@.str = private unnamed_addr constant [16 x i8] c"%f, %f, %f, %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.vec2, align 8
  %6 = alloca %struct.vec2, align 8
  %7 = bitcast %struct.vec2* %5 to { double, double }*
  %8 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  store double %0, double* %8, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double %1, double* %9, align 8
  %10 = bitcast %struct.vec2* %6 to { double, double }*
  %11 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  store double %2, double* %11, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  store double %3, double* %12, align 8
  %13 = getelementptr inbounds %struct.vec2, %struct.vec2* %5, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds %struct.vec2, %struct.vec2* %5, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %struct.vec2, %struct.vec2* %6, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds %struct.vec2, %struct.vec2* %6, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double noundef %14, double noundef %16, double noundef %18, double noundef %20)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vec2, align 8
  %3 = alloca %struct.vec2, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.vec2, %struct.vec2* %2, i32 0, i32 0
  store double 5.000000e-01, double* %4, align 8
  %5 = getelementptr inbounds %struct.vec2, %struct.vec2* %2, i32 0, i32 1
  store double 1.200000e+00, double* %5, align 8
  %6 = getelementptr inbounds %struct.vec2, %struct.vec2* %3, i32 0, i32 0
  store double -1.230100e+02, double* %6, align 8
  %7 = getelementptr inbounds %struct.vec2, %struct.vec2* %3, i32 0, i32 1
  store double 0x3FD5555555555555, double* %7, align 8
  %8 = bitcast %struct.vec2* %2 to { double, double }*
  %9 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = bitcast %struct.vec2* %3 to { double, double }*
  %14 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 1
  %17 = load double, double* %16, align 8
  call void @print(double %10, double %12, double %15, double %17)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
