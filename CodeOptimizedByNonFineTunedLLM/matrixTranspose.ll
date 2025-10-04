; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/matrixTranspose.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/matrixTranspose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = dso_local global [2048 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [23 x i8] c"Checksum before = %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Checksum  after = %lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @complex_transpose(float* noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %17

17:                                               ; preds = %119, %5
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %122

21:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %115, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %118

26:                                               ; preds = %22
  %27 = load float*, float** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %30, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %27, i64 %35
  %37 = load float, float* %36, align 4
  store float %37, float* %13, align 4
  %38 = load float*, float** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %42, %43
  %45 = add nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %38, i64 %46
  %48 = load float, float* %47, align 4
  store float %48, float* %14, align 4
  %49 = load float*, float** %6, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %49, i64 %57
  %59 = load float, float* %58, align 4
  store float %59, float* %15, align 4
  %60 = load float*, float** %7, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %60, i64 %68
  %70 = load float, float* %69, align 4
  store float %70, float* %16, align 4
  %71 = load float, float* %13, align 4
  %72 = load float*, float** %6, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %75, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %72, i64 %80
  store float %71, float* %81, align 4
  %82 = load float, float* %14, align 4
  %83 = load float*, float** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %86, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %83, i64 %91
  store float %82, float* %92, align 4
  %93 = load float, float* %15, align 4
  %94 = load float*, float** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %10, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %94, i64 %102
  store float %93, float* %103, align 4
  %104 = load float, float* %16, align 4
  %105 = load float*, float** %7, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %10, align 4
  %111 = mul nsw i32 %109, %110
  %112 = add nsw i32 %108, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %105, i64 %113
  store float %104, float* %114, align 4
  br label %115

115:                                              ; preds = %26
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %22, !llvm.loop !4

118:                                              ; preds = %22
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %17, !llvm.loop !6

122:                                              ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 2048
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = sitofp i32 %12 to float
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2048 x float], [2048 x float]* @A, i64 0, i64 %15
  store float %13, float* %16, align 4
  %17 = load float, float* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2048 x float], [2048 x float]* @A, i64 0, i64 %19
  %21 = load float, float* %20, align 4
  %22 = fadd float %17, %21
  store float %22, float* %7, align 4
  br label %23

23:                                               ; preds = %11
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %8, !llvm.loop !7

26:                                               ; preds = %8
  %27 = load float, float* %7, align 4
  %28 = fpext float %27 to double
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), double noundef %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %34, %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  call void @complex_transpose(float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @A, i64 0, i64 0), float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @A, i64 0, i64 1), i32 noundef 32, i32 noundef 2, i32 noundef 64)
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %30, !llvm.loop !8

37:                                               ; preds = %30
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 2048
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load float, float* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2048 x float], [2048 x float]* @A, i64 0, i64 %44
  %46 = load float, float* %45, align 4
  %47 = fadd float %42, %46
  store float %47, float* %7, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %38, !llvm.loop !9

51:                                               ; preds = %38
  %52 = load float, float* %7, align 4
  %53 = fpext float %52 to double
  %54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), double noundef %53)
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
