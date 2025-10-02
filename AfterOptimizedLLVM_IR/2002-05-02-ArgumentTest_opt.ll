; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2002-05-02-ArgumentTest.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2002-05-02-ArgumentTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"%d, %f, %d, %lld, %d, %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testfunc(i16 noundef signext %0, float noundef %1, i8 noundef signext %2, i64 noundef %3, i32 noundef %4, double noundef %5) #0 {
  %7 = alloca i16, align 2
  %8 = alloca float, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i16 %0, i16* %7, align 2
  store float %1, float* %8, align 4
  store i8 %2, i8* %9, align 1
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store double %5, double* %12, align 8
  %13 = load i16, i16* %7, align 2
  %14 = sext i16 %13 to i32
  %15 = load float, float* %8, align 4
  %16 = fpext float %15 to double
  %17 = load i8, i8* %9, align 1
  %18 = sext i8 %17 to i32
  %19 = load i64, i64* %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load double, double* %12, align 8
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %14, double noundef %16, i32 noundef %18, i64 noundef %19, i32 noundef %20, double noundef %21)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @testfunc(i16 noundef signext 12, float noundef 0x3FF3EB8520000000, i8 noundef signext 120, i64 noundef 123456677890, i32 noundef -10, double noundef 4.500000e+15)
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
