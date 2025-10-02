; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2005-07-17-INT-To-FP.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2005-07-17-INT-To-FP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tests = dso_local global [11 x i32] [i32 -2147483648, i32 -123456792, i32 -10, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 10, i32 123456792, i32 2147483520], align 16
@.str = private unnamed_addr constant [19 x i8] c"%d %f, %f, %f, %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %41, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 64
  br i1 %5, label %6, label %44

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = shl i32 %8, 2
  %10 = trunc i32 %9 to i8
  %11 = sitofp i8 %10 to double
  %12 = load i32, i32* %2, align 4
  %13 = shl i32 %12, 10
  %14 = trunc i32 %13 to i16
  %15 = sitofp i16 %14 to double
  %16 = load i32, i32* %2, align 4
  %17 = shl i32 %16, 26
  %18 = sitofp i32 %17 to double
  %19 = load i32, i32* %2, align 4
  %20 = zext i32 %19 to i64
  %21 = shl i64 %20, 58
  %22 = sitofp i64 %21 to double
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %7, double noundef %11, double noundef %15, double noundef %18, double noundef %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = shl i32 %25, 2
  %27 = trunc i32 %26 to i8
  %28 = uitofp i8 %27 to double
  %29 = load i32, i32* %2, align 4
  %30 = shl i32 %29, 10
  %31 = trunc i32 %30 to i16
  %32 = uitofp i16 %31 to double
  %33 = load i32, i32* %2, align 4
  %34 = shl i32 %33, 26
  %35 = uitofp i32 %34 to double
  %36 = load i32, i32* %2, align 4
  %37 = zext i32 %36 to i64
  %38 = shl i64 %37, 58
  %39 = uitofp i64 %38 to double
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %24, double noundef %28, double noundef %32, double noundef %35, double noundef %39)
  br label %41

41:                                               ; preds = %6
  %42 = load i32, i32* %2, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %3, !llvm.loop !4

44:                                               ; preds = %3
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %74, %44
  %46 = load i32, i32* %2, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %47, 11
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = uitofp i32 %54 to double
  %56 = load i32, i32* %2, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sitofp i32 %59 to double
  %61 = load i32, i32* %2, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to float
  %66 = fpext float %65 to double
  %67 = load i32, i32* %2, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sitofp i32 %70 to float
  %72 = fpext float %71 to double
  %73 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %50, double noundef %55, double noundef %60, double noundef %66, double noundef %72)
  br label %74

74:                                               ; preds = %49
  %75 = load i32, i32* %2, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %2, align 4
  br label %45, !llvm.loop !6

77:                                               ; preds = %45
  ret i32 0
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
!6 = distinct !{!6, !5}
