; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/SPEdriver.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/SPEdriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local double @SPEdriver(double* noundef %0, double* noundef %1, double* noundef %2, double* noundef %3, double* noundef %4, double* noundef %5, double* noundef %6, double* noundef %7) #0 {
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca %struct.timeval, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store double* %0, double** %9, align 8
  store double* %1, double** %10, align 8
  store double* %2, double** %11, align 8
  store double* %3, double** %12, align 8
  store double* %4, double** %13, align 8
  store double* %5, double** %14, align 8
  store double* %6, double** %15, align 8
  store double* %7, double** %16, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store double 0.000000e+00, double* %21, align 8
  store i32 2000000, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %27 = call i32 @gettimeofday(%struct.timeval* noundef %17, i8* noundef null) #3
  %28 = call i64 @clock() #3
  store i64 %28, i64* %19, align 8
  store i32 0, i32* %24, align 4
  br label %29

29:                                               ; preds = %41, %8
  %30 = load i32, i32* %24, align 4
  %31 = icmp slt i32 %30, 2000000
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load double*, double** %9, align 8
  %34 = load double*, double** %10, align 8
  %35 = load double*, double** %11, align 8
  %36 = load double*, double** %12, align 8
  %37 = load double*, double** %13, align 8
  %38 = load double*, double** %14, align 8
  %39 = load double*, double** %15, align 8
  %40 = load double*, double** %16, align 8
  call void @Crystal_div(i32 noundef 12, double noundef 1.000000e-02, double* noundef %33, double* noundef %34, double* noundef %35, double* noundef %36, double* noundef %37, double* noundef %38, double* noundef %39, double* noundef %40)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %24, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %24, align 4
  br label %29, !llvm.loop !4

44:                                               ; preds = %29
  store i32 0, i32* %24, align 4
  br label %45

45:                                               ; preds = %51, %44
  %46 = load i32, i32* %24, align 4
  %47 = icmp slt i32 %46, 2000000
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load double*, double** %9, align 8
  %50 = call double @Crystal_pow(i32 noundef 12, double* noundef %49)
  store double %50, double* %22, align 8
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %24, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %24, align 4
  br label %45, !llvm.loop !6

54:                                               ; preds = %45
  store i32 0, i32* %24, align 4
  br label %55

55:                                               ; preds = %84, %54
  %56 = load i32, i32* %24, align 4
  %57 = icmp slt i32 %56, 12
  br i1 %57, label %58, label %87

58:                                               ; preds = %55
  store i32 0, i32* %25, align 4
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i32, i32* %25, align 4
  %61 = icmp slt i32 %60, 12
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  %63 = load double*, double** %14, align 8
  %64 = load i32, i32* %24, align 4
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, 12
  %67 = getelementptr inbounds double, double* %63, i64 %66
  %68 = load i32, i32* %25, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  %71 = load double, double* %70, align 8
  %72 = load double*, double** %16, align 8
  %73 = load i32, i32* %24, align 4
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, 12
  %76 = getelementptr inbounds double, double* %72, i64 %75
  %77 = load i32, i32* %25, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  store double %71, double* %79, align 8
  br label %80

80:                                               ; preds = %62
  %81 = load i32, i32* %25, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %25, align 4
  br label %59, !llvm.loop !7

83:                                               ; preds = %59
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %24, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %24, align 4
  br label %55, !llvm.loop !8

87:                                               ; preds = %55
  store i32 0, i32* %24, align 4
  br label %88

88:                                               ; preds = %128, %87
  %89 = load i32, i32* %24, align 4
  %90 = icmp slt i32 %89, 2000000
  br i1 %90, label %91, label %131

91:                                               ; preds = %88
  store i32 0, i32* %25, align 4
  br label %92

92:                                               ; preds = %121, %91
  %93 = load i32, i32* %25, align 4
  %94 = icmp slt i32 %93, 12
  br i1 %94, label %95, label %124

95:                                               ; preds = %92
  store i32 0, i32* %26, align 4
  br label %96

96:                                               ; preds = %117, %95
  %97 = load i32, i32* %26, align 4
  %98 = icmp slt i32 %97, 12
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = load double*, double** %16, align 8
  %101 = load i32, i32* %25, align 4
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %102, 12
  %104 = getelementptr inbounds double, double* %100, i64 %103
  %105 = load i32, i32* %26, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %104, i64 %106
  %108 = load double, double* %107, align 8
  %109 = load double*, double** %14, align 8
  %110 = load i32, i32* %25, align 4
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, 12
  %113 = getelementptr inbounds double, double* %109, i64 %112
  %114 = load i32, i32* %26, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  store double %108, double* %116, align 8
  br label %117

117:                                              ; preds = %99
  %118 = load i32, i32* %26, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %26, align 4
  br label %96, !llvm.loop !9

120:                                              ; preds = %96
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %25, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %25, align 4
  br label %92, !llvm.loop !10

124:                                              ; preds = %92
  %125 = load double*, double** %14, align 8
  %126 = load double*, double** %11, align 8
  %127 = load double*, double** %13, align 8
  call void @Crystal_Cholesky(i32 noundef 12, double* noundef %125, double* noundef %126, double* noundef %127)
  br label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %24, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %24, align 4
  br label %88, !llvm.loop !11

131:                                              ; preds = %88
  %132 = load double, double* %22, align 8
  ret double %132
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

declare dso_local void @Crystal_div(i32 noundef, double noundef, double* noundef, double* noundef, double* noundef, double* noundef, double* noundef, double* noundef, double* noundef, double* noundef) #2

declare dso_local double @Crystal_pow(i32 noundef, double* noundef) #2

declare dso_local void @Crystal_Cholesky(i32 noundef, double* noundef, double* noundef, double* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
