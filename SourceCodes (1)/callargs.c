; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/callargs.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/callargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"\0AprintArgsNoRet with 15 arguments:\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\09Args 1-5  : %d %f %c %f %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\09Args 6-10 : %d %f %c %f %c\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\09Args 11-14: %d %f %c %f %c\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"o\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printArgsNoRet(i32 noundef %0, float noundef %1, i8 noundef signext %2, double noundef %3, i8* noundef %4, i32 noundef %5, float noundef %6, i8 noundef signext %7, double noundef %8, i8* noundef %9, i32 noundef %10, float noundef %11, i8 noundef signext %12, double noundef %13, i8* noundef %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i8, align 1
  %19 = alloca double, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca i8, align 1
  %24 = alloca double, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca i8, align 1
  %29 = alloca double, align 8
  %30 = alloca i8*, align 8
  store i32 %0, i32* %16, align 4
  store float %1, float* %17, align 4
  store i8 %2, i8* %18, align 1
  store double %3, double* %19, align 8
  store i8* %4, i8** %20, align 8
  store i32 %5, i32* %21, align 4
  store float %6, float* %22, align 4
  store i8 %7, i8* %23, align 1
  store double %8, double* %24, align 8
  store i8* %9, i8** %25, align 8
  store i32 %10, i32* %26, align 4
  store float %11, float* %27, align 4
  store i8 %12, i8* %28, align 1
  store double %13, double* %29, align 8
  store i8* %14, i8** %30, align 8
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %16, align 4
  %33 = load float, float* %17, align 4
  %34 = fpext float %33 to double
  %35 = load i8, i8* %18, align 1
  %36 = sext i8 %35 to i32
  %37 = load double, double* %19, align 8
  %38 = load i8*, i8** %20, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef %32, double noundef %34, i32 noundef %36, double noundef %37, i32 noundef %40)
  %42 = load i32, i32* %21, align 4
  %43 = load float, float* %22, align 4
  %44 = fpext float %43 to double
  %45 = load i8, i8* %23, align 1
  %46 = sext i8 %45 to i32
  %47 = load double, double* %24, align 8
  %48 = load i8*, i8** %25, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef %42, double noundef %44, i32 noundef %46, double noundef %47, i32 noundef %50)
  %52 = load i32, i32* %26, align 4
  %53 = load float, float* %27, align 4
  %54 = fpext float %53 to double
  %55 = load i8, i8* %28, align 1
  %56 = sext i8 %55 to i32
  %57 = load double, double* %29, align 8
  %58 = load i8*, i8** %30, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef %52, double noundef %54, i32 noundef %56, double noundef %57, i32 noundef %60)
  %62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @printArgsNoRet(i32 noundef 1, float noundef 0x4000CCCCC0000000, i8 noundef signext 99, double noundef 4.100000e+00, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 noundef 6, float noundef 0x401C666660000000, i8 noundef signext 104, double noundef 9.100000e+00, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef 11, float noundef 0x4028333340000000, i8 noundef signext 109, double noundef 1.410000e+01, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
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
