; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/StructModifyTest.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/StructModifyTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1Ty = type { i32, float, double, i64 }
%struct.S2Ty = type { %struct.S1Ty, %struct.S1Ty }

@.str = private unnamed_addr constant [18 x i8] c"%d, %f, %f, %lld\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printS1(%struct.S1Ty* noundef %0) #0 {
  %2 = alloca %struct.S1Ty*, align 8
  store %struct.S1Ty* %0, %struct.S1Ty** %2, align 8
  %3 = load %struct.S1Ty*, %struct.S1Ty** %2, align 8
  %4 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.S1Ty*, %struct.S1Ty** %2, align 8
  %7 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %6, i32 0, i32 1
  %8 = load float, float* %7, align 4
  %9 = fpext float %8 to double
  %10 = load %struct.S1Ty*, %struct.S1Ty** %2, align 8
  %11 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %10, i32 0, i32 2
  %12 = load double, double* %11, align 8
  %13 = load %struct.S1Ty*, %struct.S1Ty** %2, align 8
  %14 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 noundef %5, double noundef %9, double noundef %12, i64 noundef %15)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S2Ty, align 8
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %2, i32 0, i32 0
  %6 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %5, i32 0, i32 1
  store float 0x405EDAE140000000, float* %6, align 4
  %7 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %2, i32 0, i32 0
  %8 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %7, i32 0, i32 2
  store double 1.900000e+01, double* %8, align 8
  %9 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %2, i32 0, i32 0
  %10 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %9, i32 0, i32 3
  store i64 123455678902, i64* %10, align 8
  %11 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %11, i32 0, i32 0
  store i32 2, i32* %12, align 8
  %13 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %2, i32 0, i32 1
  %14 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %13, i32 0, i32 1
  store float 0x40376B8520000000, float* %14, align 4
  %15 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %2, i32 0, i32 1
  %16 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %15, i32 0, i32 2
  store double 2.900000e+01, double* %16, align 8
  %17 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %2, i32 0, i32 1
  %18 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %17, i32 0, i32 3
  store i64 23455678902, i64* %18, align 8
  %19 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %2, i32 0, i32 0
  call void @printS1(%struct.S1Ty* noundef %19)
  %20 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %2, i32 0, i32 1
  call void @printS1(%struct.S1Ty* noundef %20)
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
