; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2002-05-02-ManyArguments.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2002-05-02-ManyArguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"%d, %d, %f, %f, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%d, %ld, %ld, %d, %lld\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printfn(i32 noundef %0, i16 noundef signext %1, double noundef %2, float noundef %3, i8 noundef signext %4, i8 noundef signext %5, i8* noundef %6, double* noundef %7, i32 noundef %8, i64 noundef %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca double, align 8
  %14 = alloca float, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32 %0, i32* %11, align 4
  store i16 %1, i16* %12, align 2
  store double %2, double* %13, align 8
  store float %3, float* %14, align 4
  store i8 %4, i8* %15, align 1
  store i8 %5, i8* %16, align 1
  store i8* %6, i8** %17, align 8
  store double* %7, double** %18, align 8
  store i32 %8, i32* %19, align 4
  store i64 %9, i64* %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i16, i16* %12, align 2
  %23 = sext i16 %22 to i32
  %24 = load double, double* %13, align 8
  %25 = load float, float* %14, align 4
  %26 = fpext float %25 to double
  %27 = load i8, i8* %15, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %21, i32 noundef %23, double noundef %24, double noundef %26, i32 noundef %28)
  %30 = load i8, i8* %16, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8*, i8** %17, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load double*, double** %18, align 8
  %35 = ptrtoint double* %34 to i64
  %36 = load i32, i32* %19, align 4
  %37 = load i64, i64* %20, align 8
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef %31, i64 noundef %33, i64 noundef %35, i32 noundef %36, i64 noundef %37)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @printfn(i32 noundef 12, i16 noundef signext 2, double noundef 1.232340e+02, float noundef 0x40933C7E20000000, i8 noundef signext -12, i8 noundef signext 23, i8* noundef inttoptr (i64 123456 to i8*), double* noundef null, i32 noundef 1234567, i64 noundef 123124124124)
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
