; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASCI_Purple/SMG2000/HYPRE_pcg.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASCI_Purple/SMG2000/HYPRE_pcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_Solver_struct = type opaque
%struct.hypre_Matrix_struct = type opaque
%struct.hypre_Vector_struct = type opaque

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGSetup(%struct.hypre_Solver_struct* noundef %0, %struct.hypre_Matrix_struct* noundef %1, %struct.hypre_Vector_struct* noundef %2, %struct.hypre_Vector_struct* noundef %3) #0 {
  %5 = alloca %struct.hypre_Solver_struct*, align 8
  %6 = alloca %struct.hypre_Matrix_struct*, align 8
  %7 = alloca %struct.hypre_Vector_struct*, align 8
  %8 = alloca %struct.hypre_Vector_struct*, align 8
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %5, align 8
  store %struct.hypre_Matrix_struct* %1, %struct.hypre_Matrix_struct** %6, align 8
  store %struct.hypre_Vector_struct* %2, %struct.hypre_Vector_struct** %7, align 8
  store %struct.hypre_Vector_struct* %3, %struct.hypre_Vector_struct** %8, align 8
  %9 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %5, align 8
  %10 = bitcast %struct.hypre_Solver_struct* %9 to i8*
  %11 = load %struct.hypre_Matrix_struct*, %struct.hypre_Matrix_struct** %6, align 8
  %12 = bitcast %struct.hypre_Matrix_struct* %11 to i8*
  %13 = load %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct** %7, align 8
  %14 = bitcast %struct.hypre_Vector_struct* %13 to i8*
  %15 = load %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct** %8, align 8
  %16 = bitcast %struct.hypre_Vector_struct* %15 to i8*
  %17 = call i32 @hypre_PCGSetup(i8* noundef %10, i8* noundef %12, i8* noundef %14, i8* noundef %16)
  ret i32 %17
}

declare dso_local i32 @hypre_PCGSetup(i8* noundef, i8* noundef, i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGSolve(%struct.hypre_Solver_struct* noundef %0, %struct.hypre_Matrix_struct* noundef %1, %struct.hypre_Vector_struct* noundef %2, %struct.hypre_Vector_struct* noundef %3) #0 {
  %5 = alloca %struct.hypre_Solver_struct*, align 8
  %6 = alloca %struct.hypre_Matrix_struct*, align 8
  %7 = alloca %struct.hypre_Vector_struct*, align 8
  %8 = alloca %struct.hypre_Vector_struct*, align 8
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %5, align 8
  store %struct.hypre_Matrix_struct* %1, %struct.hypre_Matrix_struct** %6, align 8
  store %struct.hypre_Vector_struct* %2, %struct.hypre_Vector_struct** %7, align 8
  store %struct.hypre_Vector_struct* %3, %struct.hypre_Vector_struct** %8, align 8
  %9 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %5, align 8
  %10 = bitcast %struct.hypre_Solver_struct* %9 to i8*
  %11 = load %struct.hypre_Matrix_struct*, %struct.hypre_Matrix_struct** %6, align 8
  %12 = bitcast %struct.hypre_Matrix_struct* %11 to i8*
  %13 = load %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct** %7, align 8
  %14 = bitcast %struct.hypre_Vector_struct* %13 to i8*
  %15 = load %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct** %8, align 8
  %16 = bitcast %struct.hypre_Vector_struct* %15 to i8*
  %17 = call i32 @hypre_PCGSolve(i8* noundef %10, i8* noundef %12, i8* noundef %14, i8* noundef %16)
  ret i32 %17
}

