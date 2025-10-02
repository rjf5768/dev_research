; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/NPB-serial/dc/c_print_results.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/NPB-serial/dc/c_print_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c" Size            =             %12ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c" Please send all errors/feedbacks to:\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c" NPB Development Team\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c" npb@nas.nasa.gov\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_print_results(i8* noundef %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8* noundef %6, i32 noundef %7, i8* noundef %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i8 %1, i8* %11, align 1
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef %20)
  %22 = load i8, i8* %11, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 noundef %23)
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %9
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %19, align 8
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %19, align 8
  %36 = mul nsw i64 %35, %34
  store i64 %36, i64* %19, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i64, i64* %19, align 8
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 noundef %38)
  br label %45

40:                                               ; preds = %9
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 noundef %41, i32 noundef %42, i32 noundef %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %15, align 4
  %47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 noundef %46)
  %48 = load i8*, i8** %16, align 8
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* noundef %48)
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %62

54:                                               ; preds = %45
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %61

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i8*, i8** %18, align 8
  %64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* noundef %63)
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
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
