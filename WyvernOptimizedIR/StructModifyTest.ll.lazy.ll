; ModuleID = './StructModifyTest.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/StructModifyTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1Ty = type { i32, float, double, i64 }
%struct.S2Ty = type { %struct.S1Ty, %struct.S1Ty }

@.str = private unnamed_addr constant [18 x i8] c"%d, %f, %f, %lld\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printS1(%struct.S1Ty* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %0, i64 0, i32 1
  %5 = load float, float* %4, align 4
  %6 = fpext float %5 to double
  %7 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %0, i64 0, i32 2
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %0, i64 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 noundef %3, double noundef %6, double noundef %8, i64 noundef %10) #2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.S2Ty, align 8
  %2 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %1, i64 0, i32 0, i32 0
  store i32 1, i32* %2, align 8
  %3 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %1, i64 0, i32 0, i32 1
  store float 0x405EDAE140000000, float* %3, align 4
  %4 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %1, i64 0, i32 0, i32 2
  store double 1.900000e+01, double* %4, align 8
  %5 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %1, i64 0, i32 0, i32 3
  store i64 123455678902, i64* %5, align 8
  %6 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %1, i64 0, i32 1, i32 0
  store i32 2, i32* %6, align 8
  %7 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %1, i64 0, i32 1, i32 1
  store float 0x40376B8520000000, float* %7, align 4
  %8 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %1, i64 0, i32 1, i32 2
  store double 2.900000e+01, double* %8, align 8
  %9 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %1, i64 0, i32 1, i32 3
  store i64 23455678902, i64* %9, align 8
  %10 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %1, i64 0, i32 0
  call void @printS1(%struct.S1Ty* noundef nonnull %10)
  %11 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %1, i64 0, i32 1
  call void @printS1(%struct.S1Ty* noundef nonnull %11)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