declare dso_local i32 @hypre_PCGSolve(i8* noundef, i8* noundef, i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGSetTol(%struct.hypre_Solver_struct* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct.hypre_Solver_struct*, align 8
  %4 = alloca double, align 8
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %3, align 8
  %6 = bitcast %struct.hypre_Solver_struct* %5 to i8*
  %7 = load double, double* %4, align 8
  %8 = call i32 @hypre_PCGSetTol(i8* noundef %6, double noundef %7)
  ret i32 %8
}

declare dso_local i32 @hypre_PCGSetTol(i8* noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGSetMaxIter(%struct.hypre_Solver_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.hypre_Solver_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %3, align 8
  %6 = bitcast %struct.hypre_Solver_struct* %5 to i8*
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @hypre_PCGSetMaxIter(i8* noundef %6, i32 noundef %7)
  ret i32 %8
}

declare dso_local i32 @hypre_PCGSetMaxIter(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGSetStopCrit(%struct.hypre_Solver_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.hypre_Solver_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %3, align 8
  %6 = bitcast %struct.hypre_Solver_struct* %5 to i8*
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @hypre_PCGSetStopCrit(i8* noundef %6, i32 noundef %7)
  ret i32 %8
}

declare dso_local i32 @hypre_PCGSetStopCrit(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGSetTwoNorm(%struct.hypre_Solver_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.hypre_Solver_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %3, align 8
  %6 = bitcast %struct.hypre_Solver_struct* %5 to i8*
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @hypre_PCGSetTwoNorm(i8* noundef %6, i32 noundef %7)
  ret i32 %8
}

declare dso_local i32 @hypre_PCGSetTwoNorm(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGSetRelChange(%struct.hypre_Solver_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.hypre_Solver_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %3, align 8
  %6 = bitcast %struct.hypre_Solver_struct* %5 to i8*
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @hypre_PCGSetRelChange(i8* noundef %6, i32 noundef %7)
  ret i32 %8
}

declare dso_local i32 @hypre_PCGSetRelChange(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGSetPrecond(%struct.hypre_Solver_struct* noundef %0, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* noundef %1, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* noundef %2, %struct.hypre_Solver_struct* noundef %3) #0 {
  %5 = alloca %struct.hypre_Solver_struct*, align 8
  %6 = alloca i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, align 8
  %7 = alloca i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, align 8
  %8 = alloca %struct.hypre_Solver_struct*, align 8
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %5, align 8
  store i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %1, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)** %6, align 8
  store i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %2, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)** %7, align 8
  store %struct.hypre_Solver_struct* %3, %struct.hypre_Solver_struct** %8, align 8
  %9 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %5, align 8
  %10 = bitcast %struct.hypre_Solver_struct* %9 to i8*
  %11 = load i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)** %6, align 8
  %12 = bitcast i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %11 to i32 (...)*
  %13 = load i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)** %7, align 8
  %14 = bitcast i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* %13 to i32 (...)*
  %15 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %8, align 8
  %16 = bitcast %struct.hypre_Solver_struct* %15 to i8*
  %17 = call i32 @hypre_PCGSetPrecond(i8* noundef %10, i32 (...)* noundef %12, i32 (...)* noundef %14, i8* noundef %16)
  ret i32 %17
}

declare dso_local i32 @hypre_PCGSetPrecond(i8* noundef, i32 (...)* noundef, i32 (...)* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGGetPrecond(%struct.hypre_Solver_struct* noundef %0, %struct.hypre_Solver_struct** noundef %1) #0 {
  %3 = alloca %struct.hypre_Solver_struct*, align 8
  %4 = alloca %struct.hypre_Solver_struct**, align 8
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %3, align 8
  store %struct.hypre_Solver_struct** %1, %struct.hypre_Solver_struct*** %4, align 8
  %5 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %3, align 8
  %6 = bitcast %struct.hypre_Solver_struct* %5 to i8*
  %7 = load %struct.hypre_Solver_struct**, %struct.hypre_Solver_struct*** %4, align 8
  %8 = call i32 @hypre_PCGGetPrecond(i8* noundef %6, %struct.hypre_Solver_struct** noundef %7)
  ret i32 %8
}

declare dso_local i32 @hypre_PCGGetPrecond(i8* noundef, %struct.hypre_Solver_struct** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGSetLogging(%struct.hypre_Solver_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.hypre_Solver_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %3, align 8
  %6 = bitcast %struct.hypre_Solver_struct* %5 to i8*
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @hypre_PCGSetLogging(i8* noundef %6, i32 noundef %7)
  ret i32 %8
}

declare dso_local i32 @hypre_PCGSetLogging(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGGetNumIterations(%struct.hypre_Solver_struct* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.hypre_Solver_struct*, align 8
  %4 = alloca i32*, align 8
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %3, align 8
  %6 = bitcast %struct.hypre_Solver_struct* %5 to i8*
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @hypre_PCGGetNumIterations(i8* noundef %6, i32* noundef %7)
  ret i32 %8
}

declare dso_local i32 @hypre_PCGGetNumIterations(i8* noundef, i32* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_PCGGetFinalRelativeResidualNorm(%struct.hypre_Solver_struct* noundef %0, double* noundef %1) #0 {
  %3 = alloca %struct.hypre_Solver_struct*, align 8
  %4 = alloca double*, align 8
  store %struct.hypre_Solver_struct* %0, %struct.hypre_Solver_struct** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %3, align 8
  %6 = bitcast %struct.hypre_Solver_struct* %5 to i8*
  %7 = load double*, double** %4, align 8
  %8 = call i32 @hypre_PCGGetFinalRelativeResidualNorm(i8* noundef %6, double* noundef %7)
  ret i32 %8
}

declare dso_local i32 @hypre_PCGGetFinalRelativeResidualNorm(i8* noundef, double* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
