; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-08-05-CastFPToUint.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-08-05-CastFPToUint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"DC = %lf, DS = %lf, DI = %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"uc = %u, us = %u, ui = %u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call double @getDC()
  store double %12, double* %6, align 8
  %13 = call double @getDS()
  store double %13, double* %7, align 8
  %14 = call double @getDI()
  store double %14, double* %8, align 8
  %15 = load double, double* %6, align 8
  %16 = fptoui double %15 to i8
  store i8 %16, i8* %9, align 1
  %17 = load double, double* %7, align 8
  %18 = fptoui double %17 to i16
  store i16 %18, i16* %10, align 2
  %19 = load double, double* %8, align 8
  %20 = fptoui double %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load double, double* %6, align 8
  %22 = load double, double* %7, align 8
  %23 = load double, double* %8, align 8
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), double noundef %21, double noundef %22, double noundef %23)
  %25 = load i8, i8* %9, align 1
  %26 = zext i8 %25 to i32
  %27 = load i16, i16* %10, align 2
  %28 = zext i16 %27 to i32
  %29 = load i32, i32* %11, align 4
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef %26, i32 noundef %28, i32 noundef %29)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal double @getDC() #0 {
  ret double 2.400000e+02
}

; Function Attrs: noinline nounwind uwtable
define internal double @getDS() #0 {
  ret double 6.552000e+04
}

; Function Attrs: noinline nounwind uwtable
define internal double @getDI() #0 {
  ret double 0x41EFFFFFFE000000
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
