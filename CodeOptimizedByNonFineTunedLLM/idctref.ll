; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/idctref.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/idctref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = internal global [8 x [8 x double]] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize_Reference_IDCT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %39, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %42

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call double @sqrt(double noundef 1.250000e-01) #3
  br label %13

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi double [ %11, %10 ], [ 5.000000e-01, %12 ]
  store double %14, double* %3, align 8
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %35, %13
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load double, double* %3, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sitofp i32 %20 to double
  %22 = fmul double 0x3FD921FB54442D18, %21
  %23 = load i32, i32* %2, align 4
  %24 = sitofp i32 %23 to double
  %25 = fadd double %24, 5.000000e-01
  %26 = fmul double %22, %25
  %27 = call double @cos(double noundef %26) #3
  %28 = fmul double %19, %27
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i64 0, i64 %30
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x double], [8 x double]* %31, i64 0, i64 %33
  store double %28, double* %34, align 8
  br label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %15, !llvm.loop !4

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %4, !llvm.loop !6

42:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Reference_IDCT(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca [64 x double], align 16
  store i16* %0, i16** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %55, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %58

12:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %51, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %54

16:                                               ; preds = %13
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %40, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i64 0, i64 %22
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x double], [8 x double]* %23, i64 0, i64 %25
  %27 = load double, double* %26, align 8
  %28 = load i16*, i16** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 8, %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %28, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  %37 = sitofp i32 %36 to double
  %38 = load double, double* %7, align 8
  %39 = call double @llvm.fmuladd.f64(double %27, double %37, double %38)
  store double %39, double* %7, align 8
  br label %40

40:                                               ; preds = %20
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %17, !llvm.loop !7

43:                                               ; preds = %17
  %44 = load double, double* %7, align 8
  %45 = load i32, i32* %3, align 4
  %46 = mul nsw i32 8, %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [64 x double], [64 x double]* %8, i64 0, i64 %49
  store double %44, double* %50, align 8
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %13, !llvm.loop !8

54:                                               ; preds = %13
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %9, !llvm.loop !9

58:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %120, %58
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %123

62:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %116, %62
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %119

66:                                               ; preds = %63
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %87, %66
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %90

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @c, i64 0, i64 %72
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x double], [8 x double]* %73, i64 0, i64 %75
  %77 = load double, double* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = mul nsw i32 8, %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [64 x double], [64 x double]* %8, i64 0, i64 %82
  %84 = load double, double* %83, align 8
  %85 = load double, double* %7, align 8
  %86 = call double @llvm.fmuladd.f64(double %77, double %84, double %85)
  store double %86, double* %7, align 8
  br label %87

87:                                               ; preds = %70
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %67, !llvm.loop !10

90:                                               ; preds = %67
  %91 = load double, double* %7, align 8
  %92 = fadd double %91, 5.000000e-01
  %93 = call double @llvm.floor.f64(double %92)
  %94 = fptosi double %93 to i32
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, -256
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %106

98:                                               ; preds = %90
  %99 = load i32, i32* %6, align 4
  %100 = icmp sgt i32 %99, 255
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = phi i32 [ 255, %101 ], [ %103, %102 ]
  br label %106

106:                                              ; preds = %104, %97
  %107 = phi i32 [ -256, %97 ], [ %105, %104 ]
  %108 = trunc i32 %107 to i16
  %109 = load i16*, i16** %2, align 8
  %110 = load i32, i32* %3, align 4
  %111 = mul nsw i32 8, %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %109, i64 %114
  store i16 %108, i16* %115, align 2
  br label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %63, !llvm.loop !11

119:                                              ; preds = %63
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %59, !llvm.loop !12

123:                                              ; preds = %59
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
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
!12 = distinct !{!12, !5}
