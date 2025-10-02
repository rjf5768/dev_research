; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/bigstack.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/bigstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Mixed_struct = type { i32, [10 x double], [10 x [10 x double]], [10 x %struct.Flat_struct] }
%struct.Flat_struct = type { i8, float }

@.str = private unnamed_addr constant [16 x i8] c"Sum(M)  = %.2f\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Sum(MA[%d]) = %.2f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @AddMixed(%struct.Mixed_struct* noundef %0) #0 {
  %2 = alloca %struct.Mixed_struct*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.Mixed_struct* %0, %struct.Mixed_struct** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.Mixed_struct*, %struct.Mixed_struct** %2, align 8
  %11 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x double], [10 x double]* %11, i64 0, i64 %13
  %15 = load double, double* %14, align 8
  %16 = load double, double* %3, align 8
  %17 = fadd double %16, %15
  store double %17, double* %3, align 8
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %6, !llvm.loop !4

21:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 10
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load %struct.Mixed_struct*, %struct.Mixed_struct** %2, align 8
  %31 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %30, i32 0, i32 2
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [10 x [10 x double]], [10 x [10 x double]]* %31, i64 0, i64 %33
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [10 x double], [10 x double]* %34, i64 0, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double, double* %3, align 8
  %40 = fadd double %39, %38
  store double %40, double* %3, align 8
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %26, !llvm.loop !6

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %22, !llvm.loop !7

48:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 10
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load %struct.Mixed_struct*, %struct.Mixed_struct** %2, align 8
  %54 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %53, i32 0, i32 3
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x %struct.Flat_struct], [10 x %struct.Flat_struct]* %54, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.Flat_struct, %struct.Flat_struct* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = sitofp i8 %59 to double
  %61 = load double, double* %3, align 8
  %62 = fadd double %61, %60
  store double %62, double* %3, align 8
  %63 = load %struct.Mixed_struct*, %struct.Mixed_struct** %2, align 8
  %64 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %63, i32 0, i32 3
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [10 x %struct.Flat_struct], [10 x %struct.Flat_struct]* %64, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.Flat_struct, %struct.Flat_struct* %67, i32 0, i32 1
  %69 = load float, float* %68, align 4
  %70 = fpext float %69 to double
  %71 = load double, double* %3, align 8
  %72 = fadd double %71, %70
  store double %72, double* %3, align 8
  br label %73

73:                                               ; preds = %52
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %49, !llvm.loop !8

76:                                               ; preds = %49
  %77 = load double, double* %3, align 8
  ret double %77
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitializeMixed(%struct.Mixed_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.Mixed_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Mixed_struct* %0, %struct.Mixed_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %11, %12
  %14 = sitofp i32 %13 to double
  %15 = load %struct.Mixed_struct*, %struct.Mixed_struct** %3, align 8
  %16 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %15, i32 0, i32 1
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [10 x double], [10 x double]* %16, i64 0, i64 %18
  store double %14, double* %19, align 8
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %7, !llvm.loop !9

23:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %51, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %27, label %54

27:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %32, 10
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %35, %36
  %38 = sitofp i32 %37 to double
  %39 = load %struct.Mixed_struct*, %struct.Mixed_struct** %3, align 8
  %40 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %39, i32 0, i32 2
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x [10 x double]], [10 x [10 x double]]* %40, i64 0, i64 %42
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [10 x double], [10 x double]* %43, i64 0, i64 %45
  store double %38, double* %46, align 8
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %28, !llvm.loop !10

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %24, !llvm.loop !11

54:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %76, %54
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 10
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load %struct.Mixed_struct*, %struct.Mixed_struct** %3, align 8
  %60 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %59, i32 0, i32 3
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [10 x %struct.Flat_struct], [10 x %struct.Flat_struct]* %60, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.Flat_struct, %struct.Flat_struct* %63, i32 0, i32 0
  store i8 81, i8* %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sdiv i32 %65, 10
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %66, %67
  %69 = sitofp i32 %68 to float
  %70 = load %struct.Mixed_struct*, %struct.Mixed_struct** %3, align 8
  %71 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %70, i32 0, i32 3
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x %struct.Flat_struct], [10 x %struct.Flat_struct]* %71, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.Flat_struct, %struct.Flat_struct* %74, i32 0, i32 1
  store float %69, float* %75, align 4
  br label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %55, !llvm.loop !12

79:                                               ; preds = %55
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.Mixed_struct, align 8
  %7 = alloca [4 x %struct.Mixed_struct], align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @InitializeMixed(%struct.Mixed_struct* noundef %6, i32 noundef 100)
  %9 = call double @AddMixed(%struct.Mixed_struct* noundef %6)
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double noundef %9)
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x %struct.Mixed_struct], [4 x %struct.Mixed_struct]* %7, i64 0, i64 %16
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 2
  %20 = mul nsw i32 100, %19
  call void @InitializeMixed(%struct.Mixed_struct* noundef %17, i32 noundef %20)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x %struct.Mixed_struct], [4 x %struct.Mixed_struct]* %7, i64 0, i64 %23
  %25 = call double @AddMixed(%struct.Mixed_struct* noundef %24)
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef %21, double noundef %25)
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %11, !llvm.loop !13

30:                                               ; preds = %11
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
