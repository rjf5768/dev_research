; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/clock.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeb = type { i64, i16, i16, i16 }

@clock_Akku = dso_local global [6 x float] zeroinitializer, align 16
@clock_Counters = dso_local global [6 x %struct.timeb] zeroinitializer, align 16
@.str = private unnamed_addr constant [14 x i8] c"%u:%02u:%2.2f\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%u:%02u:0%2.2f\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @clock_Init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %7, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 6
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  call void @clock_InitCounter(i32 noundef %6)
  br label %7

7:                                                ; preds = %5
  %8 = load i32, i32* %1, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  br label %2, !llvm.loop !4

10:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clock_InitCounter(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [6 x float], [6 x float]* @clock_Akku, i64 0, i64 %4
  store float 0.000000e+00, float* %5, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clock_StartCounter(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [6 x %struct.timeb], [6 x %struct.timeb]* @clock_Counters, i64 0, i64 %4
  %6 = call i32 @ftime(%struct.timeb* noundef %5)
  ret void
}

declare dso_local i32 @ftime(%struct.timeb* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @clock_StopPassedTime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeb, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @ftime(%struct.timeb* noundef %3)
  %5 = load i32, i32* %2, align 4
  %6 = call float @clock_GetSeconds(i32 noundef %5)
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [6 x float], [6 x float]* @clock_Akku, i64 0, i64 %8
  store float %6, float* %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @clock_GetSeconds(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeb, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @ftime(%struct.timeb* noundef %3)
  %5 = getelementptr inbounds %struct.timeb, %struct.timeb* %3, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [6 x %struct.timeb], [6 x %struct.timeb]* @clock_Counters, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.timeb, %struct.timeb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 16
  %12 = sub nsw i64 %6, %11
  %13 = sitofp i64 %12 to float
  %14 = getelementptr inbounds %struct.timeb, %struct.timeb* %3, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = load i32, i32* %2, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [6 x %struct.timeb], [6 x %struct.timeb]* @clock_Counters, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.timeb, %struct.timeb* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = sub nsw i32 %16, %22
  %24 = sitofp i32 %23 to float
  %25 = fdiv float %24, 1.000000e+03
  %26 = fadd float %13, %25
  ret float %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clock_StopAddPassedTime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeb, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @ftime(%struct.timeb* noundef %3)
  %5 = load i32, i32* %2, align 4
  %6 = call float @clock_GetSeconds(i32 noundef %5)
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [6 x float], [6 x float]* @clock_Akku, i64 0, i64 %8
  %10 = load float, float* %9, align 4
  %11 = fadd float %10, %6
  store float %11, float* %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clock_PrintTime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [6 x float], [6 x float]* @clock_Akku, i64 0, i64 %7
  %9 = load float, float* %8, align 4
  store float %9, float* %5, align 4
  %10 = load float, float* %5, align 4
  %11 = fptoui float %10 to i32
  %12 = udiv i32 %11, 3600
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = mul i32 %13, 3600
  %15 = uitofp i32 %14 to float
  %16 = load float, float* %5, align 4
  %17 = fsub float %16, %15
  store float %17, float* %5, align 4
  %18 = load float, float* %5, align 4
  %19 = fptoui float %18 to i32
  %20 = udiv i32 %19, 60
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul i32 %21, 60
  %23 = uitofp i32 %22 to float
  %24 = load float, float* %5, align 4
  %25 = fsub float %24, %23
  store float %25, float* %5, align 4
  %26 = load float, float* %5, align 4
  %27 = fpext float %26 to double
  %28 = fcmp oge double %27, 1.000000e+01
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load float, float* %5, align 4
  %33 = fpext float %32 to double
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %30, i32 noundef %31, double noundef %33)
  br label %41

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load float, float* %5, align 4
  %39 = fpext float %38 to double
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef %36, i32 noundef %37, double noundef %39)
  br label %41

41:                                               ; preds = %35, %29
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
